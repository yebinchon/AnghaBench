
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef char u8 ;
typedef scalar_t__ u64 ;
struct page {int dummy; } ;
struct nd_pfn_sb {char const* uuid; scalar_t__ signature; int page_struct_size; int page_size; int mode; int start_pad; scalar_t__ dataoff; int align; int version_minor; scalar_t__ end_trunc; scalar_t__ parent_uuid; scalar_t__ checksum; } ;
struct TYPE_5__ {int parent; } ;
struct nd_pfn {scalar_t__ align; int mode; TYPE_2__ dev; scalar_t__ uuid; struct nd_namespace_common* ndns; struct nd_pfn_sb* pfn_sb; } ;
struct TYPE_4__ {scalar_t__ start; } ;
struct nd_namespace_io {TYPE_1__ res; } ;
struct nd_namespace_common {int dev; } ;
struct nd_gen_sb {int dummy; } ;
typedef enum nd_pfn_mode { ____Placeholder_nd_pfn_mode } nd_pfn_mode ;


 char const* DAX_SIG ;
 int EBUSY ;
 int EINVAL ;
 int ENODEV ;
 int ENOMEM ;
 int ENXIO ;
 int EOPNOTSUPP ;
 int GFP_KERNEL ;
 int IS_ALIGNED (scalar_t__,unsigned long) ;
 unsigned long PAGE_SIZE ;


 int PFN_SIG_LEN ;
 int SZ_4K ;
 int __le16_to_cpu (int ) ;
 int cpu_to_le16 (int) ;
 int cpu_to_le32 (unsigned long) ;
 scalar_t__ cpu_to_le64 (scalar_t__) ;
 int dev_dbg (TYPE_2__*,char*,unsigned long,unsigned long,int,int) ;
 int dev_err (TYPE_2__*,char*,...) ;
 int dev_name (int *) ;
 unsigned long ilog2 (scalar_t__) ;
 int is_memory (int ) ;
 scalar_t__ kmemdup (char const*,int,int ) ;
 int le16_to_cpu (int ) ;
 unsigned long le32_to_cpu (int ) ;
 scalar_t__ le64_to_cpu (scalar_t__) ;
 scalar_t__ memcmp (scalar_t__,char const*,int) ;
 char* nd_dev_to_uuid (int *) ;
 int nd_pfn_clear_memmap_errors (struct nd_pfn*) ;
 scalar_t__ nd_sb_checksum (struct nd_gen_sb*) ;
 int nd_supported_alignment (unsigned long) ;
 unsigned long nvdimm_namespace_capacity (struct nd_namespace_common*) ;
 scalar_t__ nvdimm_read_bytes (struct nd_namespace_common*,int ,struct nd_pfn_sb*,int,int ) ;
 scalar_t__ resource_size (TYPE_1__*) ;
 struct nd_namespace_io* to_nd_namespace_io (int *) ;

