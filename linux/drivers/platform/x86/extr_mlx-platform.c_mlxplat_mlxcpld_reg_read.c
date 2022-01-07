
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlxplat_mlxcpld_regmap_context {scalar_t__ base; } ;


 unsigned int ioread8 (scalar_t__) ;

__attribute__((used)) static int
mlxplat_mlxcpld_reg_read(void *context, unsigned int reg, unsigned int *val)
{
 struct mlxplat_mlxcpld_regmap_context *ctx = context;

 *val = ioread8(ctx->base + reg);
 return 0;
}
