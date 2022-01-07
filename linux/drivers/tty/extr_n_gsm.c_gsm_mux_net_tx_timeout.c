
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tx_errors; } ;
struct net_device {TYPE_1__ stats; int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static void gsm_mux_net_tx_timeout(struct net_device *net)
{

 dev_dbg(&net->dev, "Tx timed out.\n");


 net->stats.tx_errors++;
}
