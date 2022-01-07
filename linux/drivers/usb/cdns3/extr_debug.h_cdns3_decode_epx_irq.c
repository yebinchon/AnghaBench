
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 char* cdns3_decode_ep_irq (char*,int ,char*) ;

__attribute__((used)) static inline char *cdns3_decode_epx_irq(char *str,
      char *ep_name,
      u32 ep_sts)
{
 return cdns3_decode_ep_irq(str, ep_sts, ep_name);
}
