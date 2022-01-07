
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snic_disc {int mutex; scalar_t__ req_cnt; } ;
struct snic {int shost; struct snic_disc disc; } ;


 int SNIC_SCSI_DBG (int ,char*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

void
snic_disc_term(struct snic *snic)
{
 struct snic_disc *disc = &snic->disc;

 mutex_lock(&disc->mutex);
 if (disc->req_cnt) {
  disc->req_cnt = 0;
  SNIC_SCSI_DBG(snic->shost, "Terminating Discovery.\n");
 }
 mutex_unlock(&disc->mutex);
}
