
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tape390_kekl {scalar_t__ type; scalar_t__ type_on_tape; int label; } ;
struct tape3592_kekl {int flags; struct tape3592_kekl* label; } ;


 int ASCEBC (struct tape3592_kekl*,int) ;
 scalar_t__ TAPE390_KEKL_TYPE_HASH ;
 int memcpy (struct tape3592_kekl*,int ,int) ;
 int memset (struct tape3592_kekl*,char,int) ;
 int min (int,int ) ;
 int strlen (int ) ;

__attribute__((used)) static void ext_to_int_kekl(struct tape390_kekl *in,
       struct tape3592_kekl *out)
{
 int len;

 memset(out, 0, sizeof(*out));
 if (in->type == TAPE390_KEKL_TYPE_HASH)
  out->flags |= 0x40;
 if (in->type_on_tape == TAPE390_KEKL_TYPE_HASH)
  out->flags |= 0x80;
 len = min(sizeof(out->label), strlen(in->label));
 memcpy(out->label, in->label, len);
 memset(out->label + len, ' ', sizeof(out->label) - len);
 ASCEBC(out->label, sizeof(out->label));
}
