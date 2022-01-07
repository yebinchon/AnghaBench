
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct scsi_cmnd {int dummy; } ;


 int scsi_set_resid (struct scsi_cmnd*,scalar_t__) ;

__attribute__((used)) static void virtscsi_compute_resid(struct scsi_cmnd *sc, u32 resid)
{
 if (resid)
  scsi_set_resid(sc, resid);
}
