
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t uint16_t ;
struct TYPE_3__ {int * smb2_com_failed; } ;
struct TYPE_4__ {TYPE_1__ smb2_stats; } ;
struct cifs_tcon {TYPE_2__ stats; } ;


 int cifs_stats_inc (int *) ;

__attribute__((used)) static inline void cifs_stats_fail_inc(struct cifs_tcon *tcon, uint16_t code)
{
 cifs_stats_inc(&tcon->stats.smb2_stats.smb2_com_failed[code]);
}
