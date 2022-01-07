
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct smb2_file_all_info {int AlignmentRequirement; int Mode; scalar_t__ CurrentByteOffset; } ;
struct TYPE_4__ {scalar_t__ IndexNumber1; int AlignmentRequirement; int Mode; scalar_t__ CurrentByteOffset; } ;
typedef TYPE_1__ FILE_ALL_INFO ;


 int memcpy (TYPE_1__*,struct smb2_file_all_info*,size_t) ;

void
move_smb2_info_to_cifs(FILE_ALL_INFO *dst, struct smb2_file_all_info *src)
{
 memcpy(dst, src, (size_t)(&src->CurrentByteOffset) - (size_t)src);
 dst->CurrentByteOffset = src->CurrentByteOffset;
 dst->Mode = src->Mode;
 dst->AlignmentRequirement = src->AlignmentRequirement;
 dst->IndexNumber1 = 0;
}
