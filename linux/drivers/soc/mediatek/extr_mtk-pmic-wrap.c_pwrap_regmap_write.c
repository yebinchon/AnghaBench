
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pwrap_write (void*,int ,int ) ;

__attribute__((used)) static int pwrap_regmap_write(void *context, u32 adr, u32 wdata)
{
 return pwrap_write(context, adr, wdata);
}
