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
struct SiS_Private {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct SiS_Private*) ; 
 scalar_t__ FUNC1 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC4 (struct SiS_Private*) ; 

__attribute__((used)) static
unsigned short
FUNC5(struct SiS_Private *SiS_Pr, unsigned short DDCdatatype, unsigned char *buffer)
{
   unsigned short flag, length, i;
   unsigned char chksum,gotcha;

   if(DDCdatatype > 4) return 0xFFFF;

   flag = 0;
   FUNC4(SiS_Pr);
   if(!(FUNC0(SiS_Pr))) {
      length = 127;
      if(DDCdatatype != 1) length = 255;
      chksum = 0;
      gotcha = 0;
      for(i=0; i<length; i++) {
	 buffer[i] = (unsigned char)FUNC1(SiS_Pr);
	 chksum += buffer[i];
	 gotcha |= buffer[i];
	 FUNC2(SiS_Pr, 0);
      }
      buffer[i] = (unsigned char)FUNC1(SiS_Pr);
      chksum += buffer[i];
      FUNC2(SiS_Pr, 1);
      if(gotcha) flag = (unsigned short)chksum;
      else flag = 0xFFFF;
   } else {
      flag = 0xFFFF;
   }
   FUNC3(SiS_Pr);
   return flag;
}