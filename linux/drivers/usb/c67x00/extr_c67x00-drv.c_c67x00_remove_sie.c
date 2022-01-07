
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c67x00_sie {int mode; } ;



 int c67x00_hcd_remove (struct c67x00_sie*) ;

__attribute__((used)) static void c67x00_remove_sie(struct c67x00_sie *sie)
{
 switch (sie->mode) {
 case 128:
  c67x00_hcd_remove(sie);
  break;

 default:
  break;
 }
}
