
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parport {int muxport; } ;


 int cpp_mux (struct parport*,int) ;

__attribute__((used)) static int select_port(struct parport *port)
{
 int muxport = port->muxport;
 return cpp_mux(port, 0x60 + muxport) == muxport;
}
