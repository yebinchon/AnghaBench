
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct zcrypt_card {char* type_string; int online; void* max_exp_bit_length; void* max_mod_size; int min_mod_size; int speed_rating; int user_space_type; struct ap_card* card; } ;
struct ap_device {int device; } ;
struct TYPE_2__ {int device_type; } ;
struct ap_card {struct zcrypt_card* private; TYPE_1__ ap_dev; } ;
typedef int CEX3C_SPEED_IDX ;
typedef int CEX2C_SPEED_IDX ;




 void* CEX2C_MAX_MOD_SIZE ;
 int CEX2C_MIN_MOD_SIZE ;
 void* CEX3C_MAX_MOD_SIZE ;
 int CEX3C_MIN_MOD_SIZE ;
 int ENODEV ;
 int ENOMEM ;
 int ZCRYPT_CEX2C ;
 int ZCRYPT_CEX3C ;
 int memcpy (int ,int const*,int) ;
 struct ap_card* to_ap_card (int *) ;
 struct zcrypt_card* zcrypt_card_alloc () ;
 int zcrypt_card_free (struct zcrypt_card*) ;
 int zcrypt_card_register (struct zcrypt_card*) ;

__attribute__((used)) static int zcrypt_cex2c_card_probe(struct ap_device *ap_dev)
{




 static const int CEX2C_SPEED_IDX[] = {
  1000, 1400, 2400, 1100, 1500, 2600, 100, 12};
 static const int CEX3C_SPEED_IDX[] = {
  500, 700, 1400, 550, 800, 1500, 80, 10};

 struct ap_card *ac = to_ap_card(&ap_dev->device);
 struct zcrypt_card *zc;
 int rc = 0;

 zc = zcrypt_card_alloc();
 if (!zc)
  return -ENOMEM;
 zc->card = ac;
 ac->private = zc;
 switch (ac->ap_dev.device_type) {
 case 129:
  zc->user_space_type = ZCRYPT_CEX2C;
  zc->type_string = "CEX2C";
  memcpy(zc->speed_rating, CEX2C_SPEED_IDX,
         sizeof(CEX2C_SPEED_IDX));
  zc->min_mod_size = CEX2C_MIN_MOD_SIZE;
  zc->max_mod_size = CEX2C_MAX_MOD_SIZE;
  zc->max_exp_bit_length = CEX2C_MAX_MOD_SIZE;
  break;
 case 128:
  zc->user_space_type = ZCRYPT_CEX3C;
  zc->type_string = "CEX3C";
  memcpy(zc->speed_rating, CEX3C_SPEED_IDX,
         sizeof(CEX3C_SPEED_IDX));
  zc->min_mod_size = CEX3C_MIN_MOD_SIZE;
  zc->max_mod_size = CEX3C_MAX_MOD_SIZE;
  zc->max_exp_bit_length = CEX3C_MAX_MOD_SIZE;
  break;
 default:
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
