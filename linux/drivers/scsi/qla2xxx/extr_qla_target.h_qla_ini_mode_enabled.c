
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_qla_host {TYPE_1__* host; } ;
struct TYPE_2__ {scalar_t__ active_mode; } ;


 scalar_t__ MODE_INITIATOR ;

__attribute__((used)) static inline bool qla_ini_mode_enabled(struct scsi_qla_host *ha)
{
 return ha->host->active_mode == MODE_INITIATOR;
}
