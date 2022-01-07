
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ptp_qoriq {int rsrc; } ;
struct platform_device {int dummy; } ;


 int kfree (struct ptp_qoriq*) ;
 struct ptp_qoriq* platform_get_drvdata (struct platform_device*) ;
 int ptp_qoriq_free (struct ptp_qoriq*) ;
 int release_resource (int ) ;

__attribute__((used)) static int ptp_qoriq_remove(struct platform_device *dev)
{
 struct ptp_qoriq *ptp_qoriq = platform_get_drvdata(dev);

 ptp_qoriq_free(ptp_qoriq);
 release_resource(ptp_qoriq->rsrc);
 kfree(ptp_qoriq);
 return 0;
}
