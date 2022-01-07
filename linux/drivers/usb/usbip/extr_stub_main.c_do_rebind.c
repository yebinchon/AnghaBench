
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct bus_id_priv {TYPE_1__* udev; } ;
struct TYPE_5__ {scalar_t__ parent; } ;
struct TYPE_4__ {TYPE_2__ dev; } ;


 int dev_err (TYPE_2__*,char*) ;
 int device_attach (TYPE_2__*) ;
 int device_lock (scalar_t__) ;
 int device_unlock (scalar_t__) ;

__attribute__((used)) static int do_rebind(char *busid, struct bus_id_priv *busid_priv)
{
 int ret = 0;


 if (busid_priv->udev->dev.parent)
  device_lock(busid_priv->udev->dev.parent);
 ret = device_attach(&busid_priv->udev->dev);
 if (busid_priv->udev->dev.parent)
  device_unlock(busid_priv->udev->dev.parent);
 if (ret < 0)
  dev_err(&busid_priv->udev->dev, "rebind failed\n");
 return ret;
}
