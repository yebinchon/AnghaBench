
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIV_ROUND_UP (unsigned long,int ) ;
 int PAGE_SIZE ;

__attribute__((used)) static unsigned long rbio_nr_pages(unsigned long stripe_len, int nr_stripes)
{
 return DIV_ROUND_UP(stripe_len, PAGE_SIZE) * nr_stripes;
}
