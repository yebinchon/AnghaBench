
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct scsi_device {TYPE_2__* request_queue; int host; } ;
struct iscsi_sw_tcp_host {struct iscsi_session* session; } ;
struct iscsi_session {struct iscsi_conn* leadconn; } ;
struct iscsi_conn {scalar_t__ datadgst_en; } ;
struct TYPE_4__ {TYPE_1__* backing_dev_info; } ;
struct TYPE_3__ {int capabilities; } ;


 int BDI_CAP_STABLE_WRITES ;
 int blk_queue_dma_alignment (TYPE_2__*,int ) ;
 struct iscsi_sw_tcp_host* iscsi_host_priv (int ) ;

__attribute__((used)) static int iscsi_sw_tcp_slave_configure(struct scsi_device *sdev)
{
 struct iscsi_sw_tcp_host *tcp_sw_host = iscsi_host_priv(sdev->host);
 struct iscsi_session *session = tcp_sw_host->session;
 struct iscsi_conn *conn = session->leadconn;

 if (conn->datadgst_en)
  sdev->request_queue->backing_dev_info->capabilities
   |= BDI_CAP_STABLE_WRITES;
 blk_queue_dma_alignment(sdev->request_queue, 0);
 return 0;
}
