
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint16_t ;
struct ulp_cid_info {unsigned short* cid_array; size_t cid_alloc; int avlbl_cids; int cid_free; } ;
struct TYPE_2__ {int ulp_supported; } ;
struct beiscsi_hba {struct ulp_cid_info** cid_array_info; TYPE_1__ fw_config; } ;


 size_t BEISCSI_GET_CID_COUNT (struct beiscsi_hba*,unsigned short) ;
 size_t BEISCSI_ULP0 ;
 int BEISCSI_ULP0_AVLBL_CID (struct beiscsi_hba*) ;
 size_t BEISCSI_ULP1 ;
 int BEISCSI_ULP1_AVLBL_CID (struct beiscsi_hba*) ;
 int BE_INVALID_CID ;
 int KERN_ERR ;
 int __beiscsi_log (struct beiscsi_hba*,int ,char*,int ,int ) ;
 int test_bit (unsigned short,void*) ;

__attribute__((used)) static int beiscsi_get_cid(struct beiscsi_hba *phba)
{
 uint16_t cid_avlbl_ulp0, cid_avlbl_ulp1;
 unsigned short cid, cid_from_ulp;
 struct ulp_cid_info *cid_info;


 cid_avlbl_ulp0 = (phba->cid_array_info[BEISCSI_ULP0]) ?
     BEISCSI_ULP0_AVLBL_CID(phba) : 0;
 cid_avlbl_ulp1 = (phba->cid_array_info[BEISCSI_ULP1]) ?
     BEISCSI_ULP1_AVLBL_CID(phba) : 0;
 cid_from_ulp = (cid_avlbl_ulp0 > cid_avlbl_ulp1) ?
   BEISCSI_ULP0 : BEISCSI_ULP1;





 if (!test_bit(cid_from_ulp, (void *)&phba->fw_config.ulp_supported))
  return BE_INVALID_CID;

 cid_info = phba->cid_array_info[cid_from_ulp];
 cid = cid_info->cid_array[cid_info->cid_alloc];
 if (!cid_info->avlbl_cids || cid == BE_INVALID_CID) {
  __beiscsi_log(phba, KERN_ERR,
    "BS_%d : failed to get cid: available %u:%u\n",
    cid_info->avlbl_cids, cid_info->cid_free);
  return BE_INVALID_CID;
 }

 cid_info->cid_array[cid_info->cid_alloc++] = BE_INVALID_CID;
 if (cid_info->cid_alloc == BEISCSI_GET_CID_COUNT(phba, cid_from_ulp))
  cid_info->cid_alloc = 0;
 cid_info->avlbl_cids--;
 return cid;
}
