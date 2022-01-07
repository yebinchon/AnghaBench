
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* strchr (char*,char) ;

__attribute__((used)) static inline void
convert_delimiter(char *path, char delim)
{
 char old_delim, *pos;

 if (delim == '/')
  old_delim = '\\';
 else
  old_delim = '/';

 pos = path;
 while ((pos = strchr(pos, old_delim)))
  *pos = delim;
}
