
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;


 int RV8803_RAM ;
 int rv8803_read_reg (void*,int ) ;

__attribute__((used)) static int rv8803_nvram_read(void *priv, unsigned int offset,
        void *val, size_t bytes)
{
 int ret;

 ret = rv8803_read_reg(priv, RV8803_RAM);
 if (ret < 0)
  return ret;

 *(u8 *)val = ret;

 return 0;
}
