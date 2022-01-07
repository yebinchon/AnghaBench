
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct pci_dev {int dev; } ;


 int BT_MBI_UNIT_PMC ;
 int EBUSY ;
 int ISPSSPM0 ;
 int ISPSSPM0_ISPSSC_MASK ;
 int ISPSSPM0_ISPSSS_MASK ;
 int ISPSSPM0_ISPSSS_OFFSET ;
 int ISPSSPM0_IUNIT_POWER_OFF ;
 int ISPSSPM0_IUNIT_POWER_ON ;
 int MBI_REG_READ ;
 int dev_err (int *,char*,char*) ;
 int iosf_mbi_modify (int ,int ,int ,int,int ) ;
 int iosf_mbi_read (int ,int ,int ,int*) ;
 unsigned long jiffies ;
 unsigned long msecs_to_jiffies (int) ;
 scalar_t__ time_after (unsigned long,unsigned long) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int isp_set_power(struct pci_dev *dev, bool enable)
{
 unsigned long timeout;
 u32 val = enable ? ISPSSPM0_IUNIT_POWER_ON :
  ISPSSPM0_IUNIT_POWER_OFF;


 iosf_mbi_modify(BT_MBI_UNIT_PMC, MBI_REG_READ, ISPSSPM0,
   val, ISPSSPM0_ISPSSC_MASK);







 timeout = jiffies + msecs_to_jiffies(50);
 while (1) {
  u32 tmp;


  iosf_mbi_read(BT_MBI_UNIT_PMC, MBI_REG_READ, ISPSSPM0, &tmp);
  tmp = (tmp & ISPSSPM0_ISPSSS_MASK) >> ISPSSPM0_ISPSSS_OFFSET;
  if (tmp == val)
   break;

  if (time_after(jiffies, timeout)) {
   dev_err(&dev->dev, "IUNIT power-%s timeout.\n",
    enable ? "on" : "off");
   return -EBUSY;
  }
  usleep_range(1000, 2000);
 }

 return 0;
}
