
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bman_portal {struct bm_portal_config const* config; } ;
struct bm_portal_config {int dummy; } ;



const struct bm_portal_config *
bman_get_bm_portal_config(const struct bman_portal *portal)
{
 return portal->config;
}
