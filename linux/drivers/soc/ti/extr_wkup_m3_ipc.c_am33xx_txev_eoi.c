
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wkup_m3_ipc {scalar_t__ ipc_mem_base; } ;


 scalar_t__ AM33XX_CONTROL_M3_TXEV_EOI ;
 int AM33XX_M3_TXEV_ACK ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static void am33xx_txev_eoi(struct wkup_m3_ipc *m3_ipc)
{
 writel(AM33XX_M3_TXEV_ACK,
        m3_ipc->ipc_mem_base + AM33XX_CONTROL_M3_TXEV_EOI);
}
