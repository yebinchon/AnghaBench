
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;


 int ql_free_irq (struct ql_adapter*) ;
 int ql_free_mem_resources (struct ql_adapter*) ;

__attribute__((used)) static void ql_release_adapter_resources(struct ql_adapter *qdev)
{
 ql_free_mem_resources(qdev);
 ql_free_irq(qdev);
}
