
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int TupleDataLen; int TupleData; } ;
typedef TYPE_1__ tuple_t ;
struct TYPE_6__ {int addr; } ;
typedef TYPE_2__ cistpl_longlink_t ;


 int EINVAL ;
 int get_unaligned_le32 (int ) ;

__attribute__((used)) static int parse_longlink(tuple_t *tuple, cistpl_longlink_t *link)
{
 if (tuple->TupleDataLen < 4)
  return -EINVAL;
 link->addr = get_unaligned_le32(tuple->TupleData);
 return 0;
}
