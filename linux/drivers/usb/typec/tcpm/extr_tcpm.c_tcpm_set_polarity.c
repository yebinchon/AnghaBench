
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tcpm_port {int polarity; TYPE_1__* tcpc; } ;
typedef enum typec_cc_polarity { ____Placeholder_typec_cc_polarity } typec_cc_polarity ;
struct TYPE_2__ {int (* set_polarity ) (TYPE_1__*,int) ;} ;


 int stub1 (TYPE_1__*,int) ;
 int tcpm_log (struct tcpm_port*,char*,int) ;

__attribute__((used)) static int tcpm_set_polarity(struct tcpm_port *port,
        enum typec_cc_polarity polarity)
{
 int ret;

 tcpm_log(port, "polarity %d", polarity);

 ret = port->tcpc->set_polarity(port->tcpc, polarity);
 if (ret < 0)
  return ret;

 port->polarity = polarity;

 return 0;
}
