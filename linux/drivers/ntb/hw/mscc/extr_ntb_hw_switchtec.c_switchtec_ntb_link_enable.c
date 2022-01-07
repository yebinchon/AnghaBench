
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct switchtec_ntb {TYPE_2__* self_shared; TYPE_1__* stdev; } ;
struct ntb_dev {int dummy; } ;
typedef enum ntb_width { ____Placeholder_ntb_width } ntb_width ;
typedef enum ntb_speed { ____Placeholder_ntb_speed } ntb_speed ;
struct TYPE_4__ {int link_sta; } ;
struct TYPE_3__ {int dev; } ;


 int LINK_MESSAGE ;
 int MSG_LINK_UP ;
 int dev_dbg (int *,char*) ;
 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;
 int switchtec_ntb_link_status_update (struct switchtec_ntb*) ;
 int switchtec_ntb_send_msg (struct switchtec_ntb*,int ,int ) ;

__attribute__((used)) static int switchtec_ntb_link_enable(struct ntb_dev *ntb,
         enum ntb_speed max_speed,
         enum ntb_width max_width)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 dev_dbg(&sndev->stdev->dev, "enabling link\n");

 sndev->self_shared->link_sta = 1;
 switchtec_ntb_send_msg(sndev, LINK_MESSAGE, MSG_LINK_UP);

 switchtec_ntb_link_status_update(sndev);

 return 0;
}
