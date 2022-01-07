
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u64 ;
typedef size_t u32 ;
struct adpt_device {scalar_t__ tid; scalar_t__ scsi_lun; struct adpt_device* next_lun; } ;
struct TYPE_5__ {TYPE_1__* channel; } ;
typedef TYPE_2__ adpt_hba ;
struct TYPE_4__ {struct adpt_device** device; } ;


 size_t MAX_CHANNEL ;

__attribute__((used)) static struct adpt_device* adpt_find_device(adpt_hba* pHba, u32 chan, u32 id, u64 lun)
{
 struct adpt_device* d;

 if(chan < 0 || chan >= MAX_CHANNEL)
  return ((void*)0);

 d = pHba->channel[chan].device[id];
 if(!d || d->tid == 0) {
  return ((void*)0);
 }


 if(d->scsi_lun == lun){
  return d;
 }


 for(d=d->next_lun ; d ; d = d->next_lun){
  if(d->scsi_lun == lun){
   return d;
  }
 }
 return ((void*)0);
}
