
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DeviceCtlBlk {int srb_going_list; int target_lun; int target_id; } ;
struct AdapterCtlBlk {int dummy; } ;


 int DBG_1 ;
 int adapter_remove_device (struct AdapterCtlBlk*,struct DeviceCtlBlk*) ;
 int dprintkdbg (int ,char*,int ,int ,int) ;
 int kfree (struct DeviceCtlBlk*) ;
 int list_size (int *) ;

__attribute__((used)) static void adapter_remove_and_free_device(struct AdapterCtlBlk *acb,
  struct DeviceCtlBlk *dcb)
{
 if (list_size(&dcb->srb_going_list) > 1) {
  dprintkdbg(DBG_1, "adapter_remove_and_free_device: <%02i-%i> "
             "Won't remove because of %i active requests.\n",
      dcb->target_id, dcb->target_lun,
      list_size(&dcb->srb_going_list));
  return;
 }
 adapter_remove_device(acb, dcb);
 kfree(dcb);
}
