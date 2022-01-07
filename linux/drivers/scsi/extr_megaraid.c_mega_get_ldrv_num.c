
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct scsi_cmnd {int* cmnd; TYPE_1__* device; } ;
struct TYPE_5__ {int this_id; int boot_ldrv; scalar_t__ read_ldidmap; scalar_t__ support_random_del; scalar_t__ boot_ldrv_enabled; } ;
typedef TYPE_2__ adapter_t ;
struct TYPE_4__ {int id; } ;







__attribute__((used)) static inline int
mega_get_ldrv_num(adapter_t *adapter, struct scsi_cmnd *cmd, int channel)
{
 int tgt;
 int ldrv_num;

 tgt = cmd->device->id;

 if ( tgt > adapter->this_id )
  tgt--;

 ldrv_num = (channel * 15) + tgt;





 if( adapter->boot_ldrv_enabled ) {
  if( ldrv_num == 0 ) {
   ldrv_num = adapter->boot_ldrv;
  }
  else {
   if( ldrv_num <= adapter->boot_ldrv ) {
    ldrv_num--;
   }
  }
 }
 if (adapter->support_random_del && adapter->read_ldidmap )
  switch (cmd->cmnd[0]) {
  case 130:
  case 128:
  case 131:
  case 129:
   ldrv_num += 0x80;
  }

 return ldrv_num;
}
