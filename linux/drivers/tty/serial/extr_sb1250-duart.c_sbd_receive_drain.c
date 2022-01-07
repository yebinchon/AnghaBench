
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbd_port {int dummy; } ;


 int R_DUART_RX_HOLD ;
 int read_sbdchn (struct sbd_port*,int ) ;
 scalar_t__ sbd_receive_ready (struct sbd_port*) ;

__attribute__((used)) static int sbd_receive_drain(struct sbd_port *sport)
{
 int loops = 10000;

 while (sbd_receive_ready(sport) && --loops)
  read_sbdchn(sport, R_DUART_RX_HOLD);
 return loops;
}
