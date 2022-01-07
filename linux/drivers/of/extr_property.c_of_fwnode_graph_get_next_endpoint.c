
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct fwnode_handle const fwnode_handle ;


 struct fwnode_handle const* of_fwnode_handle (int ) ;
 int of_graph_get_next_endpoint (int ,int ) ;
 int to_of_node (struct fwnode_handle const*) ;

__attribute__((used)) static struct fwnode_handle *
of_fwnode_graph_get_next_endpoint(const struct fwnode_handle *fwnode,
      struct fwnode_handle *prev)
{
 return of_fwnode_handle(of_graph_get_next_endpoint(to_of_node(fwnode),
          to_of_node(prev)));
}
