
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_device {struct alua_dh_data* handler_data; } ;
struct alua_port_group {int lock; int flags; } ;
struct alua_dh_data {int pg; } ;


 int ALUA_OPTIMIZE_STPG ;
 int EINVAL ;
 int ENXIO ;
 int SCSI_DH_OK ;
 struct alua_port_group* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int sscanf (char const*,char*,unsigned int*) ;

__attribute__((used)) static int alua_set_params(struct scsi_device *sdev, const char *params)
{
 struct alua_dh_data *h = sdev->handler_data;
 struct alua_port_group *pg = ((void*)0);
 unsigned int optimize = 0, argc;
 const char *p = params;
 int result = SCSI_DH_OK;
 unsigned long flags;

 if ((sscanf(params, "%u", &argc) != 1) || (argc != 1))
  return -EINVAL;

 while (*p++)
  ;
 if ((sscanf(p, "%u", &optimize) != 1) || (optimize > 1))
  return -EINVAL;

 rcu_read_lock();
 pg = rcu_dereference(h->pg);
 if (!pg) {
  rcu_read_unlock();
  return -ENXIO;
 }
 spin_lock_irqsave(&pg->lock, flags);
 if (optimize)
  pg->flags |= ALUA_OPTIMIZE_STPG;
 else
  pg->flags &= ~ALUA_OPTIMIZE_STPG;
 spin_unlock_irqrestore(&pg->lock, flags);
 rcu_read_unlock();

 return result;
}
