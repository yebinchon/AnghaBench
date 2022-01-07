
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int SM_EFUSE_WRITE ;
 int meson_sm_call_write (int *,size_t,int ,unsigned int,size_t,int ,int ,int ) ;

__attribute__((used)) static int meson_efuse_write(void *context, unsigned int offset,
        void *val, size_t bytes)
{
 return meson_sm_call_write((u8 *)val, bytes, SM_EFUSE_WRITE, offset,
       bytes, 0, 0, 0);
}
