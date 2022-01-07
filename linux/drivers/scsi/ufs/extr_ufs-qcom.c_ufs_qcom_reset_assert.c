
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ufs_qcom_host {int hba; } ;
struct reset_controller_dev {int dummy; } ;


 int WARN_ON (unsigned long) ;
 struct ufs_qcom_host* rcdev_to_ufs_host (struct reset_controller_dev*) ;
 int ufs_qcom_assert_reset (int ) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int
ufs_qcom_reset_assert(struct reset_controller_dev *rcdev, unsigned long id)
{
 struct ufs_qcom_host *host = rcdev_to_ufs_host(rcdev);


 WARN_ON(id);
 ufs_qcom_assert_reset(host->hba);

 usleep_range(1000, 1100);
 return 0;
}
