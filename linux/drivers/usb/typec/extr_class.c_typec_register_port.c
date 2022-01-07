
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * type; int fwnode; struct device* parent; int class; } ;
struct typec_port {void* pwr_role; int id; int port_type; void* prefer_role; TYPE_1__ dev; int mux; int sw; struct typec_capability const* cap; int port_type_lock; int mode_ids; void* data_role; void* vconn_role; } ;
struct typec_capability {int type; void* prefer_role; int data; int fwnode; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 struct typec_port* ERR_CAST (int ) ;
 struct typec_port* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (int ) ;
 void* TYPEC_DEVICE ;
 void* TYPEC_HOST ;
 void* TYPEC_NO_PREFERRED_ROLE ;






 void* TYPEC_SINK ;
 void* TYPEC_SOURCE ;
 int dev_err (struct device*,char*,int) ;
 int dev_set_name (TYPE_1__*,char*,int) ;
 int device_add (TYPE_1__*) ;
 int device_initialize (TYPE_1__*) ;
 int ida_init (int *) ;
 int ida_simple_get (int *,int ,int ,int ) ;
 int kfree (struct typec_port*) ;
 struct typec_port* kzalloc (int,int ) ;
 int mutex_init (int *) ;
 int put_device (TYPE_1__*) ;
 int typec_class ;
 int typec_index_ida ;
 int typec_mux_get (TYPE_1__*,int *) ;
 int typec_port_dev_type ;
 int typec_switch_get (TYPE_1__*) ;

struct typec_port *typec_register_port(struct device *parent,
           const struct typec_capability *cap)
{
 struct typec_port *port;
 int ret;
 int id;

 port = kzalloc(sizeof(*port), GFP_KERNEL);
 if (!port)
  return ERR_PTR(-ENOMEM);

 id = ida_simple_get(&typec_index_ida, 0, 0, GFP_KERNEL);
 if (id < 0) {
  kfree(port);
  return ERR_PTR(id);
 }

 switch (cap->type) {
 case 129:
  port->pwr_role = TYPEC_SOURCE;
  port->vconn_role = TYPEC_SOURCE;
  break;
 case 130:
  port->pwr_role = TYPEC_SINK;
  port->vconn_role = TYPEC_SINK;
  break;
 case 131:
  if (cap->prefer_role != TYPEC_NO_PREFERRED_ROLE)
   port->pwr_role = cap->prefer_role;
  else
   port->pwr_role = TYPEC_SINK;
  break;
 }

 switch (cap->data) {
 case 133:
  port->data_role = TYPEC_HOST;
  break;
 case 128:
  port->data_role = TYPEC_DEVICE;
  break;
 case 132:
  if (cap->prefer_role == TYPEC_SOURCE)
   port->data_role = TYPEC_HOST;
  else
   port->data_role = TYPEC_DEVICE;
  break;
 }

 ida_init(&port->mode_ids);
 mutex_init(&port->port_type_lock);

 port->id = id;
 port->cap = cap;
 port->port_type = cap->type;
 port->prefer_role = cap->prefer_role;

 device_initialize(&port->dev);
 port->dev.class = typec_class;
 port->dev.parent = parent;
 port->dev.fwnode = cap->fwnode;
 port->dev.type = &typec_port_dev_type;
 dev_set_name(&port->dev, "port%d", id);

 port->sw = typec_switch_get(&port->dev);
 if (IS_ERR(port->sw)) {
  put_device(&port->dev);
  return ERR_CAST(port->sw);
 }

 port->mux = typec_mux_get(&port->dev, ((void*)0));
 if (IS_ERR(port->mux)) {
  put_device(&port->dev);
  return ERR_CAST(port->mux);
 }

 ret = device_add(&port->dev);
 if (ret) {
  dev_err(parent, "failed to register port (%d)\n", ret);
  put_device(&port->dev);
  return ERR_PTR(ret);
 }

 return port;
}
