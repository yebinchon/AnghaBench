
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape390_kekl {int label; void* type_on_tape; void* type; } ;
struct tape3592_kekl {int flags; int label; } ;


 int EBCASC (int ,int) ;
 void* TAPE390_KEKL_TYPE_HASH ;
 void* TAPE390_KEKL_TYPE_LABEL ;
 int memcpy (int ,int ,int) ;
 int memset (struct tape390_kekl*,int ,int) ;
 int strim (int ) ;

__attribute__((used)) static void int_to_ext_kekl(struct tape3592_kekl *in,
       struct tape390_kekl *out)
{
 memset(out, 0, sizeof(*out));
 if(in->flags & 0x40)
  out->type = TAPE390_KEKL_TYPE_HASH;
 else
  out->type = TAPE390_KEKL_TYPE_LABEL;
 if(in->flags & 0x80)
  out->type_on_tape = TAPE390_KEKL_TYPE_HASH;
 else
  out->type_on_tape = TAPE390_KEKL_TYPE_LABEL;
 memcpy(out->label, in->label, sizeof(in->label));
 EBCASC(out->label, sizeof(in->label));
 strim(out->label);
}
