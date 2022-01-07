
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SBC8360_BASETIME ;
 int outb (int ,int ) ;
 int wd_margin ;

__attribute__((used)) static void sbc8360_ping(void)
{

 outb(wd_margin, SBC8360_BASETIME);
}
