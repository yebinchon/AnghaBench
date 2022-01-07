
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;

__attribute__((used)) static inline unsigned int order_to_size(int order)
{
 return PAGE_SIZE << order;
}
