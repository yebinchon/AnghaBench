
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UMH_WAIT_PROC ;
 int call_usermodehelper (char*,char**,char**,int ) ;
 char* v86d_path ;

__attribute__((used)) static int uvesafb_helper_start(void)
{
 char *envp[] = {
  "HOME=/",
  "PATH=/sbin:/bin",
  ((void*)0),
 };

 char *argv[] = {
  v86d_path,
  ((void*)0),
 };

 return call_usermodehelper(v86d_path, argv, envp, UMH_WAIT_PROC);
}
