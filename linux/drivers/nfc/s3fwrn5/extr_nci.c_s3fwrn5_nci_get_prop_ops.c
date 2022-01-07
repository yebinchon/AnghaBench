
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nci_driver_ops {int dummy; } ;


 size_t ARRAY_SIZE (struct nci_driver_ops*) ;
 struct nci_driver_ops* s3fwrn5_nci_prop_ops ;

void s3fwrn5_nci_get_prop_ops(struct nci_driver_ops **ops, size_t *n)
{
 *ops = s3fwrn5_nci_prop_ops;
 *n = ARRAY_SIZE(s3fwrn5_nci_prop_ops);
}
