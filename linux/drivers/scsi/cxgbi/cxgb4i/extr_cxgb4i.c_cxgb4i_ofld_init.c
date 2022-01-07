
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cxgbi_device {int csk_init_act_open; int csk_alloc_cpls; int csk_send_rx_credits; int csk_send_close_req; int csk_send_abort_req; int csk_push_tx_frames; int csk_release_offload_resources; } ;


 scalar_t__ CXGB4I_MAX_CONN ;
 int alloc_cpls ;
 scalar_t__ cxgb4i_max_connect ;
 int cxgb4i_sport_base ;
 int cxgbi_device_portmap_create (struct cxgbi_device*,int ,scalar_t__) ;
 int init_act_open ;
 int pr_info (char*,struct cxgbi_device*) ;
 int push_tx_frames ;
 int release_offload_resources ;
 int send_abort_req ;
 int send_close_req ;
 int send_rx_credits ;

__attribute__((used)) static int cxgb4i_ofld_init(struct cxgbi_device *cdev)
{
 int rc;

 if (cxgb4i_max_connect > CXGB4I_MAX_CONN)
  cxgb4i_max_connect = CXGB4I_MAX_CONN;

 rc = cxgbi_device_portmap_create(cdev, cxgb4i_sport_base,
     cxgb4i_max_connect);
 if (rc < 0)
  return rc;

 cdev->csk_release_offload_resources = release_offload_resources;
 cdev->csk_push_tx_frames = push_tx_frames;
 cdev->csk_send_abort_req = send_abort_req;
 cdev->csk_send_close_req = send_close_req;
 cdev->csk_send_rx_credits = send_rx_credits;
 cdev->csk_alloc_cpls = alloc_cpls;
 cdev->csk_init_act_open = init_act_open;

 pr_info("cdev 0x%p, offload up, added.\n", cdev);
 return 0;
}
