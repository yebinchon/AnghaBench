
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {int dummy; } ;
struct alua_dh_data {int init_error; int init_mutex; } ;


 int SCSI_DH_DEV_UNSUPP ;
 int TPGS_MODE_NONE ;
 int alua_check_tpgs (struct scsi_device*) ;
 int alua_check_vpd (struct scsi_device*,struct alua_dh_data*,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int alua_initialize(struct scsi_device *sdev, struct alua_dh_data *h)
{
 int err = SCSI_DH_DEV_UNSUPP, tpgs;

 mutex_lock(&h->init_mutex);
 tpgs = alua_check_tpgs(sdev);
 if (tpgs != TPGS_MODE_NONE)
  err = alua_check_vpd(sdev, h, tpgs);
 h->init_error = err;
 mutex_unlock(&h->init_mutex);
 return err;
}
