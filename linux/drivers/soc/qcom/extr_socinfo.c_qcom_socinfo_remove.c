
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qcom_socinfo {int soc_dev; } ;
struct platform_device {int dummy; } ;


 struct qcom_socinfo* platform_get_drvdata (struct platform_device*) ;
 int soc_device_unregister (int ) ;
 int socinfo_debugfs_exit (struct qcom_socinfo*) ;

__attribute__((used)) static int qcom_socinfo_remove(struct platform_device *pdev)
{
 struct qcom_socinfo *qs = platform_get_drvdata(pdev);

 soc_device_unregister(qs->soc_dev);

 socinfo_debugfs_exit(qs);

 return 0;
}
