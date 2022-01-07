
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GTIMEOUT ;
 scalar_t__ TRM_S1040_GEN_STATUS ;
 scalar_t__ TRM_S1040_GEN_TIMER ;
 int inb (scalar_t__) ;
 int outb (int,scalar_t__) ;

__attribute__((used)) static void trms1040_wait_30us(unsigned long io_port)
{

 outb(5, io_port + TRM_S1040_GEN_TIMER);
 while (!(inb(io_port + TRM_S1040_GEN_STATUS) & GTIMEOUT))
                ;
}
