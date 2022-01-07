
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int loff_t ;


 int FYI ;
 int cifs_dbg (int ,char*,struct file*,int) ;

__attribute__((used)) static int cifs_dir_fsync(struct file *file, loff_t start, loff_t end, int datasync)
{
 cifs_dbg(FYI, "Sync directory - name: %pD datasync: 0x%x\n",
   file, datasync);

 return 0;
}
