
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c_rtc {int rtc_clk; int rtc_src_clk; TYPE_1__* data; } ;
struct TYPE_2__ {scalar_t__ needs_src_clk; } ;


 int clk_disable (int ) ;

__attribute__((used)) static void s3c_rtc_disable_clk(struct s3c_rtc *info)
{
 if (info->data->needs_src_clk)
  clk_disable(info->rtc_src_clk);
 clk_disable(info->rtc_clk);
}
