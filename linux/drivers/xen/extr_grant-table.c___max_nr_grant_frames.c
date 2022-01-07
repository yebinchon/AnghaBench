
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gnttab_query_size {scalar_t__ status; unsigned int max_nr_frames; int dom; } ;


 int DOMID_SELF ;
 scalar_t__ GNTST_okay ;
 int GNTTABOP_query_size ;
 int HYPERVISOR_grant_table_op (int ,struct gnttab_query_size*,int) ;

__attribute__((used)) static unsigned int __max_nr_grant_frames(void)
{
 struct gnttab_query_size query;
 int rc;

 query.dom = DOMID_SELF;

 rc = HYPERVISOR_grant_table_op(GNTTABOP_query_size, &query, 1);
 if ((rc < 0) || (query.status != GNTST_okay))
  return 4;

 return query.max_nr_frames;
}
