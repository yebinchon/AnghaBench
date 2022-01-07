
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct switchtec_ntb {int dummy; } ;
struct switchtec_dev {struct switchtec_ntb* sndev; } ;


 int MSG_CHECK_LINK ;
 int switchtec_ntb_check_link (struct switchtec_ntb*,int ) ;

__attribute__((used)) static void switchtec_ntb_link_notification(struct switchtec_dev *stdev)
{
 struct switchtec_ntb *sndev = stdev->sndev;

 switchtec_ntb_check_link(sndev, MSG_CHECK_LINK);
}
