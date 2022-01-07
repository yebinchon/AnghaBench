
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_card {char* type_string; int online; int user_space_type; int speed_rating; void* max_exp_bit_length; void* max_mod_size; void* min_mod_size; struct ap_card* card; } ;
struct ap_device {int device; } ;
struct TYPE_2__ {scalar_t__ device_type; } ;
struct ap_card {struct zcrypt_card* private; int functions; TYPE_1__ ap_dev; } ;
typedef int CEX3A_SPEED_IDX ;
typedef int CEX2A_SPEED_IDX ;


 scalar_t__ AP_DEVICE_TYPE_CEX2A ;
 scalar_t__ AP_DEVICE_TYPE_CEX3A ;
 int AP_FUNC_CRT4K ;
 int AP_FUNC_MEX4K ;
 void* CEX2A_MAX_MOD_SIZE ;
 void* CEX2A_MIN_MOD_SIZE ;
 void* CEX3A_MAX_MOD_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int ZCRYPT_CEX2A ;
 int ZCRYPT_CEX3A ;
 scalar_t__ ap_test_bit (int *,int ) ;
 int memcpy (int ,int const*,int) ;
 struct ap_card* to_ap_card (int *) ;
 struct zcrypt_card* zcrypt_card_alloc () ;
 int zcrypt_card_free (struct zcrypt_card*) ;
 int zcrypt_card_register (struct zcrypt_card*) ;

__attribute__((used)) static int zcrypt_cex2a_card_probe(struct ap_device *ap_dev)
{




 static const int CEX2A_SPEED_IDX[] = {
  800, 1000, 2000, 900, 1200, 2400, 0, 0};
 static const int CEX3A_SPEED_IDX[] = {
  400, 500, 1000, 450, 550, 1200, 0, 0};

 struct ap_card *ac = to_ap_card(&ap_dev->device);
 struct zcrypt_card *zc;
 int rc = 0;

 zc = zcrypt_card_alloc();
 if (!zc)
  return -ENOMEM;
 zc->card = ac;
 ac->private = zc;

 if (ac->ap_dev.device_type == AP_DEVICE_TYPE_CEX2A) {
  zc->min_mod_size = CEX2A_MIN_MOD_SIZE;
  zc->max_mod_size = CEX2A_MAX_MOD_SIZE;
  memcpy(zc->speed_rating, CEX2A_SPEED_IDX,
         sizeof(CEX2A_SPEED_IDX));
  zc->max_exp_bit_length = CEX2A_MAX_MOD_SIZE;
  zc->type_string = "CEX2A";
  zc->user_space_type = ZCRYPT_CEX2A;
 } else if (ac->ap_dev.device_type == AP_DEVICE_TYPE_CEX3A) {
  zc->min_mod_size = CEX2A_MIN_MOD_SIZE;
  zc->max_mod_size = CEX2A_MAX_MOD_SIZE;
  zc->max_exp_bit_length = CEX2A_MAX_MOD_SIZE;
  if (ap_test_bit(&ac->functions, AP_FUNC_MEX4K) &&
      ap_test_bit(&ac->functions, AP_FUNC_CRT4K)) {
   zc->max_mod_size = CEX3A_MAX_MOD_SIZE;
   zc->max_exp_bit_length = CEX3A_MAX_MOD_SIZE;
  }
  memcpy(zc->speed_rating, CEX3A_SPEED_IDX,
         sizeof(CEX3A_SPEED_IDX));
  zc->type_string = "CEX3A";
  zc->user_space_type = ZCRYPT_CEX3A;
 } else {
  zcrypt_card_free(zc);
  return -ENODEV;
 }
 zc->online = 1;

 rc = zcrypt_card_register(zc);
 if (rc) {
  ac->private = ((void*)0);
  zcrypt_card_free(zc);
 }

 return rc;
}
