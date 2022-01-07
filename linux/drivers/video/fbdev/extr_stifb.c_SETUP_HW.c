
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stifb_info {int dummy; } ;


 char READ_BYTE (struct stifb_info*,int ) ;
 int REG_15b0 ;

__attribute__((used)) static void
SETUP_HW(struct stifb_info *fb)
{
 char stat;

 do {
  stat = READ_BYTE(fb, REG_15b0);
  if (!stat)
       stat = READ_BYTE(fb, REG_15b0);
 } while (stat);
}
