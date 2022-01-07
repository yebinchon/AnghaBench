
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amd_ntb_dev {int hb_timer; } ;


 int cancel_delayed_work_sync (int *) ;
 int ndev_deinit_isr (struct amd_ntb_dev*) ;

__attribute__((used)) static void amd_deinit_dev(struct amd_ntb_dev *ndev)
{
 cancel_delayed_work_sync(&ndev->hb_timer);

 ndev_deinit_isr(ndev);
}
