
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct bq27xxx_dm_reg {scalar_t__ subclass_id; int offset; } ;
struct bq27xxx_dm_buf {scalar_t__ class; int block; scalar_t__ data; } ;


 int BQ27XXX_DM_SZ ;

__attribute__((used)) static inline u16 *bq27xxx_dm_reg_ptr(struct bq27xxx_dm_buf *buf,
          struct bq27xxx_dm_reg *reg)
{
 if (buf->class == reg->subclass_id &&
     buf->block == reg->offset / BQ27XXX_DM_SZ)
  return (u16 *) (buf->data + reg->offset % BQ27XXX_DM_SZ);

 return ((void*)0);
}
