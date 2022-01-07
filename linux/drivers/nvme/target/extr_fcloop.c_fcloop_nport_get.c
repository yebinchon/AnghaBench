
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_nport {int ref; } ;


 int kref_get_unless_zero (int *) ;

__attribute__((used)) static int
fcloop_nport_get(struct fcloop_nport *nport)
{
 return kref_get_unless_zero(&nport->ref);
}
