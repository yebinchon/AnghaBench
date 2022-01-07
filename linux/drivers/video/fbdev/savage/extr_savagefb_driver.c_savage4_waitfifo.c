
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct savagefb_par {int dummy; } ;


 int MAXFIFO ;
 int savage_in32 (int,struct savagefb_par*) ;

__attribute__((used)) static void
savage4_waitfifo(struct savagefb_par *par, int space)
{
 int slots = MAXFIFO - space;

 while ((savage_in32(0x48C60, par) & 0x001fffff) > slots);
}
