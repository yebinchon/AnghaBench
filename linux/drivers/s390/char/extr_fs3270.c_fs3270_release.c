
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct raw3270_view {int dummy; } ;
struct fs3270 {scalar_t__ fs_pid; } ;


 int SIGHUP ;
 int kill_pid (scalar_t__,int ,int) ;

__attribute__((used)) static void
fs3270_release(struct raw3270_view *view)
{
 struct fs3270 *fp;

 fp = (struct fs3270 *) view;
 if (fp->fs_pid)
  kill_pid(fp->fs_pid, SIGHUP, 1);
}
