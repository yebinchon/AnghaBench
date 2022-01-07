
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct nubus_dirent {int mask; } ;
typedef int buf ;


 unsigned int ARRAY_SIZE (unsigned long*) ;
 unsigned char* nubus_dirptr (struct nubus_dirent const*) ;
 unsigned long nubus_get_rom (unsigned char**,int,int ) ;
 int seq_putc (struct seq_file*,unsigned long) ;
 int seq_write (struct seq_file*,unsigned long*,unsigned int) ;

void nubus_seq_write_rsrc_mem(struct seq_file *m,
         const struct nubus_dirent *dirent,
         unsigned int len)
{
 unsigned long buf[32];
 unsigned int buf_size = sizeof(buf);
 unsigned char *p = nubus_dirptr(dirent);


 while (len >= buf_size) {
  unsigned int i;

  for (i = 0; i < ARRAY_SIZE(buf); i++)
   buf[i] = nubus_get_rom(&p, sizeof(buf[0]),
            dirent->mask);
  seq_write(m, buf, buf_size);
  len -= buf_size;
 }

 while (len--)
  seq_putc(m, nubus_get_rom(&p, 1, dirent->mask));
}
