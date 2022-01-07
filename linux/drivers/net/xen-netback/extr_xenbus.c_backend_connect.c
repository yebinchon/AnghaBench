
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct backend_info {scalar_t__ vif; } ;


 int connect (struct backend_info*) ;

__attribute__((used)) static void backend_connect(struct backend_info *be)
{
 if (be->vif)
  connect(be);
}
