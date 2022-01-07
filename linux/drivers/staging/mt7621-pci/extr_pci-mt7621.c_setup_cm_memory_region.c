
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int end; int start; } ;
struct mt7621_pcie {struct device* dev; struct resource mem; } ;
struct device {int dummy; } ;
typedef int resource_size_t ;


 int CM_GCR_REGn_MASK_CMTGT_IOCU0 ;
 int dev_info (struct device*,char*,unsigned long long,unsigned long long) ;
 scalar_t__ mips_cps_numiocu (int ) ;
 scalar_t__ read_gcr_reg1_base () ;
 scalar_t__ read_gcr_reg1_mask () ;
 int write_gcr_reg1_base (int) ;
 int write_gcr_reg1_mask (int) ;

__attribute__((used)) static void setup_cm_memory_region(struct mt7621_pcie *pcie)
{
 struct resource *mem_resource = &pcie->mem;
 struct device *dev = pcie->dev;
 resource_size_t mask;

 if (mips_cps_numiocu(0)) {





  mask = ~(mem_resource->end - mem_resource->start);

  write_gcr_reg1_base(mem_resource->start);
  write_gcr_reg1_mask(mask | CM_GCR_REGn_MASK_CMTGT_IOCU0);
  dev_info(dev, "PCI coherence region base: 0x%08llx, mask/settings: 0x%08llx\n",
   (unsigned long long)read_gcr_reg1_base(),
   (unsigned long long)read_gcr_reg1_mask());
 }
}
