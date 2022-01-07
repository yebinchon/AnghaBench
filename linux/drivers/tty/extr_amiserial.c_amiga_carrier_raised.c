
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty_port {int dummy; } ;
struct TYPE_2__ {int pra; } ;


 int SER_DCD ;
 TYPE_1__ ciab ;

__attribute__((used)) static int amiga_carrier_raised(struct tty_port *port)
{
 return !(ciab.pra & SER_DCD);
}
