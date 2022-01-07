
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dvi_ctrl_device {int (* pfnInit ) (unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;} ;


 struct dvi_ctrl_device* g_dcftSupportedDviController ;
 int stub1 (unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char,unsigned char) ;

int dviInit(unsigned char edge_select,
     unsigned char bus_select,
     unsigned char dual_edge_clk_select,
     unsigned char hsync_enable,
     unsigned char vsync_enable,
     unsigned char deskew_enable,
     unsigned char deskew_setting,
     unsigned char continuous_sync_enable,
     unsigned char pll_filter_enable,
     unsigned char pll_filter_value)
{
 struct dvi_ctrl_device *pCurrentDviCtrl;

 pCurrentDviCtrl = g_dcftSupportedDviController;
 if (pCurrentDviCtrl->pfnInit) {
  return pCurrentDviCtrl->pfnInit(edge_select,
      bus_select,
      dual_edge_clk_select,
      hsync_enable,
      vsync_enable,
      deskew_enable,
      deskew_setting,
      continuous_sync_enable,
      pll_filter_enable,
      pll_filter_value);
 }
 return -1;
}
