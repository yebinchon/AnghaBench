
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fdomain {TYPE_1__* cur_cmd; scalar_t__ base; } ;
struct TYPE_2__ {int result; int (* scsi_done ) (TYPE_1__*) ;} ;


 scalar_t__ REG_ICTL ;
 int fdomain_make_bus_idle (struct fdomain*) ;
 int outb (int ,scalar_t__) ;
 int stub1 (TYPE_1__*) ;

__attribute__((used)) static void fdomain_finish_cmd(struct fdomain *fd, int result)
{
 outb(0, fd->base + REG_ICTL);
 fdomain_make_bus_idle(fd);
 fd->cur_cmd->result = result;
 fd->cur_cmd->scsi_done(fd->cur_cmd);
 fd->cur_cmd = ((void*)0);
}
