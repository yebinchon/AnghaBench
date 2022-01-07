
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int (* scsi_done ) (struct scsi_cmnd*) ;} ;


 int pqi_prep_for_scsi_done (struct scsi_cmnd*) ;
 int stub1 (struct scsi_cmnd*) ;

__attribute__((used)) static inline void pqi_scsi_done(struct scsi_cmnd *scmd)
{
 pqi_prep_for_scsi_done(scmd);
 scmd->scsi_done(scmd);
}
