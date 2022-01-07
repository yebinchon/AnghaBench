
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ceph_dir_file_info {char* last_name; unsigned int next_offset; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int dout (char*,char*) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int memcpy (char*,char const*,int) ;

__attribute__((used)) static int note_last_dentry(struct ceph_dir_file_info *dfi, const char *name,
              int len, unsigned next_offset)
{
 char *buf = kmalloc(len+1, GFP_KERNEL);
 if (!buf)
  return -ENOMEM;
 kfree(dfi->last_name);
 dfi->last_name = buf;
 memcpy(dfi->last_name, name, len);
 dfi->last_name[len] = 0;
 dfi->next_offset = next_offset;
 dout("note_last_dentry '%s'\n", dfi->last_name);
 return 0;
}
