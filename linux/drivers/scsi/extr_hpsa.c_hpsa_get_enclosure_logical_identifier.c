
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u64 ;
struct ctlr_info {int dummy; } ;


 int GFP_KERNEL ;
 int RECEIVE_DIAGNOSTIC ;
 int get_unaligned_be64 (int *) ;
 int hpsa_do_receive_diagnostic (struct ctlr_info*,int *,int ,int *,int) ;
 int kfree (int *) ;
 int * kzalloc (int,int ) ;

__attribute__((used)) static u64 hpsa_get_enclosure_logical_identifier(struct ctlr_info *h,
      u8 *scsi3addr)
{
 u8 *buf;
 u64 sa = 0;
 int rc = 0;

 buf = kzalloc(1024, GFP_KERNEL);
 if (!buf)
  return 0;

 rc = hpsa_do_receive_diagnostic(h, scsi3addr, RECEIVE_DIAGNOSTIC,
     buf, 1024);

 if (rc)
  goto out;

 sa = get_unaligned_be64(buf+12);

out:
 kfree(buf);
 return sa;
}
