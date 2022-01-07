
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct fwnode_handle const fwnode_handle ;


 struct fwnode_handle const* of_fwnode_handle (int ) ;
 int of_get_next_available_child (int ,int ) ;
 int to_of_node (struct fwnode_handle const*) ;

__attribute__((used)) static struct fwnode_handle *
of_fwnode_get_next_child_node(const struct fwnode_handle *fwnode,
         struct fwnode_handle *child)
{
 return of_fwnode_handle(of_get_next_available_child(to_of_node(fwnode),
           to_of_node(child)));
}
