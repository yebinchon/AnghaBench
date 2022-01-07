
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RIO_MAX_MPORTS ;
 int* hdid ;
 int ids_num ;

__attribute__((used)) static int rio_get_hdid(int index)
{
 if (ids_num == 0 || ids_num <= index || index >= RIO_MAX_MPORTS)
  return -1;

 return hdid[index];
}
