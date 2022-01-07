
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rceb {int dummy; } ;
struct uwb_rc_neh {int arg; int rc; int (* cb ) (int ,int ,struct uwb_rceb*,size_t) ;} ;


 int stub1 (int ,int ,struct uwb_rceb*,size_t) ;
 int uwb_rc_neh_put (struct uwb_rc_neh*) ;

__attribute__((used)) static void uwb_rc_neh_cb(struct uwb_rc_neh *neh, struct uwb_rceb *rceb, size_t size)
{
 (*neh->cb)(neh->rc, neh->arg, rceb, size);
 uwb_rc_neh_put(neh);
}
