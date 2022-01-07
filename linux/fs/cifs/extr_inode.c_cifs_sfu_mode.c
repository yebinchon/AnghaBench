
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tcon_link {int dummy; } ;
struct cifs_tcon {TYPE_3__* ses; } ;
struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {int cf_mode; } ;
typedef int ssize_t ;
typedef int __u32 ;
typedef int __le32 ;
struct TYPE_6__ {TYPE_2__* server; } ;
struct TYPE_5__ {TYPE_1__* ops; } ;
struct TYPE_4__ {int (* query_all_EAs ) (unsigned int,struct cifs_tcon*,unsigned char const*,char*,char*,int,struct cifs_sb_info*) ;} ;


 int EOPNOTSUPP ;
 int FYI ;
 scalar_t__ IS_ERR (struct tcon_link*) ;
 int PTR_ERR (struct tcon_link*) ;
 int SFBITS_MASK ;
 int cifs_dbg (int ,char*,int,...) ;
 int cifs_put_tlink (struct tcon_link*) ;
 struct tcon_link* cifs_sb_tlink (struct cifs_sb_info*) ;
 int le32_to_cpu (int ) ;
 int stub1 (unsigned int,struct cifs_tcon*,unsigned char const*,char*,char*,int,struct cifs_sb_info*) ;
 struct cifs_tcon* tlink_tcon (struct tcon_link*) ;

__attribute__((used)) static int cifs_sfu_mode(struct cifs_fattr *fattr, const unsigned char *path,
    struct cifs_sb_info *cifs_sb, unsigned int xid)
{
 return -EOPNOTSUPP;

}
