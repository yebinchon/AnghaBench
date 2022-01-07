
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {size_t target_id; int basic_status; } ;
typedef TYPE_2__ ips_scb_t ;
struct TYPE_9__ {TYPE_4__* logical_drive_info; } ;
typedef TYPE_3__ ips_ha_t ;
struct TYPE_10__ {TYPE_1__* drive_info; } ;
struct TYPE_7__ {scalar_t__ state; } ;
typedef int IPS_LD_INFO ;


 int IPS_GSC_STATUS_MASK ;
 scalar_t__ IPS_LD_CRS ;
 scalar_t__ IPS_LD_FREE ;
 scalar_t__ IPS_LD_OFFLINE ;
 scalar_t__ IPS_LD_SYS ;
 size_t IPS_MAX_LD ;
 int METHOD_TRACE (char*,int) ;
 int memset (TYPE_4__*,int ,int) ;

__attribute__((used)) static int
ips_online(ips_ha_t * ha, ips_scb_t * scb)
{
 METHOD_TRACE("ips_online", 1);

 if (scb->target_id >= IPS_MAX_LD)
  return (0);

 if ((scb->basic_status & IPS_GSC_STATUS_MASK) > 1) {
  memset(ha->logical_drive_info, 0, sizeof (IPS_LD_INFO));
  return (0);
 }

 if (ha->logical_drive_info->drive_info[scb->target_id].state !=
     IPS_LD_OFFLINE
     && ha->logical_drive_info->drive_info[scb->target_id].state !=
     IPS_LD_FREE
     && ha->logical_drive_info->drive_info[scb->target_id].state !=
     IPS_LD_CRS
     && ha->logical_drive_info->drive_info[scb->target_id].state !=
     IPS_LD_SYS)
  return (1);
 else
  return (0);
}
