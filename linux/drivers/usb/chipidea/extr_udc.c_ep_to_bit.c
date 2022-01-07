
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ci_hdrc {int hw_ep_max; } ;



__attribute__((used)) static inline int ep_to_bit(struct ci_hdrc *ci, int n)
{
 int fill = 16 - ci->hw_ep_max / 2;

 if (n >= ci->hw_ep_max / 2)
  n += fill;

 return n;
}
