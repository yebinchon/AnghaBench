
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vc_data {int dummy; } ;


 int mda_addr (int,int) ;
 int mda_convert_attr (int) ;
 int scr_writew (int ,int ) ;

__attribute__((used)) static void mdacon_putc(struct vc_data *c, int ch, int y, int x)
{
 scr_writew(mda_convert_attr(ch), mda_addr(x, y));
}
