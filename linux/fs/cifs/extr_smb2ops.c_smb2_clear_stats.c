
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * smb2_com_failed; int * smb2_com_sent; } ;
struct TYPE_4__ {TYPE_1__ smb2_stats; } ;
struct cifs_tcon {TYPE_2__ stats; } ;


 int NUMBER_OF_SMB2_COMMANDS ;
 int atomic_set (int *,int ) ;

__attribute__((used)) static void
smb2_clear_stats(struct cifs_tcon *tcon)
{
 int i;

 for (i = 0; i < NUMBER_OF_SMB2_COMMANDS; i++) {
  atomic_set(&tcon->stats.smb2_stats.smb2_com_sent[i], 0);
  atomic_set(&tcon->stats.smb2_stats.smb2_com_failed[i], 0);
 }
}
