
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct Scsi_Host {int dummy; } ;
struct SL_WH_MASTER_TRIGGER_T {int dummy; } ;
struct TYPE_3__ {int MasterData; } ;
struct MPT3SAS_ADAPTER {int diag_trigger_lock; TYPE_1__ diag_trigger_master; } ;
typedef int ssize_t ;


 int MASTER_TRIGGER_ADAPTER_RESET ;
 int MASTER_TRIGGER_FW_FAULT ;
 struct Scsi_Host* class_to_shost (struct device*) ;
 int memcpy (TYPE_1__*,char const*,int ) ;
 int memset (TYPE_1__*,int ,int) ;
 int min (int,size_t) ;
 struct MPT3SAS_ADAPTER* shost_priv (struct Scsi_Host*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static ssize_t
diag_trigger_master_store(struct device *cdev,
 struct device_attribute *attr, const char *buf, size_t count)

{
 struct Scsi_Host *shost = class_to_shost(cdev);
 struct MPT3SAS_ADAPTER *ioc = shost_priv(shost);
 unsigned long flags;
 ssize_t rc;

 spin_lock_irqsave(&ioc->diag_trigger_lock, flags);
 rc = min(sizeof(struct SL_WH_MASTER_TRIGGER_T), count);
 memset(&ioc->diag_trigger_master, 0,
     sizeof(struct SL_WH_MASTER_TRIGGER_T));
 memcpy(&ioc->diag_trigger_master, buf, rc);
 ioc->diag_trigger_master.MasterData |=
     (MASTER_TRIGGER_FW_FAULT + MASTER_TRIGGER_ADAPTER_RESET);
 spin_unlock_irqrestore(&ioc->diag_trigger_lock, flags);
 return rc;
}
