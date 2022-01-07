
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_pll_config {int dummy; } ;


 int cle266_encode_pll (struct via_pll_config) ;
 int cle266_set_secondary_pll_encoded (int ) ;

__attribute__((used)) static void cle266_set_secondary_pll(struct via_pll_config config)
{
 cle266_set_secondary_pll_encoded(cle266_encode_pll(config));
}
