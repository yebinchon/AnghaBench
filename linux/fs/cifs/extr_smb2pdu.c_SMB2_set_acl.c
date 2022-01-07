
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct cifs_tcon {int dummy; } ;
struct cifs_ntsd {int dummy; } ;
struct TYPE_2__ {int tgid; } ;


 int SMB2_O_INFO_SECURITY ;
 TYPE_1__* current ;
 int send_set_info (unsigned int const,struct cifs_tcon*,int ,int ,int ,int ,int ,int,int,void**,int*) ;

int
SMB2_set_acl(const unsigned int xid, struct cifs_tcon *tcon,
  u64 persistent_fid, u64 volatile_fid,
  struct cifs_ntsd *pnntsd, int pacllen, int aclflag)
{
 return send_set_info(xid, tcon, persistent_fid, volatile_fid,
   current->tgid, 0, SMB2_O_INFO_SECURITY, aclflag,
   1, (void **)&pnntsd, &pacllen);
}
