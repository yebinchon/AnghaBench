
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct cifs_sb_info {int dummy; } ;
struct cifs_fattr {void* cf_eof; void* cf_bytes; int cf_cifsattrs; void* cf_mtime; void* cf_ctime; void* cf_atime; } ;
struct TYPE_9__ {TYPE_2__* ses; } ;
struct TYPE_8__ {int DataSize; int AllocationSize; int Attributes; int LastWriteTime; int LastWriteDate; int LastAccessTime; int LastAccessDate; } ;
struct TYPE_7__ {TYPE_1__* server; } ;
struct TYPE_6__ {int timeAdj; } ;
typedef TYPE_3__ FIND_FILE_STANDARD_INFO ;


 int cifs_fill_common_info (struct cifs_fattr*,struct cifs_sb_info*) ;
 TYPE_5__* cifs_sb_master_tcon (struct cifs_sb_info*) ;
 void* cnvrtDosUnixTm (int ,int ,int) ;
 int le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int memset (struct cifs_fattr*,int ,int) ;

__attribute__((used)) static void
cifs_std_info_to_fattr(struct cifs_fattr *fattr, FIND_FILE_STANDARD_INFO *info,
         struct cifs_sb_info *cifs_sb)
{
 int offset = cifs_sb_master_tcon(cifs_sb)->ses->server->timeAdj;

 memset(fattr, 0, sizeof(*fattr));
 fattr->cf_atime = cnvrtDosUnixTm(info->LastAccessDate,
         info->LastAccessTime, offset);
 fattr->cf_ctime = cnvrtDosUnixTm(info->LastWriteDate,
         info->LastWriteTime, offset);
 fattr->cf_mtime = cnvrtDosUnixTm(info->LastWriteDate,
         info->LastWriteTime, offset);

 fattr->cf_cifsattrs = le16_to_cpu(info->Attributes);
 fattr->cf_bytes = le32_to_cpu(info->AllocationSize);
 fattr->cf_eof = le32_to_cpu(info->DataSize);

 cifs_fill_common_info(fattr, cifs_sb);
}
