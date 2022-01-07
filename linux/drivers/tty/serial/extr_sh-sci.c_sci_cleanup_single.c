
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dev; } ;
struct sci_port {TYPE_1__ port; } ;


 int pm_runtime_disable (int ) ;

__attribute__((used)) static void sci_cleanup_single(struct sci_port *port)
{
 pm_runtime_disable(port->port.dev);
}
