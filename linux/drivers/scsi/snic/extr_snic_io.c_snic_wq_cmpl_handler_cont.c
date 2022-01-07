
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct vnic_dev {int dummy; } ;
struct snic {int * wq_lock; int * wq; } ;
struct cq_desc {int dummy; } ;


 int SNIC_BUG_ON (int) ;
 int snic_wq_cmpl_frame_send ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct snic* svnic_dev_priv (struct vnic_dev*) ;
 int svnic_wq_service (int *,struct cq_desc*,size_t,int ,int *) ;

__attribute__((used)) static int
snic_wq_cmpl_handler_cont(struct vnic_dev *vdev,
     struct cq_desc *cq_desc,
     u8 type,
     u16 q_num,
     u16 cmpl_idx,
     void *opaque)
{
 struct snic *snic = svnic_dev_priv(vdev);
 unsigned long flags;

 SNIC_BUG_ON(q_num != 0);

 spin_lock_irqsave(&snic->wq_lock[q_num], flags);
 svnic_wq_service(&snic->wq[q_num],
    cq_desc,
    cmpl_idx,
    snic_wq_cmpl_frame_send,
    ((void*)0));
 spin_unlock_irqrestore(&snic->wq_lock[q_num], flags);

 return 0;
}
