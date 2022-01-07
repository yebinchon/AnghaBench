
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
struct switchtec_ntb {int link_is_up; TYPE_2__* stdev; int ntb; TYPE_1__* peer_shared; TYPE_3__* self_shared; } ;
struct TYPE_6__ {int link_sta; } ;
struct TYPE_5__ {int dev; } ;
struct TYPE_4__ {int magic; } ;


 int LINK_MESSAGE ;
 int MSG_CHECK_LINK ;
 int SWITCHTEC_NTB_MAGIC ;
 int crosslink_init_dbmsgs (struct switchtec_ntb*) ;
 int dev_info (int *,char*,char*) ;
 int ioread64 (int *) ;
 int ntb_link_event (int *) ;
 int switchtec_ntb_send_msg (struct switchtec_ntb*,int ,int ) ;
 int switchtec_ntb_set_link_speed (struct switchtec_ntb*) ;

__attribute__((used)) static void switchtec_ntb_link_status_update(struct switchtec_ntb *sndev)
{
 int link_sta;
 int old = sndev->link_is_up;

 link_sta = sndev->self_shared->link_sta;
 if (link_sta) {
  u64 peer = ioread64(&sndev->peer_shared->magic);

  if ((peer & 0xFFFFFFFF) == SWITCHTEC_NTB_MAGIC)
   link_sta = peer >> 32;
  else
   link_sta = 0;
 }

 sndev->link_is_up = link_sta;
 switchtec_ntb_set_link_speed(sndev);

 if (link_sta != old) {
  switchtec_ntb_send_msg(sndev, LINK_MESSAGE, MSG_CHECK_LINK);
  ntb_link_event(&sndev->ntb);
  dev_info(&sndev->stdev->dev, "ntb link %s\n",
    link_sta ? "up" : "down");

  if (link_sta)
   crosslink_init_dbmsgs(sndev);
 }
}
