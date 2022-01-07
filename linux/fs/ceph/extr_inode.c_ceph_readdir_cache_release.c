
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_readdir_cache_control {int * page; } ;


 int kunmap (int *) ;
 int put_page (int *) ;

void ceph_readdir_cache_release(struct ceph_readdir_cache_control *ctl)
{
 if (ctl->page) {
  kunmap(ctl->page);
  put_page(ctl->page);
  ctl->page = ((void*)0);
 }
}
