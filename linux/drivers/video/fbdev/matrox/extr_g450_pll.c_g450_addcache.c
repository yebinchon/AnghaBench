
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct matrox_pll_cache {scalar_t__ valid; TYPE_1__* data; } ;
struct TYPE_4__ {unsigned int mnp_key; unsigned int mnp_value; } ;


 scalar_t__ ARRAY_SIZE (TYPE_1__*) ;
 unsigned int G450_MNP_FREQBITS ;
 int memmove (TYPE_1__*,TYPE_1__*,int) ;

__attribute__((used)) static void g450_addcache(struct matrox_pll_cache* ci, unsigned int mnp_key, unsigned int mnp_value) {
 if (++ci->valid > ARRAY_SIZE(ci->data)) {
  ci->valid = ARRAY_SIZE(ci->data);
 }
 memmove(ci->data + 1, ci->data, (ci->valid - 1) * sizeof(*ci->data));
 ci->data[0].mnp_key = mnp_key & G450_MNP_FREQBITS;
 ci->data[0].mnp_value = mnp_value;
}
