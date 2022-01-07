
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct vf610_ocotp {int clk; } ;


 int BF (int,int ) ;
 int DEF_RELAX ;
 int OCOTP_TIMING_RELAX ;
 int OCOTP_TIMING_STROBE_PROG ;
 int OCOTP_TIMING_STROBE_READ ;
 int clk_get_rate (int ) ;

__attribute__((used)) static int vf610_ocotp_calculate_timing(struct vf610_ocotp *ocotp_dev)
{
 u32 clk_rate;
 u32 relax, strobe_read, strobe_prog;
 u32 timing;

 clk_rate = clk_get_rate(ocotp_dev->clk);


 relax = clk_rate / (1000000000 / DEF_RELAX) - 1;
 strobe_prog = clk_rate / (1000000000 / 10000) + 2 * (DEF_RELAX + 1) - 1;
 strobe_read = clk_rate / (1000000000 / 40) + 2 * (DEF_RELAX + 1) - 1;

 timing = BF(relax, OCOTP_TIMING_RELAX);
 timing |= BF(strobe_read, OCOTP_TIMING_STROBE_READ);
 timing |= BF(strobe_prog, OCOTP_TIMING_STROBE_PROG);

 return timing;
}
