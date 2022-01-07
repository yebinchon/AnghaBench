
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afs_cb_interest {int usage; } ;


 int refcount_inc (int *) ;

__attribute__((used)) static inline struct afs_cb_interest *afs_get_cb_interest(struct afs_cb_interest *cbi)
{
 if (cbi)
  refcount_inc(&cbi->usage);
 return cbi;
}
