
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bus_id_priv {TYPE_1__* sdev; } ;
struct TYPE_2__ {int ud; } ;


 int SDEV_EVENT_REMOVED ;
 int usbip_event_add (int *,int ) ;
 int usbip_stop_eh (int *) ;

__attribute__((used)) static void shutdown_busid(struct bus_id_priv *busid_priv)
{
 usbip_event_add(&busid_priv->sdev->ud, SDEV_EVENT_REMOVED);


 usbip_stop_eh(&busid_priv->sdev->ud);
}
