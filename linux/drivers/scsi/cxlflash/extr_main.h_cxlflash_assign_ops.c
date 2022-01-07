
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_dependent_vals {int flags; } ;
struct cxlflash_backend_ops {int dummy; } ;


 int CXLFLASH_OCXL_DEV ;
 struct cxlflash_backend_ops cxlflash_cxl_ops ;
 struct cxlflash_backend_ops cxlflash_ocxl_ops ;

__attribute__((used)) static inline const struct cxlflash_backend_ops *
cxlflash_assign_ops(struct dev_dependent_vals *ddv)
{
 const struct cxlflash_backend_ops *ops = ((void*)0);
 return ops;
}
