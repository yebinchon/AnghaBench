
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct cifs_tcon {int dummy; } ;
struct cifs_sb_info {int dummy; } ;
struct TYPE_3__ {int IndexNumber; } ;
typedef TYPE_1__ FILE_ALL_INFO ;


 int le64_to_cpu (int ) ;

__attribute__((used)) static int
smb2_get_srv_inum(const unsigned int xid, struct cifs_tcon *tcon,
    struct cifs_sb_info *cifs_sb, const char *full_path,
    u64 *uniqueid, FILE_ALL_INFO *data)
{
 *uniqueid = le64_to_cpu(data->IndexNumber);
 return 0;
}
