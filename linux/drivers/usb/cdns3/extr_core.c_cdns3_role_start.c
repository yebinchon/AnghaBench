
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cdns3 {int role; int mutex; TYPE_1__** roles; } ;
typedef enum usb_role { ____Placeholder_usb_role } usb_role ;
struct TYPE_2__ {scalar_t__ state; int (* start ) (struct cdns3*) ;} ;


 scalar_t__ CDNS3_ROLE_STATE_ACTIVE ;
 int ENXIO ;
 int USB_ROLE_DEVICE ;
 scalar_t__ WARN_ON (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stub1 (struct cdns3*) ;

__attribute__((used)) static int cdns3_role_start(struct cdns3 *cdns, enum usb_role role)
{
 int ret;

 if (WARN_ON(role > USB_ROLE_DEVICE))
  return 0;

 mutex_lock(&cdns->mutex);
 cdns->role = role;
 mutex_unlock(&cdns->mutex);

 if (!cdns->roles[role])
  return -ENXIO;

 if (cdns->roles[role]->state == CDNS3_ROLE_STATE_ACTIVE)
  return 0;

 mutex_lock(&cdns->mutex);
 ret = cdns->roles[role]->start(cdns);
 if (!ret)
  cdns->roles[role]->state = CDNS3_ROLE_STATE_ACTIVE;
 mutex_unlock(&cdns->mutex);

 return ret;
}
