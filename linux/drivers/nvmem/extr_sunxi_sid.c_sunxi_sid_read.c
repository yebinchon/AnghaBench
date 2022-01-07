
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sunxi_sid {scalar_t__ value_offset; scalar_t__ base; } ;


 int memcpy_fromio (void*,scalar_t__,size_t) ;

__attribute__((used)) static int sunxi_sid_read(void *context, unsigned int offset,
     void *val, size_t bytes)
{
 struct sunxi_sid *sid = context;

 memcpy_fromio(val, sid->base + sid->value_offset + offset, bytes);

 return 0;
}
