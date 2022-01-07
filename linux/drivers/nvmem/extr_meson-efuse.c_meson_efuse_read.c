
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SM_EFUSE_READ ;
 int meson_sm_call_read (int *,size_t,int ,unsigned int,size_t,int ,int ,int ) ;

__attribute__((used)) static int meson_efuse_read(void *context, unsigned int offset,
       void *val, size_t bytes)
{
 return meson_sm_call_read((u8 *)val, bytes, SM_EFUSE_READ, offset,
      bytes, 0, 0, 0);
}
