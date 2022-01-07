
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xenvif {TYPE_2__* dev; } ;
struct xenbus_device {int dummy; } ;
struct TYPE_3__ {int parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;


 struct xenbus_device* to_xenbus_device (int ) ;

__attribute__((used)) static inline struct xenbus_device *xenvif_to_xenbus_device(struct xenvif *vif)
{
 return to_xenbus_device(vif->dev->dev.parent);
}
