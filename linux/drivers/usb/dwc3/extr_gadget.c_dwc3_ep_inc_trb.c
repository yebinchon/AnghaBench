
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int DWC3_TRB_NUM ;

__attribute__((used)) static void dwc3_ep_inc_trb(u8 *index)
{
 (*index)++;
 if (*index == (DWC3_TRB_NUM - 1))
  *index = 0;
}
