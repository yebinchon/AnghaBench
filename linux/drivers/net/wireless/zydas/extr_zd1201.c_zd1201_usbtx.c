
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd1201 {int dev; } ;
struct urb {struct zd1201* context; } ;


 int netif_wake_queue (int ) ;

__attribute__((used)) static void zd1201_usbtx(struct urb *urb)
{
 struct zd1201 *zd = urb->context;
 netif_wake_queue(zd->dev);
}
