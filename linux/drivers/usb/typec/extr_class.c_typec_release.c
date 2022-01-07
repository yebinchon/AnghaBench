
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct typec_port {int mux; int sw; int mode_ids; int id; } ;
struct device {int dummy; } ;


 int ida_destroy (int *) ;
 int ida_simple_remove (int *,int ) ;
 int kfree (struct typec_port*) ;
 struct typec_port* to_typec_port (struct device*) ;
 int typec_index_ida ;
 int typec_mux_put (int ) ;
 int typec_switch_put (int ) ;

__attribute__((used)) static void typec_release(struct device *dev)
{
 struct typec_port *port = to_typec_port(dev);

 ida_simple_remove(&typec_index_ida, port->id);
 ida_destroy(&port->mode_ids);
 typec_switch_put(port->sw);
 typec_mux_put(port->mux);
 kfree(port);
}
