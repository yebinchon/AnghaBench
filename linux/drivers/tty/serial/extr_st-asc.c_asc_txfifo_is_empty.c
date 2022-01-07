
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct uart_port {int dummy; } ;


 int ASC_STA ;
 int ASC_STA_TE ;
 int asc_in (struct uart_port*,int ) ;

__attribute__((used)) static inline u32 asc_txfifo_is_empty(struct uart_port *port)
{
 return asc_in(port, ASC_STA) & ASC_STA_TE;
}
