
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sbd_port {int dummy; } ;


 scalar_t__ SIBYTE_1956_WAR ;
 int __war_sbd1956 (struct sbd_port*) ;
 int __write_sbdchn (struct sbd_port*,int,unsigned int) ;

__attribute__((used)) static void write_sbdchn(struct sbd_port *sport, int reg, unsigned int value)
{
 __write_sbdchn(sport, reg, value);
 if (SIBYTE_1956_WAR)
  __war_sbd1956(sport);
}
