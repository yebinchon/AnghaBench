
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct cifs_tcon {int dummy; } ;
typedef int loff_t ;


 long EOPNOTSUPP ;
 int FALLOC_FL_KEEP_SIZE ;
 int FALLOC_FL_PUNCH_HOLE ;
 int FALLOC_FL_ZERO_RANGE ;
 long smb3_punch_hole (struct file*,struct cifs_tcon*,int ,int ) ;
 long smb3_simple_falloc (struct file*,struct cifs_tcon*,int ,int ,int) ;
 long smb3_zero_range (struct file*,struct cifs_tcon*,int ,int ,int) ;

__attribute__((used)) static long smb3_fallocate(struct file *file, struct cifs_tcon *tcon, int mode,
      loff_t off, loff_t len)
{

 if (mode & FALLOC_FL_PUNCH_HOLE)
  return smb3_punch_hole(file, tcon, off, len);
 else if (mode & FALLOC_FL_ZERO_RANGE) {
  if (mode & FALLOC_FL_KEEP_SIZE)
   return smb3_zero_range(file, tcon, off, len, 1);
  return smb3_zero_range(file, tcon, off, len, 0);
 } else if (mode == FALLOC_FL_KEEP_SIZE)
  return smb3_simple_falloc(file, tcon, off, len, 1);
 else if (mode == 0)
  return smb3_simple_falloc(file, tcon, off, len, 0);

 return -EOPNOTSUPP;
}
