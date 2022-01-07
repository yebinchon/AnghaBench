
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cppi_descriptor {struct cppi_descriptor* next; } ;
struct cppi_channel {struct cppi_descriptor* head; struct cppi_descriptor* last_processed; } ;


 int cppi_dump_rx (int,struct cppi_channel*,char const*) ;
 int cppi_dump_rxbd (char*,struct cppi_descriptor*) ;

__attribute__((used)) static void cppi_dump_rxq(int level, const char *tag, struct cppi_channel *rx)
{
 struct cppi_descriptor *bd;

 cppi_dump_rx(level, rx, tag);
 if (rx->last_processed)
  cppi_dump_rxbd("last", rx->last_processed);
 for (bd = rx->head; bd; bd = bd->next)
  cppi_dump_rxbd("active", bd);
}
