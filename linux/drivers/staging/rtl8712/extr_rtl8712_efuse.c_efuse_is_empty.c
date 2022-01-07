
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct _adapter {int dummy; } ;


 scalar_t__ efuse_one_byte_rw (struct _adapter*,int,int ,int*) ;

__attribute__((used)) static u8 efuse_is_empty(struct _adapter *adapter, u8 *empty)
{
 u8 value, ret = 1;


 if (efuse_one_byte_rw(adapter, 1, 0, &value)) {
  if (value == 0xFF)
   *empty = 1;
  else
   *empty = 0;
 } else {
  ret = 0;
 }
 return ret;
}
