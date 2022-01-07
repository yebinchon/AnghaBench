
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct afs_net {int dummy; } ;


 int EINVAL ;
 int _debug (char*,char*) ;
 int _leave (char*,int) ;
 int afs_cell_init (struct afs_net*,char*) ;
 struct afs_net* afs_seq2net_single (struct seq_file*) ;
 char* memchr (char*,char,size_t) ;

__attribute__((used)) static int afs_proc_rootcell_write(struct file *file, char *buf, size_t size)
{
 struct seq_file *m = file->private_data;
 struct afs_net *net = afs_seq2net_single(m);
 char *s;
 int ret;

 ret = -EINVAL;
 if (buf[0] == '.')
  goto out;
 if (memchr(buf, '/', size))
  goto out;


 s = memchr(buf, '\n', size);
 if (s)
  *s = 0;


 _debug("rootcell=%s", buf);

 ret = afs_cell_init(net, buf);

out:
 _leave(" = %d", ret);
 return ret;
}
