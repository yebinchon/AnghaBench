
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct acm_wb {scalar_t__ use; } ;
struct acm {int control; int transmitting; } ;


 int usb_autopm_put_interface_async (int ) ;

__attribute__((used)) static void acm_write_done(struct acm *acm, struct acm_wb *wb)
{
 wb->use = 0;
 acm->transmitting--;
 usb_autopm_put_interface_async(acm->control);
}
