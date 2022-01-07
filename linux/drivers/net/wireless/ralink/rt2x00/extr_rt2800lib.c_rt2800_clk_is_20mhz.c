
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt2x00_dev {int clk; } ;


 int clk_get_rate (int ) ;

__attribute__((used)) static inline bool rt2800_clk_is_20mhz(struct rt2x00_dev *rt2x00dev)
{
 return clk_get_rate(rt2x00dev->clk) == 20000000;
}
