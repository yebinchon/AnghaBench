
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct slot {int dummy; } ;
struct controller {int dummy; } ;
typedef enum pci_bus_speed { ____Placeholder_pci_bus_speed } pci_bus_speed ;


 int WRONG_BUS_FREQUENCY ;
 int change_bus_speed (struct controller*,struct slot*,int) ;
 int ctrl_err (struct controller*,char*,int,int) ;

__attribute__((used)) static int fix_bus_speed(struct controller *ctrl, struct slot *pslot,
  u8 flag, enum pci_bus_speed asp, enum pci_bus_speed bsp,
  enum pci_bus_speed msp)
{
 int rc = 0;





 if (flag) {
  if (asp < bsp) {
   ctrl_err(ctrl, "Speed of bus %x and adapter %x mismatch\n",
     bsp, asp);
   rc = WRONG_BUS_FREQUENCY;
  }
  return rc;
 }

 if (asp < msp) {
  if (bsp != asp)
   rc = change_bus_speed(ctrl, pslot, asp);
 } else {
  if (bsp != msp)
   rc = change_bus_speed(ctrl, pslot, msp);
 }
 return rc;
}
