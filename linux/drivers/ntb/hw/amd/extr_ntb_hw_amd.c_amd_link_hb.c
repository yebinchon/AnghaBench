
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct work_struct {int dummy; } ;
struct amd_ntb_dev {int hb_timer; int ntb; } ;


 int AMD_LINK_HB_TIMEOUT ;
 int amd_link_is_up (struct amd_ntb_dev*) ;
 scalar_t__ amd_poll_link (struct amd_ntb_dev*) ;
 struct amd_ntb_dev* hb_ndev (struct work_struct*) ;
 int ntb_link_event (int *) ;
 int schedule_delayed_work (int *,int ) ;

__attribute__((used)) static void amd_link_hb(struct work_struct *work)
{
 struct amd_ntb_dev *ndev = hb_ndev(work);

 if (amd_poll_link(ndev))
  ntb_link_event(&ndev->ntb);

 if (!amd_link_is_up(ndev))
  schedule_delayed_work(&ndev->hb_timer, AMD_LINK_HB_TIMEOUT);
}
