
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct ctlr_info {int dummy; } ;
struct bmic_identify_physical_device {int more_flags; } ;


 int GET_BMIC_DRIVE_NUMBER (int *) ;
 int GFP_KERNEL ;
 int hpsa_bmic_id_physical_device (struct ctlr_info*,int *,int ,struct bmic_identify_physical_device*,int) ;
 int kfree (struct bmic_identify_physical_device*) ;
 struct bmic_identify_physical_device* kzalloc (int,int ) ;

__attribute__((used)) static bool hpsa_is_disk_spare(struct ctlr_info *h, u8 *lunaddrbytes)
{
 struct bmic_identify_physical_device *id_phys;
 bool is_spare = 0;
 int rc;

 id_phys = kzalloc(sizeof(*id_phys), GFP_KERNEL);
 if (!id_phys)
  return 0;

 rc = hpsa_bmic_id_physical_device(h,
     lunaddrbytes,
     GET_BMIC_DRIVE_NUMBER(lunaddrbytes),
     id_phys, sizeof(*id_phys));
 if (rc == 0)
  is_spare = (id_phys->more_flags >> 6) & 0x01;

 kfree(id_phys);
 return is_spare;
}
