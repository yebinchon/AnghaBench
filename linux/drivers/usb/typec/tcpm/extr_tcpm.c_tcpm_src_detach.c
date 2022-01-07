
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcpm_port {int dummy; } ;


 int tcpm_detach (struct tcpm_port*) ;

__attribute__((used)) static void tcpm_src_detach(struct tcpm_port *port)
{
 tcpm_detach(port);
}
