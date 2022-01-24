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
struct SiS_Private {int SiS_DDC_DeviceAddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct SiS_Private*) ; 
 scalar_t__ FUNC1 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC2 (struct SiS_Private*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct SiS_Private*) ; 
 int /*<<< orphan*/  FUNC4 (struct SiS_Private*) ; 

__attribute__((used)) static unsigned short
FUNC5(struct SiS_Private *SiS_Pr)
{
    unsigned char mask, value;
    unsigned short  temp, ret=0;
    bool failed = false;

    FUNC4(SiS_Pr);
    if(FUNC0(SiS_Pr)) {
         FUNC3(SiS_Pr);
         return 0xFFFF;
    }
    mask = 0xf0;
    value = 0x20;
    if(SiS_Pr->SiS_DDC_DeviceAddr == 0xa0) {
       temp = (unsigned char)FUNC1(SiS_Pr);
       FUNC2(SiS_Pr, 0);
       if(temp == 0) {
           mask = 0xff;
	   value = 0xff;
       } else {
           failed = true;
	   ret = 0xFFFF;
       }
    }
    if(!failed) {
       temp = (unsigned char)FUNC1(SiS_Pr);
       FUNC2(SiS_Pr, 1);
       temp &= mask;
       if(temp == value) ret = 0;
       else {
          ret = 0xFFFF;
          if(SiS_Pr->SiS_DDC_DeviceAddr == 0xa0) {
             if(temp == 0x30) ret = 0;
          }
       }
    }
    FUNC3(SiS_Pr);
    return ret;
}