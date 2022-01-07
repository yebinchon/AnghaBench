
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qmp {int mbox_chan; } ;
struct platform_device {int dummy; } ;


 int mbox_free_channel (int ) ;
 struct qmp* platform_get_drvdata (struct platform_device*) ;
 int qmp_close (struct qmp*) ;
 int qmp_cooling_devices_remove (struct qmp*) ;
 int qmp_pd_remove (struct qmp*) ;
 int qmp_qdss_clk_remove (struct qmp*) ;

__attribute__((used)) static int qmp_remove(struct platform_device *pdev)
{
 struct qmp *qmp = platform_get_drvdata(pdev);

 qmp_qdss_clk_remove(qmp);
 qmp_pd_remove(qmp);
 qmp_cooling_devices_remove(qmp);

 qmp_close(qmp);
 mbox_free_channel(qmp->mbox_chan);

 return 0;
}
