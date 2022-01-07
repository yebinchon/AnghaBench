
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_pll_config {int dummy; } ;


 int k800_encode_pll (struct via_pll_config) ;
 int k800_set_primary_pll_encoded (int ) ;

__attribute__((used)) static void k800_set_primary_pll(struct via_pll_config config)
{
 k800_set_primary_pll_encoded(k800_encode_pll(config));
}
