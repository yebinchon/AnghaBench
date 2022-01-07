
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* hw; } ;
typedef TYPE_2__ scsi_qla_host_t ;
struct TYPE_4__ {int max_fibre_devices; } ;



__attribute__((used)) static inline int
qla2x00_gid_pt_rsp_size(scsi_qla_host_t *vha)
{
 return vha->hw->max_fibre_devices * 4 + 16;
}
