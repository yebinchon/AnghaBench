
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whc_qset {int dummy; } ;
struct whc {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int asl_qset_insert (struct whc*,struct whc_qset*) ;
 int asl_qset_insert_begin (struct whc*,struct whc_qset*) ;
 struct whc_qset* qset_alloc (struct whc*,int ) ;

int asl_init(struct whc *whc)
{
 struct whc_qset *qset;

 qset = qset_alloc(whc, GFP_KERNEL);
 if (qset == ((void*)0))
  return -ENOMEM;

 asl_qset_insert_begin(whc, qset);
 asl_qset_insert(whc, qset);

 return 0;
}
