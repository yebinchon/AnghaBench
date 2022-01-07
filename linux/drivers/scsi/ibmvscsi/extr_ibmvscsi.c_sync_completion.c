
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srp_event_struct {int comp; int * xfer_iu; int * sync_srp; } ;


 int complete (int *) ;

__attribute__((used)) static void sync_completion(struct srp_event_struct *evt_struct)
{

 if (evt_struct->sync_srp)
  *evt_struct->sync_srp = *evt_struct->xfer_iu;

 complete(&evt_struct->comp);
}
