
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u8 ;
struct uniphier_u3hsphy_priv {int dev; } ;
typedef unsigned int nvmem_cell ;


 scalar_t__ IS_ERR (unsigned int*) ;
 int PTR_ERR (unsigned int*) ;
 unsigned int* devm_nvmem_cell_get (int ,char const*) ;
 int kfree (unsigned int*) ;
 unsigned int* nvmem_cell_read (unsigned int*,int *) ;

__attribute__((used)) static int uniphier_u3hsphy_get_nvparam(struct uniphier_u3hsphy_priv *priv,
     const char *name, unsigned int *val)
{
 struct nvmem_cell *cell;
 u8 *buf;

 cell = devm_nvmem_cell_get(priv->dev, name);
 if (IS_ERR(cell))
  return PTR_ERR(cell);

 buf = nvmem_cell_read(cell, ((void*)0));
 if (IS_ERR(buf))
  return PTR_ERR(buf);

 *val = *buf;

 kfree(buf);

 return 0;
}
