
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql4_chap_table {int flags; } ;


 int BIDI_CHAP ;
 int BIT_7 ;
 int LOCAL_CHAP ;

__attribute__((used)) static inline int qla4xxx_get_chap_type(struct ql4_chap_table *chap_entry)
{
 int type;

 if (chap_entry->flags & BIT_7)
  type = LOCAL_CHAP;
 else
  type = BIDI_CHAP;

 return type;
}
