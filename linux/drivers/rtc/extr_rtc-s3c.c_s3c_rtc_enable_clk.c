
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_rtc {int rtc_clk; int rtc_src_clk; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ needs_src_clk; } ;


 int clk_disable (int ) ;
 int clk_enable (int ) ;

__attribute__((used)) static int s3c_rtc_enable_clk(struct s3c_rtc *info)
{
 int ret;

 ret = clk_enable(info->rtc_clk);
 if (ret)
  return ret;

 if (info->data->needs_src_clk) {
  ret = clk_enable(info->rtc_src_clk);
  if (ret) {
   clk_disable(info->rtc_clk);
   return ret;
  }
 }
 return 0;
}
