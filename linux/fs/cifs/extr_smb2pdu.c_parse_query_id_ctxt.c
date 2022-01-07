
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smb2_file_all_info {int IndexNumber; } ;
struct create_on_disk_id {int DiskFileId; int VolumeId; } ;
struct create_context {int dummy; } ;


 int FYI ;
 int cifs_dbg (int ,char*,int ,int ) ;

__attribute__((used)) static void
parse_query_id_ctxt(struct create_context *cc, struct smb2_file_all_info *buf)
{
 struct create_on_disk_id *pdisk_id = (struct create_on_disk_id *)cc;

 cifs_dbg(FYI, "parse query id context 0x%llx 0x%llx\n",
  pdisk_id->DiskFileId, pdisk_id->VolumeId);
 buf->IndexNumber = pdisk_id->DiskFileId;
}
