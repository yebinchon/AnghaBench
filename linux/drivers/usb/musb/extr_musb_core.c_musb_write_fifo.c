
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct musb_hw_ep {TYPE_2__* musb; } ;
struct TYPE_3__ {void (* write_fifo ) (struct musb_hw_ep*,int ,int const*) ;} ;
struct TYPE_4__ {TYPE_1__ io; } ;


 void stub1 (struct musb_hw_ep*,int ,int const*) ;

void musb_write_fifo(struct musb_hw_ep *hw_ep, u16 len, const u8 *src)
{
 return hw_ep->musb->io.write_fifo(hw_ep, len, src);
}
