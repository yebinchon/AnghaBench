
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int BUG () ;
 int DSI_GNQ ;
 int FEAT_DSI_GNQ ;
 int REG_GET (struct platform_device*,int ,int,int) ;
 int dss_has_feature (int ) ;

__attribute__((used)) static unsigned dsi_get_line_buf_size(struct platform_device *dsidev)
{
 int val;





 if (!dss_has_feature(FEAT_DSI_GNQ))
  return 1023 * 3;

 val = REG_GET(dsidev, DSI_GNQ, 14, 12);

 switch (val) {
 case 1:
  return 512 * 3;
 case 2:
  return 682 * 3;
 case 3:
  return 853 * 3;
 case 4:
  return 1024 * 3;
 case 5:
  return 1194 * 3;
 case 6:
  return 1365 * 3;
 case 7:
  return 1920 * 3;
 default:
  BUG();
  return 0;
 }
}
