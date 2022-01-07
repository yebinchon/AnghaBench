
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct at91_cf_socket {int socket; } ;


 int device_init_wakeup (int *,int ) ;
 int pcmcia_unregister_socket (int *) ;
 struct at91_cf_socket* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int at91_cf_remove(struct platform_device *pdev)
{
 struct at91_cf_socket *cf = platform_get_drvdata(pdev);

 pcmcia_unregister_socket(&cf->socket);
 device_init_wakeup(&pdev->dev, 0);

 return 0;
}
