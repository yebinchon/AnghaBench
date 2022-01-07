
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hecubafb_par {int dummy; } ;


 int c2io_addr ;
 unsigned char inb (int ) ;

__attribute__((used)) static unsigned char n411_get_ctl(struct hecubafb_par *par)
{
 return inb(c2io_addr);
}
