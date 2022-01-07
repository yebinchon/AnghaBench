
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int of_node; } ;
struct ulpi {TYPE_1__ dev; } ;


 int device_unregister (TYPE_1__*) ;
 int of_node_put (int ) ;

void ulpi_unregister_interface(struct ulpi *ulpi)
{
 of_node_put(ulpi->dev.of_node);
 device_unregister(&ulpi->dev);
}
