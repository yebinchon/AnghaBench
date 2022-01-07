
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wdm_device {struct wdm_device* ubuf; struct wdm_device* irq; struct wdm_device* orq; struct wdm_device* inbuf; struct wdm_device* sbuf; } ;


 int free_urbs (struct wdm_device*) ;
 int kfree (struct wdm_device*) ;

__attribute__((used)) static void cleanup(struct wdm_device *desc)
{
 kfree(desc->sbuf);
 kfree(desc->inbuf);
 kfree(desc->orq);
 kfree(desc->irq);
 kfree(desc->ubuf);
 free_urbs(desc);
 kfree(desc);
}
