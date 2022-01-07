
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cifs_tcon {int dummy; } ;
struct cifs_fid {int netfid; } ;
typedef int FILE_ALL_INFO ;


 int CIFSSMBQFileInfo (unsigned int const,struct cifs_tcon*,int ,int *) ;

__attribute__((used)) static int
cifs_query_file_info(const unsigned int xid, struct cifs_tcon *tcon,
       struct cifs_fid *fid, FILE_ALL_INFO *data)
{
 return CIFSSMBQFileInfo(xid, tcon, fid->netfid, data);
}
