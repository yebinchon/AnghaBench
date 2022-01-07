
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int nfc_credits; } ;
struct tb_port {TYPE_1__ config; } ;


 int TB_PORT_MAX_CREDITS_MASK ;
 int TB_PORT_MAX_CREDITS_SHIFT ;
 int min (int,unsigned int) ;

__attribute__((used)) static u32 tb_dma_credits(struct tb_port *nhi)
{
 u32 max_credits;

 max_credits = (nhi->config.nfc_credits & TB_PORT_MAX_CREDITS_MASK) >>
  TB_PORT_MAX_CREDITS_SHIFT;
 return min(max_credits, 13U);
}
