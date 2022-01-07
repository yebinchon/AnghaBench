
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char u8 ;
typedef int u32 ;
struct pci_dev {int dev; } ;
struct pch_dev {TYPE_1__* regs; } ;
typedef int s32 ;
struct TYPE_2__ {int * ts_st; } ;


 int PCH_INVALIDPARAM ;
 int PCH_STATION_BYTES ;
 int dev_dbg (int *,char*) ;
 int dev_err (int *,char*) ;
 int hex_to_bin (char) ;
 int iowrite32 (int,int *) ;
 struct pch_dev* pci_get_drvdata (struct pci_dev*) ;

int pch_set_station_address(u8 *addr, struct pci_dev *pdev)
{
 s32 i;
 struct pch_dev *chip = pci_get_drvdata(pdev);


 if ((chip->regs == ((void*)0)) || addr == (u8 *)((void*)0)) {
  dev_err(&pdev->dev,
   "invalid params returning PCH_INVALIDPARAM\n");
  return PCH_INVALIDPARAM;
 }

 for (i = 0; i < PCH_STATION_BYTES; i++) {
  u32 val;
  s32 tmp;

  tmp = hex_to_bin(addr[i * 3]);
  if (tmp < 0) {
   dev_err(&pdev->dev,
    "invalid params returning PCH_INVALIDPARAM\n");
   return PCH_INVALIDPARAM;
  }
  val = tmp * 16;
  tmp = hex_to_bin(addr[(i * 3) + 1]);
  if (tmp < 0) {
   dev_err(&pdev->dev,
    "invalid params returning PCH_INVALIDPARAM\n");
   return PCH_INVALIDPARAM;
  }
  val += tmp;

  if ((i < 5) && (addr[(i * 3) + 2] != ':')) {
   dev_err(&pdev->dev,
    "invalid params returning PCH_INVALIDPARAM\n");
   return PCH_INVALIDPARAM;
  }



  dev_dbg(&pdev->dev, "invoking pch_station_set\n");
  iowrite32(val, &chip->regs->ts_st[i]);
 }
 return 0;
}
