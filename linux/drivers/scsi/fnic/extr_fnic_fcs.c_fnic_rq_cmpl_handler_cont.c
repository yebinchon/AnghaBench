
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u16 ;
struct vnic_dev {int dummy; } ;
struct fnic {int * rq; } ;
struct cq_desc {int dummy; } ;


 int VNIC_RQ_RETURN_DESC ;
 int fnic_rq_cmpl_frame_recv ;
 struct fnic* vnic_dev_priv (struct vnic_dev*) ;
 int vnic_rq_service (int *,struct cq_desc*,size_t,int ,int ,int *) ;

__attribute__((used)) static int fnic_rq_cmpl_handler_cont(struct vnic_dev *vdev,
         struct cq_desc *cq_desc, u8 type,
         u16 q_number, u16 completed_index,
         void *opaque)
{
 struct fnic *fnic = vnic_dev_priv(vdev);

 vnic_rq_service(&fnic->rq[q_number], cq_desc, completed_index,
   VNIC_RQ_RETURN_DESC, fnic_rq_cmpl_frame_recv,
   ((void*)0));
 return 0;
}
