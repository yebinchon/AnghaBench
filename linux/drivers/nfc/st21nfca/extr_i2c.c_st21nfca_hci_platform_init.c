
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u16 ;
struct st21nfca_i2c_phy {int i2c_dev; } ;
typedef int reboot_cmd ;


 int ARRAY_SIZE (int*) ;
 int ENODEV ;
 int ST21NFCA_HCI_LLC_MAX_SIZE ;
 scalar_t__ ST21NFCA_SOF_EOF ;
 int i2c_master_recv (int ,scalar_t__*,int) ;
 int i2c_master_send (int ,char*,int) ;
 int msleep (int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static int st21nfca_hci_platform_init(struct st21nfca_i2c_phy *phy)
{
 u16 wait_reboot[] = { 50, 300, 1000 };
 char reboot_cmd[] = { 0x7E, 0x66, 0x48, 0xF6, 0x7E };
 u8 tmp[ST21NFCA_HCI_LLC_MAX_SIZE];
 int i, r = -1;

 for (i = 0; i < ARRAY_SIZE(wait_reboot) && r < 0; i++) {
  r = i2c_master_send(phy->i2c_dev, reboot_cmd,
        sizeof(reboot_cmd));
  if (r < 0)
   msleep(wait_reboot[i]);
 }
 if (r < 0)
  return r;


 msleep(20);
 r = -1;
 for (i = 0; i < ARRAY_SIZE(wait_reboot) && r < 0; i++) {
  r = i2c_master_recv(phy->i2c_dev, tmp,
        ST21NFCA_HCI_LLC_MAX_SIZE);
  if (r < 0)
   msleep(wait_reboot[i]);
 }
 if (r < 0)
  return r;

 for (i = 0; i < ST21NFCA_HCI_LLC_MAX_SIZE &&
  tmp[i] == ST21NFCA_SOF_EOF; i++)
  ;

 if (r != ST21NFCA_HCI_LLC_MAX_SIZE)
  return -ENODEV;

 usleep_range(1000, 1500);
 return 0;
}
