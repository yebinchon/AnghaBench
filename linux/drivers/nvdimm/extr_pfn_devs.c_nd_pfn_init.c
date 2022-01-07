
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef unsigned long u64 ;
typedef scalar_t__ u32 ;
struct page {int dummy; } ;
struct nd_region {int dev; scalar_t__ ro; } ;
struct nd_pfn_sb {void* checksum; void* page_size; void* page_struct_size; void* align; void* end_trunc; void* version_minor; void* version_major; int parent_uuid; int uuid; int signature; void* npfns; void* dataoff; void* mode; } ;
struct TYPE_7__ {int parent; } ;
struct nd_pfn {scalar_t__ align; scalar_t__ mode; char const* uuid; TYPE_2__ dev; struct nd_pfn_sb* pfn_sb; struct nd_namespace_common* ndns; } ;
struct TYPE_6__ {scalar_t__ start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int dev; } ;
struct nd_gen_sb {int dummy; } ;
typedef scalar_t__ resource_size_t ;
typedef scalar_t__ phys_addr_t ;


 scalar_t__ ALIGN (scalar_t__,unsigned long) ;
 scalar_t__ ALIGN_DOWN (scalar_t__,unsigned long) ;
 int BUILD_BUG_ON (int) ;
 char* DAX_SIG ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int GFP_KERNEL ;
 int MAX_STRUCT_PAGE_SIZE ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ PFN_MODE_PMEM ;
 scalar_t__ PFN_MODE_RAM ;
 char* PFN_SIG ;
 int PFN_SIG_LEN ;
 unsigned long PHYS_PFN (scalar_t__) ;
 unsigned long SUBSECTION_SHIFT ;
 int SZ_4K ;
 scalar_t__ SZ_8K ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (scalar_t__) ;
 void* cpu_to_le64 (unsigned long) ;
 int dev_err (TYPE_2__*,char*,int ) ;
 int dev_info (TYPE_2__*,char*,int ) ;
 int dev_name (int *) ;
 struct nd_pfn_sb* devm_kmalloc (TYPE_2__*,int,int ) ;
 scalar_t__ is_nd_dax (TYPE_2__*) ;
 unsigned long max (scalar_t__,unsigned long) ;
 int memcpy (int ,char const*,int) ;
 int memset (struct nd_pfn_sb*,int ,int) ;
 char const* nd_dev_to_uuid (int *) ;
 int nd_pfn_validate (struct nd_pfn*,char const*) ;
 unsigned long nd_sb_checksum (struct nd_gen_sb*) ;
 int nvdimm_write_bytes (struct nd_namespace_common*,int ,struct nd_pfn_sb*,int,int ) ;
 scalar_t__ resource_size (TYPE_1__*) ;
 struct nd_namespace_io* to_nd_namespace_io (int *) ;
 struct nd_region* to_nd_region (int ) ;

__attribute__((used)) static int nd_pfn_init(struct nd_pfn *nd_pfn)
{
 struct nd_namespace_common *ndns = nd_pfn->ndns;
 struct nd_namespace_io *nsio = to_nd_namespace_io(&ndns->dev);
 resource_size_t start, size;
 struct nd_region *nd_region;
 unsigned long npfns, align;
 u32 end_trunc;
 struct nd_pfn_sb *pfn_sb;
 phys_addr_t offset;
 const char *sig;
 u64 checksum;
 int rc;

 pfn_sb = devm_kmalloc(&nd_pfn->dev, sizeof(*pfn_sb), GFP_KERNEL);
 if (!pfn_sb)
  return -ENOMEM;

 nd_pfn->pfn_sb = pfn_sb;
 if (is_nd_dax(&nd_pfn->dev))
  sig = DAX_SIG;
 else
  sig = PFN_SIG;

 rc = nd_pfn_validate(nd_pfn, sig);
 if (rc != -ENODEV)
  return rc;

                             ;
 memset(pfn_sb, 0, sizeof(*pfn_sb));

 nd_region = to_nd_region(nd_pfn->dev.parent);
 if (nd_region->ro) {
  dev_info(&nd_pfn->dev,
    "%s is read-only, unable to init metadata\n",
    dev_name(&nd_region->dev));
  return -ENXIO;
 }







 start = nsio->res.start;
 size = resource_size(&nsio->res);
 npfns = PHYS_PFN(size - SZ_8K);
 align = max(nd_pfn->align, (1UL << SUBSECTION_SHIFT));
 end_trunc = start + size - ALIGN_DOWN(start + size, align);
 if (nd_pfn->mode == PFN_MODE_PMEM) {
  BUILD_BUG_ON(sizeof(struct page) > MAX_STRUCT_PAGE_SIZE);
  offset = ALIGN(start + SZ_8K + MAX_STRUCT_PAGE_SIZE * npfns, align)
   - start;
 } else if (nd_pfn->mode == PFN_MODE_RAM)
  offset = ALIGN(start + SZ_8K, align) - start;
 else
  return -ENXIO;

 if (offset >= size) {
  dev_err(&nd_pfn->dev, "%s unable to satisfy requested alignment\n",
    dev_name(&ndns->dev));
  return -ENXIO;
 }

 npfns = PHYS_PFN(size - offset - end_trunc);
 pfn_sb->mode = cpu_to_le32(nd_pfn->mode);
 pfn_sb->dataoff = cpu_to_le64(offset);
 pfn_sb->npfns = cpu_to_le64(npfns);
 memcpy(pfn_sb->signature, sig, PFN_SIG_LEN);
 memcpy(pfn_sb->uuid, nd_pfn->uuid, 16);
 memcpy(pfn_sb->parent_uuid, nd_dev_to_uuid(&ndns->dev), 16);
 pfn_sb->version_major = cpu_to_le16(1);
 pfn_sb->version_minor = cpu_to_le16(4);
 pfn_sb->end_trunc = cpu_to_le32(end_trunc);
 pfn_sb->align = cpu_to_le32(nd_pfn->align);
 pfn_sb->page_struct_size = cpu_to_le16(MAX_STRUCT_PAGE_SIZE);
 pfn_sb->page_size = cpu_to_le32(PAGE_SIZE);
 checksum = nd_sb_checksum((struct nd_gen_sb *) pfn_sb);
 pfn_sb->checksum = cpu_to_le64(checksum);

 return nvdimm_write_bytes(ndns, SZ_4K, pfn_sb, sizeof(*pfn_sb), 0);
}
