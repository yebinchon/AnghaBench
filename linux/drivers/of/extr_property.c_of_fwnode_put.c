
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 int of_node_put (int ) ;
 int to_of_node (struct fwnode_handle*) ;

__attribute__((used)) static void of_fwnode_put(struct fwnode_handle *fwnode)
{
 of_node_put(to_of_node(fwnode));
}
