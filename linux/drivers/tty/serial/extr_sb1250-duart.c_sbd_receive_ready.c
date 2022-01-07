
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbd_port {int dummy; } ;


 int M_DUART_RX_RDY ;
 int R_DUART_STATUS ;
 int read_sbdchn (struct sbd_port*,int ) ;

__attribute__((used)) static int sbd_receive_ready(struct sbd_port *sport)
{
 return read_sbdchn(sport, R_DUART_STATUS) & M_DUART_RX_RDY;
}
