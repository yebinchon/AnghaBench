
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_CREATE ;
 int FILE_OPEN ;
 int FILE_OPEN_IF ;
 int FILE_OVERWRITE ;
 int FILE_OVERWRITE_IF ;
 unsigned int O_CREAT ;
 unsigned int O_EXCL ;
 unsigned int O_TRUNC ;

__attribute__((used)) static inline int cifs_get_disposition(unsigned int flags)
{
 if ((flags & (O_CREAT | O_EXCL)) == (O_CREAT | O_EXCL))
  return FILE_CREATE;
 else if ((flags & (O_CREAT | O_TRUNC)) == (O_CREAT | O_TRUNC))
  return FILE_OVERWRITE_IF;
 else if ((flags & O_CREAT) == O_CREAT)
  return FILE_OPEN_IF;
 else if ((flags & O_TRUNC) == O_TRUNC)
  return FILE_OVERWRITE;
 else
  return FILE_OPEN;
}
