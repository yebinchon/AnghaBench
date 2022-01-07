
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zd_ioreq16 {int member_1; int member_0; } ;
struct zd_chip {int dummy; } ;


 int ARRAY_SIZE (struct zd_ioreq16 const*) ;
 int dev_dbg_f (int ,char*) ;
 int zd_chip_dev (struct zd_chip*) ;
 int zd_chip_lock_phy_regs (struct zd_chip*) ;
 int zd_chip_unlock_phy_regs (struct zd_chip*) ;
 int zd_iowrite16a_locked (struct zd_chip*,struct zd_ioreq16 const*,int ) ;

__attribute__((used)) static int zd1211b_hw_reset_phy(struct zd_chip *chip)
{
 static const struct zd_ioreq16 ioreqs[] = {
  { 264, 0x14 }, { 263, 0x06 }, { 198, 0x26 },
  { 185, 0x38 }, { 174, 0x80 }, { 138, 0xe0 },
  { 262, 0x81 },

  { 251, 0x00 },
  { 240, 0xf0 }, { 234, 0x8c }, { 227, 0x80 },
  { 218, 0x3d }, { 214, 0x20 }, { 203, 0x1e },
  { 200, 0x0a }, { 199, 0x48 },
  { 197, 0x10 },
  { 194, 0x0e }, { 193, 0x23 }, { 192, 0x90 },
  { 191, 0x14 }, { 190, 0x40 }, { 189, 0x10 },
  { 188, 0x10 }, { 187, 0x7f }, { 186, 0x80 },
  { 184, 0x4b },
  { 183, 0x60 }, { 182, 0x43 }, { 181, 0x08 },
  { 180, 0x06 }, { 179, 0x0a }, { 178, 0x00 },
  { 177, 0x00 }, { 176, 0x38 }, { 175, 0x0c },
  { 173, 0x84 }, { 172, 0x2a }, { 171, 0x80 },
  { 170, 0x10 }, { 169, 0x33 }, { 168, 0xff },
  { 167, 0x1E }, { 166, 0x26 }, { 165, 0x5b },
  { 164, 0xd0 }, { 163, 0x04 }, { 162, 0x58 },
  { 161, 0xc9 }, { 160, 0x88 }, { 159, 0x41 },
  { 158, 0x23 }, { 157, 0x10 }, { 156, 0xff },
  { 155, 0x32 }, { 154, 0x30 }, { 153, 0x65 },
  { 152, 0x41 }, { 151, 0x1b }, { 150, 0x30 },
  { 149, 0xf0 }, { 148, 0x64 }, { 147, 0x64 },
  { 146, 0x00 }, { 145, 0x24 }, { 144, 0x04 },
  { 143, 0x00 }, { 142, 0x0c }, { 141, 0x12 },
  { 140, 0x0c }, { 139, 0x00 }, { 137, 0x58 },
  { 136, 0x04 }, { 135, 0x00 }, { 134, 0x00 },
  { 133, 0x01 },
  { 132, 0x20 },
  { 131, 0x50 }, { 130, 0x37 }, { 129, 0x35 },
  { 128, 0x00 }, { 261, 0x01 }, { 260, 0x13 },
  { 259, 0x27 }, { 258, 0x27 }, { 257, 0x18 },
  { 256, 0x12 }, { 255, 0x04 }, { 254, 0x00 },
  { 253, 0x0a }, { 252, 0x27 }, { 250, 0x27 },
  { 249, 0x27 }, { 248, 0x27 }, { 247, 0x27 },
  { 246, 0x27 }, { 245, 0x26 }, { 244, 0x24 },
  { 243, 0xfc }, { 242, 0xfa }, { 241, 0x1e },
  { 239, 0x90 }, { 238, 0x00 }, { 237, 0x00 },
  { 236, 0x14 }, { 235, 0x12 }, { 233, 0x10 },
  { 232, 0x0c }, { 231, 0xdf }, { 230, 0xa0 },
  { 229, 0xa8 }, { 228, 0xb4 }, { 226, 0x98 },
  { 225, 0x82 }, { 224, 0x53 }, { 223, 0x1c },
  { 222, 0x6c }, { 221, 0x07 }, { 220, 0x40 },
  { 219, 0x40 },
  { 217, 0x14 },
  { 216, 0x18 }, { 215, 0x70 }, { 213, 0xfe },
  { 212, 0xee }, { 211, 0xaa }, { 210, 0xfa },
  { 209, 0xfa }, { 208, 0xea }, { 207, 0xbe },
  { 206, 0xbe }, { 205, 0x6a }, { 204, 0xba },
  { 202, 0xba }, { 201, 0xba },

  { 195, 0x7d },
  {},
  { 196, 0x30 },
 };

 int r, t;

 dev_dbg_f(zd_chip_dev(chip), "\n");

 r = zd_chip_lock_phy_regs(chip);
 if (r)
  goto out;

 r = zd_iowrite16a_locked(chip, ioreqs, ARRAY_SIZE(ioreqs));
 t = zd_chip_unlock_phy_regs(chip);
 if (t && !r)
  r = t;
out:
 return r;
}
