
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssusb_mtk {int dev; } ;


 int of_platform_depopulate (int ) ;
 int ssusb_host_cleanup (struct ssusb_mtk*) ;

void ssusb_host_exit(struct ssusb_mtk *ssusb)
{
 of_platform_depopulate(ssusb->dev);
 ssusb_host_cleanup(ssusb);
}
