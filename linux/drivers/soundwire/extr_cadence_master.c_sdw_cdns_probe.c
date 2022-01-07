
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * port_ops; } ;
struct sdw_cdns {TYPE_1__ bus; int tx_complete; } ;


 int cdns_port_ops ;
 int init_completion (int *) ;

int sdw_cdns_probe(struct sdw_cdns *cdns)
{
 init_completion(&cdns->tx_complete);
 cdns->bus.port_ops = &cdns_port_ops;

 return 0;
}
