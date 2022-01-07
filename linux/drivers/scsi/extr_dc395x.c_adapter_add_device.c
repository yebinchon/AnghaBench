
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct DeviceCtlBlk {size_t target_id; int target_lun; int list; struct AdapterCtlBlk* acb; } ;
struct AdapterCtlBlk {int* dcb_map; struct DeviceCtlBlk*** children; int dcb_list; struct DeviceCtlBlk* dcb_run_robin; } ;


 int list_add_tail (int *,int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static void adapter_add_device(struct AdapterCtlBlk *acb,
  struct DeviceCtlBlk *dcb)
{

 dcb->acb = acb;


 if (list_empty(&acb->dcb_list))
  acb->dcb_run_robin = dcb;


 list_add_tail(&dcb->list, &acb->dcb_list);


 acb->dcb_map[dcb->target_id] |= (1 << dcb->target_lun);
 acb->children[dcb->target_id][dcb->target_lun] = dcb;
}
