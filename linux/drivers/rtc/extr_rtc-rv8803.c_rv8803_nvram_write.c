
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RV8803_RAM ;
 int rv8803_write_reg (void*,int ,int ) ;

__attribute__((used)) static int rv8803_nvram_write(void *priv, unsigned int offset, void *val,
         size_t bytes)
{
 int ret;

 ret = rv8803_write_reg(priv, RV8803_RAM, *(u8 *)val);
 if (ret)
  return ret;

 return 0;
}
