
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int TupleDataLen; scalar_t__ TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct TYPE_6__ {void* card; void* manf; } ;
typedef TYPE_2__ cistpl_manfid_t ;


 int EINVAL ;
 void* get_unaligned_le16 (scalar_t__) ;

__attribute__((used)) static int parse_manfid(tuple_t *tuple, cistpl_manfid_t *m)
{
 if (tuple->TupleDataLen < 4)
  return -EINVAL;
 m->manf = get_unaligned_le16(tuple->TupleData);
 m->card = get_unaligned_le16(tuple->TupleData + 2);
 return 0;
}
