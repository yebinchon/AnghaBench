
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct bcm63xx_pcmcia_socket {scalar_t__ base; } ;


 int bcm_writel (scalar_t__,scalar_t__) ;

__attribute__((used)) static inline void pcmcia_writel(struct bcm63xx_pcmcia_socket *skt,
     u32 val, u32 off)
{
 bcm_writel(val, skt->base + off);
}
