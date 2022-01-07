
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct twl4030_bci {int dev; } ;


 int TWL4030_BCIMSTATEC ;
 int dev_dbg (int ,char*,int) ;
 int dev_err (int ,char*) ;
 int twl4030_bci_read (int ,int*) ;

__attribute__((used)) static int twl4030bci_state(struct twl4030_bci *bci)
{
 int ret;
 u8 state;

 ret = twl4030_bci_read(TWL4030_BCIMSTATEC, &state);
 if (ret) {
  dev_err(bci->dev, "error reading BCIMSTATEC\n");
  return ret;
 }

 dev_dbg(bci->dev, "state: %02x\n", state);

 return state;
}
