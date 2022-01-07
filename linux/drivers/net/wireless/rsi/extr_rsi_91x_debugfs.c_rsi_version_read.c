
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {struct rsi_common* private; } ;
struct TYPE_2__ {int patch_num; int release_num; int minor; int major; } ;
struct rsi_common {TYPE_1__ lmac_ver; } ;


 int seq_printf (struct seq_file*,char*,int ,int ,int ,int ) ;

__attribute__((used)) static int rsi_version_read(struct seq_file *seq, void *data)
{
 struct rsi_common *common = seq->private;

 seq_printf(seq, "LMAC   : %d.%d.%d.%d\n",
     common->lmac_ver.major,
     common->lmac_ver.minor,
     common->lmac_ver.release_num,
     common->lmac_ver.patch_num);

 return 0;
}
