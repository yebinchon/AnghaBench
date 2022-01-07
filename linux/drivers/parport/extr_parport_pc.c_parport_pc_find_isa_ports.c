
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ parport_pc_probe_port (int,int,int,int,int *,int ) ;

__attribute__((used)) static int __attribute__((unused))
parport_pc_find_isa_ports(int autoirq, int autodma)
{
 int count = 0;

 if (parport_pc_probe_port(0x3bc, 0x7bc, autoirq, autodma, ((void*)0), 0))
  count++;
 if (parport_pc_probe_port(0x378, 0x778, autoirq, autodma, ((void*)0), 0))
  count++;
 if (parport_pc_probe_port(0x278, 0x678, autoirq, autodma, ((void*)0), 0))
  count++;

 return count;
}
