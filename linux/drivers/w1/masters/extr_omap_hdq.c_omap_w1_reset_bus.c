
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int omap_hdq_break (void*) ;
 int omap_hdq_get (void*) ;
 int omap_hdq_put (void*) ;

__attribute__((used)) static u8 omap_w1_reset_bus(void *_hdq)
{
 omap_hdq_get(_hdq);
 omap_hdq_break(_hdq);
 omap_hdq_put(_hdq);
 return 0;
}
