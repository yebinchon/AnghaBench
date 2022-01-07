
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int max_level; } ;
struct asd_sas_port {TYPE_1__ disc; } ;


 int mb () ;
 int sas_ex_level_discovery (struct asd_sas_port*,int) ;

__attribute__((used)) static int sas_ex_bfs_disc(struct asd_sas_port *port)
{
 int res;
 int level;

 do {
  level = port->disc.max_level;
  res = sas_ex_level_discovery(port, level);
  mb();
 } while (level < port->disc.max_level);

 return res;
}
