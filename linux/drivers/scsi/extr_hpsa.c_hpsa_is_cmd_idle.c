
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct CommandList {scalar_t__ scsi_cmd; } ;


 scalar_t__ SCSI_CMD_IDLE ;

__attribute__((used)) static inline bool hpsa_is_cmd_idle(struct CommandList *c)
{
 return c->scsi_cmd == SCSI_CMD_IDLE;
}
