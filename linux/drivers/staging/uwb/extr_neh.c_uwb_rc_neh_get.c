
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {int kref; } ;


 int kref_get (int *) ;

__attribute__((used)) static void uwb_rc_neh_get(struct uwb_rc_neh *neh)
{
 kref_get(&neh->kref);
}
