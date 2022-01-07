
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zs_port {int dummy; } ;


 int R0 ;
 int Rx_CH_AV ;
 int read_zsdata (struct zs_port*) ;
 int read_zsreg (struct zs_port*,int ) ;

__attribute__((used)) static int zs_receive_drain(struct zs_port *zport)
{
 int loops = 10000;

 while ((read_zsreg(zport, R0) & Rx_CH_AV) && --loops)
  read_zsdata(zport);
 return loops;
}
