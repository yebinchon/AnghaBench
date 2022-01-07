
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_4__ {int base_addr; } ;
struct TYPE_5__ {TYPE_1__ cyy; } ;
struct cyclades_port {TYPE_3__* card; TYPE_2__ u; } ;
struct TYPE_6__ {int bus_index; } ;


 int __cyy_issue_cmd (int ,int ,int ) ;

__attribute__((used)) static inline int cyy_issue_cmd(struct cyclades_port *port, u8 cmd)
{
 return __cyy_issue_cmd(port->u.cyy.base_addr, cmd,
   port->card->bus_index);
}
