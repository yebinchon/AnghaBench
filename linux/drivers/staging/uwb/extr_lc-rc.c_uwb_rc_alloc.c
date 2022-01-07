
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uwb_rc {int dummy; } ;


 int GFP_KERNEL ;
 struct uwb_rc* kzalloc (int,int ) ;
 int uwb_rc_init (struct uwb_rc*) ;

struct uwb_rc *uwb_rc_alloc(void)
{
 struct uwb_rc *rc;
 rc = kzalloc(sizeof(*rc), GFP_KERNEL);
 if (rc == ((void*)0))
  return ((void*)0);
 uwb_rc_init(rc);
 return rc;
}
