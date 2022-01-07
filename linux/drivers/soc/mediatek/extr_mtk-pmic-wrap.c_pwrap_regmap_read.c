
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int pwrap_read (void*,int ,int *) ;

__attribute__((used)) static int pwrap_regmap_read(void *context, u32 adr, u32 *rdata)
{
 return pwrap_read(context, adr, rdata);
}
