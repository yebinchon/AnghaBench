
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
struct ins_format3 {int address; } ;
struct TYPE_5__ {struct ins_format3 format3; } ;
struct instruction {TYPE_4__* patch_label; TYPE_1__ format; } ;
typedef int buf ;
struct TYPE_7__ {TYPE_2__* linfo; } ;
struct TYPE_8__ {scalar_t__ type; char* name; TYPE_3__ info; } ;
struct TYPE_6__ {scalar_t__ address; } ;


 int EX_DATAERR ;
 scalar_t__ LABEL ;
 struct instruction* STAILQ_FIRST (int *) ;
 struct instruction* STAILQ_NEXT (struct instruction*,int ) ;
 int links ;
 int seq_program ;
 int snprintf (char*,int,char*,char*) ;
 int stop (char*,int ) ;

__attribute__((used)) static void
back_patch()
{
 struct instruction *cur_instr;

 for (cur_instr = STAILQ_FIRST(&seq_program);
      cur_instr != ((void*)0);
      cur_instr = STAILQ_NEXT(cur_instr, links)) {
  if (cur_instr->patch_label != ((void*)0)) {
   struct ins_format3 *f3_instr;
   u_int address;

   if (cur_instr->patch_label->type != LABEL) {
    char buf[255];

    snprintf(buf, sizeof(buf),
      "Undefined label %s",
      cur_instr->patch_label->name);
    stop(buf, EX_DATAERR);

   }
   f3_instr = &cur_instr->format.format3;
   address = f3_instr->address;
   address += cur_instr->patch_label->info.linfo->address;
   f3_instr->address = address;
  }
 }
}
