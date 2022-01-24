#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct SiS_Private {int /*<<< orphan*/  SiS_P3d4; int /*<<< orphan*/  SiS_P3c4; int /*<<< orphan*/  DDCPortMixup; } ;

/* Variables and functions */
 int SIS_300_VGA ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (struct SiS_Private*,unsigned int,int,unsigned short,unsigned short,int,unsigned int) ; 
 unsigned short FUNC2 (struct SiS_Private*) ; 
 unsigned short FUNC3 (struct SiS_Private*,unsigned short,unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,unsigned char) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct SiS_Private*) ; 
 unsigned int VB2_VIDEOBRIDGE ; 

unsigned short
FUNC8(struct SiS_Private *SiS_Pr, unsigned int VBFlags, int VGAEngine,
              unsigned short adaptnum, unsigned short DDCdatatype, unsigned char *buffer,
	      unsigned int VBFlags2)
{
   unsigned char  sr1f, cr17=1;
   unsigned short result;

   if(adaptnum > 2)
      return 0xFFFF;

   if(DDCdatatype > 4)
      return 0xFFFF;

   if((!(VBFlags2 & VB2_VIDEOBRIDGE)) && (adaptnum > 0))
      return 0xFFFF;

   if(FUNC1(SiS_Pr, VBFlags, VGAEngine, adaptnum, DDCdatatype, false, VBFlags2) == 0xFFFF)
      return 0xFFFF;

   sr1f = FUNC0(SiS_Pr->SiS_P3c4,0x1f);
   FUNC5(SiS_Pr->SiS_P3c4,0x1f,0x3f,0x04);
   if(VGAEngine == SIS_300_VGA) {
      cr17 = FUNC0(SiS_Pr->SiS_P3d4,0x17) & 0x80;
      if(!cr17) {
         FUNC6(SiS_Pr->SiS_P3d4,0x17,0x80);
         FUNC4(SiS_Pr->SiS_P3c4,0x00,0x01);
         FUNC4(SiS_Pr->SiS_P3c4,0x00,0x03);
      }
   }
   if((sr1f) || (!cr17)) {
      FUNC7(SiS_Pr);
      FUNC7(SiS_Pr);
      FUNC7(SiS_Pr);
      FUNC7(SiS_Pr);
   }

   if(DDCdatatype == 0) {
      result = FUNC2(SiS_Pr);
   } else {
      result = FUNC3(SiS_Pr, DDCdatatype, buffer);
      if((!result) && (DDCdatatype == 1)) {
         if((buffer[0] == 0x00) && (buffer[1] == 0xff) &&
	    (buffer[2] == 0xff) && (buffer[3] == 0xff) &&
	    (buffer[4] == 0xff) && (buffer[5] == 0xff) &&
	    (buffer[6] == 0xff) && (buffer[7] == 0x00) &&
	    (buffer[0x12] == 1)) {
	    if(!SiS_Pr->DDCPortMixup) {
	       if(adaptnum == 1) {
	          if(!(buffer[0x14] & 0x80)) result = 0xFFFE;
	       } else {
	          if(buffer[0x14] & 0x80)    result = 0xFFFE;
	       }
	    }
	 }
      }
   }
   FUNC4(SiS_Pr->SiS_P3c4,0x1f,sr1f);
   if(VGAEngine == SIS_300_VGA) {
      FUNC5(SiS_Pr->SiS_P3d4,0x17,0x7f,cr17);
   }
   return result;
}