
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int DSI_VC_CTRL (int) ;
 int REG_GET (struct platform_device*,int ,int ,int ) ;

__attribute__((used)) static bool dsi_vc_is_enabled(struct platform_device *dsidev, int channel)
{
 return REG_GET(dsidev, DSI_VC_CTRL(channel), 0, 0);
}
