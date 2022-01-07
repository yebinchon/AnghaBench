
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;



__attribute__((used)) static void cdns3_ep_inc_trb(int *index, u8 *cs, int trb_in_seg)
{
 (*index)++;
 if (*index == (trb_in_seg - 1)) {
  *index = 0;
  *cs ^= 1;
 }
}
