
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct omap_dss_device {int dummy; } ;
struct device_node {int dummy; } ;


 int EINVAL ;
 int EPROBE_DEFER ;
 struct omap_dss_device* ERR_PTR (int ) ;
 int of_node_put (struct device_node*) ;
 struct omap_dss_device* omap_dss_find_output_by_port_node (struct device_node*) ;
 struct device_node* omapdss_of_get_first_endpoint (struct device_node*) ;
 struct device_node* omapdss_of_get_remote_port (struct device_node*) ;

struct omap_dss_device *
omapdss_of_find_source_for_first_ep(struct device_node *node)
{
 struct device_node *ep;
 struct device_node *src_port;
 struct omap_dss_device *src;

 ep = omapdss_of_get_first_endpoint(node);
 if (!ep)
  return ERR_PTR(-EINVAL);

 src_port = omapdss_of_get_remote_port(ep);
 if (!src_port) {
  of_node_put(ep);
  return ERR_PTR(-EINVAL);
 }

 of_node_put(ep);

 src = omap_dss_find_output_by_port_node(src_port);

 of_node_put(src_port);

 return src ? src : ERR_PTR(-EPROBE_DEFER);
}
