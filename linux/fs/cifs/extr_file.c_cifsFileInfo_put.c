
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifsFileInfo {int dummy; } ;


 int _cifsFileInfo_put (struct cifsFileInfo*,int) ;

void cifsFileInfo_put(struct cifsFileInfo *cifs_file)
{
 _cifsFileInfo_put(cifs_file, 1);
}
