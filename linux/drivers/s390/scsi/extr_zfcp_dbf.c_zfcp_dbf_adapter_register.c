
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zfcp_dbf_scsi {int dummy; } ;
struct zfcp_dbf_san {int dummy; } ;
struct zfcp_dbf_rec {int dummy; } ;
struct zfcp_dbf_pay {int dummy; } ;
struct zfcp_dbf_hba {int dummy; } ;
struct zfcp_dbf {void* scsi; void* san; void* pay; void* hba; void* rec; int rec_lock; int scsi_lock; int san_lock; int hba_lock; int pay_lock; } ;
struct zfcp_adapter {struct zfcp_dbf* dbf; TYPE_1__* ccw_device; } ;
struct TYPE_2__ {int dev; } ;


 int DEBUG_MAX_NAME_LEN ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int dbfsize ;
 char* dev_name (int *) ;
 struct zfcp_dbf* kzalloc (int,int ) ;
 int spin_lock_init (int *) ;
 int sprintf (char*,char*,char*) ;
 void* zfcp_dbf_reg (char*,int,int) ;
 int zfcp_dbf_unregister (struct zfcp_dbf*) ;

int zfcp_dbf_adapter_register(struct zfcp_adapter *adapter)
{
 char name[DEBUG_MAX_NAME_LEN];
 struct zfcp_dbf *dbf;

 dbf = kzalloc(sizeof(struct zfcp_dbf), GFP_KERNEL);
 if (!dbf)
  return -ENOMEM;

 spin_lock_init(&dbf->pay_lock);
 spin_lock_init(&dbf->hba_lock);
 spin_lock_init(&dbf->san_lock);
 spin_lock_init(&dbf->scsi_lock);
 spin_lock_init(&dbf->rec_lock);


 sprintf(name, "zfcp_%s_rec", dev_name(&adapter->ccw_device->dev));
 dbf->rec = zfcp_dbf_reg(name, dbfsize, sizeof(struct zfcp_dbf_rec));
 if (!dbf->rec)
  goto err_out;


 sprintf(name, "zfcp_%s_hba", dev_name(&adapter->ccw_device->dev));
 dbf->hba = zfcp_dbf_reg(name, dbfsize, sizeof(struct zfcp_dbf_hba));
 if (!dbf->hba)
  goto err_out;


 sprintf(name, "zfcp_%s_pay", dev_name(&adapter->ccw_device->dev));
 dbf->pay = zfcp_dbf_reg(name, dbfsize * 2, sizeof(struct zfcp_dbf_pay));
 if (!dbf->pay)
  goto err_out;


 sprintf(name, "zfcp_%s_san", dev_name(&adapter->ccw_device->dev));
 dbf->san = zfcp_dbf_reg(name, dbfsize, sizeof(struct zfcp_dbf_san));
 if (!dbf->san)
  goto err_out;


 sprintf(name, "zfcp_%s_scsi", dev_name(&adapter->ccw_device->dev));
 dbf->scsi = zfcp_dbf_reg(name, dbfsize, sizeof(struct zfcp_dbf_scsi));
 if (!dbf->scsi)
  goto err_out;

 adapter->dbf = dbf;

 return 0;
err_out:
 zfcp_dbf_unregister(dbf);
 return -ENOMEM;
}
