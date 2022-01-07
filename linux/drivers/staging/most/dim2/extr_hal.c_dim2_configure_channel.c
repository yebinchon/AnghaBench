
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u16 ;
struct TYPE_4__ {TYPE_1__* dim2; } ;
struct TYPE_3__ {int ACMR0; } ;


 int AHB_CAT ;
 int MLB_CAT ;
 int bit_mask (scalar_t__) ;
 int dim2_configure_adt (scalar_t__) ;
 int dim2_configure_cat (int ,scalar_t__,scalar_t__,int) ;
 int dim2_configure_cdt (scalar_t__,int ,int ,int ) ;
 TYPE_2__ g ;
 int readl (int *) ;
 int writel (int,int *) ;

__attribute__((used)) static void dim2_configure_channel(
 u8 ch_addr, u8 type, u8 is_tx, u16 dbr_address, u16 hw_buffer_size,
 u16 packet_length)
{
 dim2_configure_cdt(ch_addr, dbr_address, hw_buffer_size, packet_length);
 dim2_configure_cat(MLB_CAT, ch_addr, type, is_tx ? 1 : 0);

 dim2_configure_adt(ch_addr);
 dim2_configure_cat(AHB_CAT, ch_addr, type, is_tx ? 0 : 1);


 writel(readl(&g.dim2->ACMR0) | bit_mask(ch_addr), &g.dim2->ACMR0);
}
