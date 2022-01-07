
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct s3c2410fb_info {unsigned long clk_rate; } ;


 int do_div (unsigned long long,int) ;
 int dprintk (char*,unsigned long,long) ;

__attribute__((used)) static unsigned int s3c2410fb_calc_pixclk(struct s3c2410fb_info *fbi,
       unsigned long pixclk)
{
 unsigned long clk = fbi->clk_rate;
 unsigned long long div;






 div = (unsigned long long)clk * pixclk;
 div >>= 12;
 do_div(div, 625 * 625UL * 625);

 dprintk("pixclk %ld, divisor is %ld\n", pixclk, (long)div);
 return div;
}
