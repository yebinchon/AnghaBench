
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct pci_dev {int dummy; } ;
struct isst_if_io_reg {int reg; int value; scalar_t__ read_write; int logical_cpu; } ;
struct isst_if_device {int mutex; scalar_t__ punit_mmio; } ;


 int CAP_SYS_ADMIN ;
 long EINVAL ;
 long EPERM ;
 int capable (int ) ;
 struct pci_dev* isst_if_get_pci_dev (int ,int ,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct isst_if_device* pci_get_drvdata (struct pci_dev*) ;
 int readl (scalar_t__) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static long isst_if_mmio_rd_wr(u8 *cmd_ptr, int *write_only, int resume)
{
 struct isst_if_device *punit_dev;
 struct isst_if_io_reg *io_reg;
 struct pci_dev *pdev;

 io_reg = (struct isst_if_io_reg *)cmd_ptr;
 if (io_reg->reg < 0x04 || io_reg->reg > 0xD0)
  return -EINVAL;

 if (io_reg->read_write && !capable(CAP_SYS_ADMIN))
  return -EPERM;

 pdev = isst_if_get_pci_dev(io_reg->logical_cpu, 0, 0, 1);
 if (!pdev)
  return -EINVAL;

 punit_dev = pci_get_drvdata(pdev);
 if (!punit_dev)
  return -EINVAL;





 mutex_lock(&punit_dev->mutex);
 if (io_reg->read_write) {
  writel(io_reg->value, punit_dev->punit_mmio+io_reg->reg);
  *write_only = 1;
 } else {
  io_reg->value = readl(punit_dev->punit_mmio+io_reg->reg);
  *write_only = 0;
 }
 mutex_unlock(&punit_dev->mutex);

 return 0;
}
