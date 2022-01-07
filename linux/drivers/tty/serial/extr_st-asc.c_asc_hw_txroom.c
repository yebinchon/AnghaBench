
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int fifosize; } ;


 int ASC_STA ;
 int ASC_STA_TF ;
 int ASC_STA_THE ;
 int asc_in (struct uart_port*,int ) ;

__attribute__((used)) static inline unsigned asc_hw_txroom(struct uart_port *port)
{
 u32 status = asc_in(port, ASC_STA);

 if (status & ASC_STA_THE)
  return port->fifosize / 2;
 else if (!(status & ASC_STA_TF))
  return 1;

 return 0;
}