int nd_pfn_validate(struct nd_pfn *nd_pfn, const char *sig)
{
 u64 checksum, offset;
 enum nd_pfn_mode mode;
 struct nd_namespace_io *nsio;
 unsigned long align, start_pad;
 struct nd_pfn_sb *pfn_sb = nd_pfn->pfn_sb;
 struct nd_namespace_common *ndns = nd_pfn->ndns;
 const u8 *parent_uuid = nd_dev_to_uuid(&ndns->dev);

 if (!pfn_sb || !ndns)
  return -ENODEV;

 if (!is_memory(nd_pfn->dev.parent))
  return -ENODEV;

 if (nvdimm_read_bytes(ndns, SZ_4K, pfn_sb, sizeof(*pfn_sb), 0))
  return -ENXIO;

 if (memcmp(pfn_sb->signature, sig, PFN_SIG_LEN) != 0)
  return -ENODEV;

 checksum = le64_to_cpu(pfn_sb->checksum);
 pfn_sb->checksum = 0;
 if (checksum != nd_sb_checksum((struct nd_gen_sb *) pfn_sb))
  return -ENODEV;
 pfn_sb->checksum = cpu_to_le64(checksum);

 if (memcmp(pfn_sb->parent_uuid, parent_uuid, 16) != 0)
  return -ENODEV;

 if (__le16_to_cpu(pfn_sb->version_minor) < 1) {
  pfn_sb->start_pad = 0;
  pfn_sb->end_trunc = 0;
 }

 if (__le16_to_cpu(pfn_sb->version_minor) < 2)
  pfn_sb->align = 0;

 if (__le16_to_cpu(pfn_sb->version_minor) < 4) {
  pfn_sb->page_struct_size = cpu_to_le16(64);
  pfn_sb->page_size = cpu_to_le32(PAGE_SIZE);
 }

 switch (le32_to_cpu(pfn_sb->mode)) {
 case 128:
 case 129:
  break;
 default:
  return -ENXIO;
 }

 align = le32_to_cpu(pfn_sb->align);
 offset = le64_to_cpu(pfn_sb->dataoff);
 start_pad = le32_to_cpu(pfn_sb->start_pad);
 if (align == 0)
  align = 1UL << ilog2(offset);
 mode = le32_to_cpu(pfn_sb->mode);

 if ((le32_to_cpu(pfn_sb->page_size) > PAGE_SIZE) &&
   (mode == 129)) {
  dev_err(&nd_pfn->dev,
    "init failed, page size mismatch %d\n",
    le32_to_cpu(pfn_sb->page_size));
  return -EOPNOTSUPP;
 }

 if ((le16_to_cpu(pfn_sb->page_struct_size) < sizeof(struct page)) &&
   (mode == 129)) {
  dev_err(&nd_pfn->dev,
    "init failed, struct page size mismatch %d\n",
    le16_to_cpu(pfn_sb->page_struct_size));
  return -EOPNOTSUPP;
 }






 if (!nd_supported_alignment(align) &&
   !memcmp(pfn_sb->signature, DAX_SIG, PFN_SIG_LEN)) {
  dev_err(&nd_pfn->dev, "init failed, alignment mismatch: "
    "%ld:%ld\n", nd_pfn->align, align);
  return -EOPNOTSUPP;
 }

 if (!nd_pfn->uuid) {





  nd_pfn->uuid = kmemdup(pfn_sb->uuid, 16, GFP_KERNEL);
  if (!nd_pfn->uuid)
   return -ENOMEM;
  nd_pfn->align = align;
  nd_pfn->mode = mode;
 } else {




  if (memcmp(nd_pfn->uuid, pfn_sb->uuid, 16) != 0)
   return -ENODEV;







  if (nd_pfn->align != align || nd_pfn->mode != mode) {
   dev_err(&nd_pfn->dev,
     "init failed, settings mismatch\n");
   dev_dbg(&nd_pfn->dev, "align: %lx:%lx mode: %d:%d\n",
     nd_pfn->align, align, nd_pfn->mode,
     mode);
   return -EINVAL;
  }
 }

 if (align > nvdimm_namespace_capacity(ndns)) {
  dev_err(&nd_pfn->dev, "alignment: %lx exceeds capacity %llx\n",
    align, nvdimm_namespace_capacity(ndns));
  return -EINVAL;
 }







 nsio = to_nd_namespace_io(&ndns->dev);
 if (offset >= resource_size(&nsio->res)) {
  dev_err(&nd_pfn->dev, "pfn array size exceeds capacity of %s\n",
    dev_name(&ndns->dev));
  return -EBUSY;
 }

 if ((align && !IS_ALIGNED(nsio->res.start + offset + start_pad, align))
   || !IS_ALIGNED(offset, PAGE_SIZE)) {
  dev_err(&nd_pfn->dev,
    "bad offset: %#llx dax disabled align: %#lx\n",
    offset, align);
  return -ENXIO;
 }

 return nd_pfn_clear_memmap_errors(nd_pfn);
}
