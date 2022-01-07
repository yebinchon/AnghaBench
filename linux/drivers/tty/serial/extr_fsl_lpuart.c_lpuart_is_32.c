
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ iotype; } ;
struct lpuart_port {TYPE_1__ port; } ;


 scalar_t__ UPIO_MEM32 ;
 scalar_t__ UPIO_MEM32BE ;

__attribute__((used)) static bool lpuart_is_32(struct lpuart_port *sport)
{
 return sport->port.iotype == UPIO_MEM32 ||
        sport->port.iotype == UPIO_MEM32BE;
}
