
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slot {TYPE_1__* zdev; } ;
struct TYPE_2__ {int state; int fid; } ;


 int ZPCI_FN_STATE_STANDBY ;
 int sclp_pci_deconfigure (int ) ;
 int zpci_dbg (int,char*,int ,int) ;

__attribute__((used)) static inline int slot_deconfigure(struct slot *slot)
{
 int ret = sclp_pci_deconfigure(slot->zdev->fid);

 zpci_dbg(3, "deconf fid:%x, rc:%d\n", slot->zdev->fid, ret);
 if (!ret)
  slot->zdev->state = ZPCI_FN_STATE_STANDBY;

 return ret;
}
