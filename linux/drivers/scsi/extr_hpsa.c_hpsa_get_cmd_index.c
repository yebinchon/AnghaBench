
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct scsi_cmnd {TYPE_1__* request; } ;
struct TYPE_2__ {int tag; } ;


 int HPSA_NRESERVED_CMDS ;

__attribute__((used)) static int hpsa_get_cmd_index(struct scsi_cmnd *scmd)
{
 int idx = scmd->request->tag;

 if (idx < 0)
  return idx;


 return idx += HPSA_NRESERVED_CMDS;
}
