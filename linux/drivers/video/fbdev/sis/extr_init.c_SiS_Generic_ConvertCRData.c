
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_var_screeninfo {int xres; int left_margin; int right_margin; int hsync_len; int yres; int upper_margin; int lower_margin; int vsync_len; } ;
struct SiS_Private {int dummy; } ;



void
SiS_Generic_ConvertCRData(struct SiS_Private *SiS_Pr, unsigned char *crdata,
   int xres, int yres,
   struct fb_var_screeninfo *var, bool writeres
)
{
   unsigned short HRE, HBE, HRS, HBS, HDE, HT;
   unsigned short VRE, VBE, VRS, VBS, VDE, VT;
   unsigned char sr_data, cr_data, cr_data2;
   int A, B, C, D, E, F, temp;

   sr_data = crdata[14];


   HT = crdata[0] | ((unsigned short)(sr_data & 0x03) << 8);
   A = HT + 5;


   HDE = crdata[1] | ((unsigned short)(sr_data & 0x0C) << 6);
   E = HDE + 1;


   HRS = crdata[4] | ((unsigned short)(sr_data & 0xC0) << 2);
   F = HRS - E - 3;


   HBS = crdata[2] | ((unsigned short)(sr_data & 0x30) << 4);

   sr_data = crdata[15];
   cr_data = crdata[5];


   HBE = (crdata[3] & 0x1f) |
         ((unsigned short)(cr_data & 0x80) >> 2) |
         ((unsigned short)(sr_data & 0x03) << 6);


   HRE = (cr_data & 0x1f) | ((sr_data & 0x04) << 3);

   temp = HBE - ((E - 1) & 255);
   B = (temp > 0) ? temp : (temp + 256);

   temp = HRE - ((E + F + 3) & 63);
   C = (temp > 0) ? temp : (temp + 64);

   D = B - F - C;

   if(writeres) var->xres = xres = E * 8;
   var->left_margin = D * 8;
   var->right_margin = F * 8;
   var->hsync_len = C * 8;


   sr_data = crdata[13];
   cr_data = crdata[7];


   VT = crdata[6] |
  ((unsigned short)(cr_data & 0x01) << 8) |
  ((unsigned short)(cr_data & 0x20) << 4) |
  ((unsigned short)(sr_data & 0x01) << 10);
   A = VT + 2;


   VDE = crdata[10] |
  ((unsigned short)(cr_data & 0x02) << 7) |
  ((unsigned short)(cr_data & 0x40) << 3) |
  ((unsigned short)(sr_data & 0x02) << 9);
   E = VDE + 1;


   VRS = crdata[8] |
  ((unsigned short)(cr_data & 0x04) << 6) |
  ((unsigned short)(cr_data & 0x80) << 2) |
  ((unsigned short)(sr_data & 0x08) << 7);
   F = VRS + 1 - E;

   cr_data2 = (crdata[16] & 0x01) << 5;


   VBS = crdata[11] |
  ((unsigned short)(cr_data & 0x08) << 5) |
  ((unsigned short)(cr_data2 & 0x20) << 4) |
  ((unsigned short)(sr_data & 0x04) << 8);


   VBE = crdata[12] | ((unsigned short)(sr_data & 0x10) << 4);
   temp = VBE - ((E - 1) & 511);
   B = (temp > 0) ? temp : (temp + 512);


   VRE = (crdata[9] & 0x0f) | ((sr_data & 0x20) >> 1);
   temp = VRE - ((E + F - 1) & 31);
   C = (temp > 0) ? temp : (temp + 32);

   D = B - F - C;

   if(writeres) var->yres = yres = E;
   var->upper_margin = D;
   var->lower_margin = F;
   var->vsync_len = C;

   if((xres == 320) && ((yres == 200) || (yres == 240))) {






      var->left_margin = (400 - 376);
      var->right_margin = (328 - 320);
      var->hsync_len = (376 - 328);

   }

}
