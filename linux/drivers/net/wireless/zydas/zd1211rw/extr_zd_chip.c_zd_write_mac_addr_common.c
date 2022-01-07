
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef struct zd_ioreq32 {int value; } const zd_ioreq32 ;
struct zd_chip {int mutex; } ;


 int ARRAY_SIZE (struct zd_ioreq32 const*) ;
 int dev_dbg_f (int ,char*,char const*,...) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_iowrite32a_locked (struct zd_chip*,struct zd_ioreq32 const*,int ) ;

__attribute__((used)) static int zd_write_mac_addr_common(struct zd_chip *chip, const u8 *mac_addr,
        const struct zd_ioreq32 *in_reqs,
        const char *type)
{
 int r;
 struct zd_ioreq32 reqs[2] = {in_reqs[0], in_reqs[1]};

 if (mac_addr) {
  reqs[0].value = (mac_addr[3] << 24)
         | (mac_addr[2] << 16)
         | (mac_addr[1] << 8)
         | mac_addr[0];
  reqs[1].value = (mac_addr[5] << 8)
         | mac_addr[4];
  dev_dbg_f(zd_chip_dev(chip), "%s addr %pM\n", type, mac_addr);
 } else {
  dev_dbg_f(zd_chip_dev(chip), "set NULL %s\n", type);
 }

 mutex_lock(&chip->mutex);
 r = zd_iowrite32a_locked(chip, reqs, ARRAY_SIZE(reqs));
 mutex_unlock(&chip->mutex);
 return r;
}
