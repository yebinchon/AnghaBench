
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct switchtec_ntb {int db_valid_mask; } ;
struct ntb_dev {int dummy; } ;


 struct switchtec_ntb* ntb_sndev (struct ntb_dev*) ;

__attribute__((used)) static u64 switchtec_ntb_db_valid_mask(struct ntb_dev *ntb)
{
 struct switchtec_ntb *sndev = ntb_sndev(ntb);

 return sndev->db_valid_mask;
}
