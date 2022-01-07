
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 int __putname (char*) ;

__attribute__((used)) static inline void ceph_mdsc_free_path(char *path, int len)
{
 if (path)
  __putname(path - (PATH_MAX - 1 - len));
}
