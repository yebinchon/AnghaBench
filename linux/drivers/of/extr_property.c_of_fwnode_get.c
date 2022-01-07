
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fwnode_handle {int dummy; } ;


 struct fwnode_handle* of_fwnode_handle (int ) ;
 int of_node_get (int ) ;
 int to_of_node (struct fwnode_handle*) ;

__attribute__((used)) static struct fwnode_handle *of_fwnode_get(struct fwnode_handle *fwnode)
{
 return of_fwnode_handle(of_node_get(to_of_node(fwnode)));
}
