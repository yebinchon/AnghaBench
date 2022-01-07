
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_set {int dummy; } ;
struct ni_device_routes {int n_route_sets; int routes; } ;


 int _ni_bsearch_destcmp ;
 struct ni_route_set const* bsearch (int const*,int ,int ,int,int ) ;

const struct ni_route_set *
ni_find_route_set(const int destination,
    const struct ni_device_routes *valid_routes)
{
 return bsearch(&destination, valid_routes->routes,
         valid_routes->n_route_sets, sizeof(struct ni_route_set),
         _ni_bsearch_destcmp);
}
