
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct kref {int dummy; } ;
struct TYPE_3__ {int class; } ;


 int class_destroy (int ) ;
 int kfree (TYPE_1__*) ;
 TYPE_1__* usb_class ;

__attribute__((used)) static void release_usb_class(struct kref *kref)
{

 class_destroy(usb_class->class);
 kfree(usb_class);
 usb_class = ((void*)0);
}
