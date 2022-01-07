
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uart_port {int mapbase; scalar_t__ membase; } ;


 int ZS_CHAN_IO_SIZE ;
 int iounmap (scalar_t__) ;
 int release_mem_region (int ,int ) ;

__attribute__((used)) static void zs_release_port(struct uart_port *uport)
{
 iounmap(uport->membase);
 uport->membase = 0;
 release_mem_region(uport->mapbase, ZS_CHAN_IO_SIZE);
}
