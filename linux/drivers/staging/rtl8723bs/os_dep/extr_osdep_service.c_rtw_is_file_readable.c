
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isFileReadable (char*) ;

int rtw_is_file_readable(char *path)
{
 if (isFileReadable(path) == 0)
  return 1;
 else
  return 0;
}
