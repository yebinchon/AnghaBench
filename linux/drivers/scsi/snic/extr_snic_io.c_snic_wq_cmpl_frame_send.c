
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ulong ;
struct vnic_wq_buf {int * os_buf; } ;
struct vnic_wq {int vdev; } ;
struct snic_req_info {int dummy; } ;
struct snic {TYPE_1__* shost; } ;
struct cq_desc {int dummy; } ;
struct TYPE_2__ {int host_no; } ;


 int SNIC_BUG_ON (int ) ;
 int SNIC_DESC_LOGGING ;
 int SNIC_HOST_INFO (TYPE_1__*,char*,int *) ;
 int SNIC_TRC (int ,int ,int ,scalar_t__,int ,int ,int ) ;
 int snic_log_level ;
 struct snic* svnic_dev_priv (int ) ;

__attribute__((used)) static void
snic_wq_cmpl_frame_send(struct vnic_wq *wq,
       struct cq_desc *cq_desc,
       struct vnic_wq_buf *buf,
       void *opaque)
{
 struct snic *snic = svnic_dev_priv(wq->vdev);

 SNIC_BUG_ON(buf->os_buf == ((void*)0));

 if (snic_log_level & SNIC_DESC_LOGGING)
  SNIC_HOST_INFO(snic->shost,
          "Ack received for snic_host_req %p.\n",
          buf->os_buf);

 SNIC_TRC(snic->shost->host_no, 0, 0,
   ((ulong)(buf->os_buf) - sizeof(struct snic_req_info)), 0, 0,
   0);

 buf->os_buf = ((void*)0);
}
