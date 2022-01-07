
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct fusb300 {scalar_t__ reg; } ;


 int FUSB300_EPSET1_FIFOENTRY (int ) ;
 int FUSB300_EPSET1_FIFOENTRY_MSK ;
 int FUSB300_FIFO_ENTRY_NUM ;
 scalar_t__ FUSB300_OFFSET_EPSET1 (int ) ;
 int ioread32 (scalar_t__) ;
 int iowrite32 (int ,scalar_t__) ;

__attribute__((used)) static void fusb300_set_fifo_entry(struct fusb300 *fusb300,
       u32 ep)
{
 u32 val = ioread32(fusb300->reg + FUSB300_OFFSET_EPSET1(ep));

 val &= ~FUSB300_EPSET1_FIFOENTRY_MSK;
 val |= FUSB300_EPSET1_FIFOENTRY(FUSB300_FIFO_ENTRY_NUM);
 iowrite32(val, fusb300->reg + FUSB300_OFFSET_EPSET1(ep));
}
