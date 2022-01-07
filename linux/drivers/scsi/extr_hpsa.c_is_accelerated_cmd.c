
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandList {scalar_t__ cmd_type; } ;


 scalar_t__ CMD_IOACCEL1 ;
 scalar_t__ CMD_IOACCEL2 ;

__attribute__((used)) static int is_accelerated_cmd(struct CommandList *c)
{
 return c->cmd_type == CMD_IOACCEL1 || c->cmd_type == CMD_IOACCEL2;
}
