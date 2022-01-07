
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;


 int UDC_EP_NUM ;
 int UDC_EP_SEL ;
 int omap_readw (int ) ;
 int omap_writew (int ,int ) ;

__attribute__((used)) static inline void deselect_ep(void)
{
 u16 w;

 w = omap_readw(UDC_EP_NUM);
 w &= ~UDC_EP_SEL;
 omap_writew(w, UDC_EP_NUM);

}
