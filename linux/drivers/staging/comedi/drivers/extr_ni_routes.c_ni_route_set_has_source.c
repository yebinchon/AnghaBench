
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ni_route_set {int n_src; int src; } ;


 int _ni_bsearch_srccmp ;
 int bsearch (int const*,int ,int ,int,int ) ;

bool ni_route_set_has_source(const struct ni_route_set *routes,
        const int source)
{
 if (!bsearch(&source, routes->src, routes->n_src, sizeof(int),
       _ni_bsearch_srccmp))
  return 0;
 return 1;
}
