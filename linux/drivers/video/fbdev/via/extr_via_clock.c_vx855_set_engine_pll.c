
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_pll_config {int dummy; } ;


 int set_engine_pll_encoded (int ) ;
 int vx855_encode_pll (struct via_pll_config) ;

__attribute__((used)) static void vx855_set_engine_pll(struct via_pll_config config)
{
 set_engine_pll_encoded(vx855_encode_pll(config));
}
