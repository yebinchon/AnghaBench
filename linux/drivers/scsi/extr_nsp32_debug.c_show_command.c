
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmnd {int cmnd; } ;


 int print_commandk (int ) ;

__attribute__((used)) static void show_command(struct scsi_cmnd *SCpnt)
{
 print_commandk(SCpnt->cmnd);
}
