
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc_neh {int kref; } ;


 int kref_put (int *,int ) ;
 int uwb_rc_neh_release ;

void uwb_rc_neh_put(struct uwb_rc_neh *neh)
{
 kref_put(&neh->kref, uwb_rc_neh_release);
}
