
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pic32_sport {int clk; int ref_clk; } ;


 int clk_disable_unprepare (int ) ;

__attribute__((used)) static inline void pic32_disable_clock(struct pic32_sport *sport)
{
 sport->ref_clk--;
 clk_disable_unprepare(sport->clk);
}
