
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_pll_config {int dummy; } ;


 int k800_set_secondary_pll_encoded (int ) ;
 int vx855_encode_pll (struct via_pll_config) ;

__attribute__((used)) static void vx855_set_secondary_pll(struct via_pll_config config)
{
 k800_set_secondary_pll_encoded(vx855_encode_pll(config));
}
