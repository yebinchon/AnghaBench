
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hdq_data {int hdq_base; } ;


 int readl (int) ;
 int writel (int,int) ;

__attribute__((used)) static void hdq_disable_interrupt(struct hdq_data *hdq_data, u32 offset,
      u32 mask)
{
 u32 ie;

 ie = readl(hdq_data->hdq_base + offset);
 writel(ie & mask, hdq_data->hdq_base + offset);
}
