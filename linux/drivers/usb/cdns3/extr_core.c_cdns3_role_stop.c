
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {int role; int mutex; TYPE_1__** roles; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;
struct TYPE_2__ {scalar_t__ state; int (* stop ) (struct cdns3*) ;} ;


 scalar_t__ CDNS3_ROLE_STATE_INACTIVE ;
 int USB_ROLE_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cdns3*) ;

__attribute__((used)) static void cdns3_role_stop(struct cdns3 *cdns)
{
 enum usb_role role = cdns->role;

 if (WARN_ON(role > USB_ROLE_DEVICE))
  return;

 if (cdns->roles[role]->state == CDNS3_ROLE_STATE_INACTIVE)
  return;

 mutex_lock(&cdns->mutex);
 cdns->roles[role]->stop(cdns);
 cdns->roles[role]->state = CDNS3_ROLE_STATE_INACTIVE;
 mutex_unlock(&cdns->mutex);
}
