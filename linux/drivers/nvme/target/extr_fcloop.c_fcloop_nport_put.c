
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fcloop_nport {int ref; } ;


 int fcloop_nport_free ;
 int kref_put (int *,int ) ;

__attribute__((used)) static void
fcloop_nport_put(struct fcloop_nport *nport)
{
 kref_put(&nport->ref, fcloop_nport_free);
}
