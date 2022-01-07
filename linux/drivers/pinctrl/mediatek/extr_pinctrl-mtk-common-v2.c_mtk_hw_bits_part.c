
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mtk_pin_field {int bitpos; int mask; } ;


 int get_count_order (int ) ;

__attribute__((used)) static void mtk_hw_bits_part(struct mtk_pin_field *pf, int *h, int *l)
{
 *l = 32 - pf->bitpos;
 *h = get_count_order(pf->mask) - *l;
}
