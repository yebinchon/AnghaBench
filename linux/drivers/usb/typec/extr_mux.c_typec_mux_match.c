
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u16 ;
struct typec_altmode_desc {scalar_t__ svid; } ;
struct device_connection {int fwnode; int id; int * endpoint; } ;
struct device {int dummy; } ;


 int ENOMEM ;
 int EPROBE_DEFER ;
 void* ERR_PTR (int) ;
 int GFP_KERNEL ;
 struct device* class_find_device (int *,int *,int ,int ) ;
 int fwnode_property_count_u16 (int ,char*) ;
 int fwnode_property_present (int ,char*) ;
 int fwnode_property_read_u16_array (int ,char*,scalar_t__*,int) ;
 scalar_t__* kcalloc (int,int,int ) ;
 int kfree (scalar_t__*) ;
 int mux_fwnode_match ;
 int name_match ;
 void* to_typec_switch (struct device*) ;
 int typec_mux_class ;

__attribute__((used)) static void *typec_mux_match(struct device_connection *con, int ep, void *data)
{
 const struct typec_altmode_desc *desc = data;
 struct device *dev;
 bool match;
 int nval;
 u16 *val;
 int i;

 if (!con->fwnode) {
  dev = class_find_device(&typec_mux_class, ((void*)0),
     con->endpoint[ep], name_match);

  return dev ? to_typec_switch(dev) : ERR_PTR(-EPROBE_DEFER);
 }





 match = !con->id;
 if (match)
  goto find_mux;


 if (!desc) {
  match = fwnode_property_present(con->fwnode, "accessory");
  if (match)
   goto find_mux;
  return ((void*)0);
 }


 nval = fwnode_property_count_u16(con->fwnode, "svid");
 if (nval <= 0)
  return ((void*)0);

 val = kcalloc(nval, sizeof(*val), GFP_KERNEL);
 if (!val)
  return ERR_PTR(-ENOMEM);

 nval = fwnode_property_read_u16_array(con->fwnode, "svid", val, nval);
 if (nval < 0) {
  kfree(val);
  return ERR_PTR(nval);
 }

 for (i = 0; i < nval; i++) {
  match = val[i] == desc->svid;
  if (match) {
   kfree(val);
   goto find_mux;
  }
 }
 kfree(val);
 return ((void*)0);

find_mux:
 dev = class_find_device(&typec_mux_class, ((void*)0), con->fwnode,
    mux_fwnode_match);

 return dev ? to_typec_switch(dev) : ERR_PTR(-EPROBE_DEFER);
}
