
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bnx2fc_interface {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static inline void bnx2fc_interface_get(struct bnx2fc_interface *interface)
{
 kref_get(&interface->kref);
}
