
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iss_device {int iss_fck; int iss_ctrlclk; } ;


 int clk_disable (int ) ;

__attribute__((used)) static void iss_disable_clocks(struct iss_device *iss)
{
 clk_disable(iss->iss_ctrlclk);
 clk_disable(iss->iss_fck);
}
