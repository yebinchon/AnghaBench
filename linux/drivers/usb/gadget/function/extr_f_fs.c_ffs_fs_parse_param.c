
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fs_parse_result {int uint_32; int boolean; } ;
struct fs_parameter {int key; } ;
struct fs_context {struct ffs_sb_fill_data* fs_private; } ;
struct TYPE_2__ {int mode; int gid; int uid; } ;
struct ffs_sb_fill_data {int root_mode; TYPE_1__ perms; int no_disconnect; } ;


 int ENOPARAM ;
 int ENTER () ;






 int S_IFDIR ;
 int S_IFREG ;
 int current_user_ns () ;
 int ffs_fs_fs_parameters ;
 int fs_parse (struct fs_context*,int *,struct fs_parameter*,struct fs_parse_result*) ;
 int gid_valid (int ) ;
 int invalf (struct fs_context*,char*,int ,int) ;
 int make_kgid (int ,int) ;
 int make_kuid (int ,int) ;
 int uid_valid (int ) ;

__attribute__((used)) static int ffs_fs_parse_param(struct fs_context *fc, struct fs_parameter *param)
{
 struct ffs_sb_fill_data *data = fc->fs_private;
 struct fs_parse_result result;
 int opt;

 ENTER();

 opt = fs_parse(fc, &ffs_fs_fs_parameters, param, &result);
 if (opt < 0)
  return opt;

 switch (opt) {
 case 130:
  data->no_disconnect = result.boolean;
  break;
 case 129:
  data->root_mode = (result.uint_32 & 0555) | S_IFDIR;
  break;
 case 133:
  data->perms.mode = (result.uint_32 & 0666) | S_IFREG;
  break;
 case 131:
  data->root_mode = (result.uint_32 & 0555) | S_IFDIR;
  data->perms.mode = (result.uint_32 & 0666) | S_IFREG;
  break;

 case 128:
  data->perms.uid = make_kuid(current_user_ns(), result.uint_32);
  if (!uid_valid(data->perms.uid))
   goto unmapped_value;
  break;
 case 132:
  data->perms.gid = make_kgid(current_user_ns(), result.uint_32);
  if (!gid_valid(data->perms.gid))
   goto unmapped_value;
  break;

 default:
  return -ENOPARAM;
 }

 return 0;

unmapped_value:
 return invalf(fc, "%s: unmapped value: %u", param->key, result.uint_32);
}
