
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_11__ {size_t target_id; int scsi_cmd; } ;
typedef TYPE_3__ ips_scb_t ;
struct TYPE_12__ {TYPE_2__* logical_drive_info; } ;
typedef TYPE_4__ ips_ha_t ;
typedef int cap ;
struct TYPE_13__ {void* len; void* lba; } ;
struct TYPE_10__ {TYPE_1__* drive_info; } ;
struct TYPE_9__ {int sector_count; } ;
typedef TYPE_5__ IPS_SCSI_CAPACITY ;


 scalar_t__ IPS_BLKSIZE ;
 int METHOD_TRACE (char*,int) ;
 void* cpu_to_be32 (scalar_t__) ;
 int ips_scmd_buf_write (int ,TYPE_5__*,int) ;
 scalar_t__ le32_to_cpu (int ) ;
 int scsi_bufflen (int ) ;

__attribute__((used)) static int
ips_rdcap(ips_ha_t * ha, ips_scb_t * scb)
{
 IPS_SCSI_CAPACITY cap;

 METHOD_TRACE("ips_rdcap", 1);

 if (scsi_bufflen(scb->scsi_cmd) < 8)
  return (0);

 cap.lba =
     cpu_to_be32(le32_to_cpu
   (ha->logical_drive_info->
    drive_info[scb->target_id].sector_count) - 1);
 cap.len = cpu_to_be32((uint32_t) IPS_BLKSIZE);

 ips_scmd_buf_write(scb->scsi_cmd, &cap, sizeof (cap));

 return (1);
}
