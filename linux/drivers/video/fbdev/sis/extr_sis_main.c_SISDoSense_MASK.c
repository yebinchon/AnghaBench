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
typedef  int u16 ;
struct sis_video_info {int /*<<< orphan*/  SiS_Pr; } ;

/* Variables and functions */
 int /*<<< orphan*/  SISPART4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static int FUNC5(struct sis_video_info *ivideo, u16 type, u16 test)
{
    int temp, mytest, result, i, j;

    for(j = 0; j < 10; j++) {
       result = 0;
       for(i = 0; i < 3; i++) {
          mytest = test;
	   FUNC2(SISPART4, 0x11, (type & 0x00ff));
          temp = (type >> 8) | (mytest & 0x00ff);
	  FUNC4(SISPART4, 0x10, 0xe0, temp);
          FUNC0(&ivideo->SiS_Pr, 0x1500);
          mytest >>= 8;
          mytest &= 0x7f;
	   temp = FUNC1(SISPART4, 0x03);
          temp ^= 0x0e;
          temp &= mytest;
          if(temp == mytest) result++;
#if 1
	  FUNC2(SISPART4, 0x11, 0x00);
	  FUNC3(SISPART4, 0x10, 0xe0);
	  FUNC0(&ivideo->SiS_Pr, 0x1000);
#endif
       }
       if((result == 0) || (result >= 2)) break;
    }
    return result;
}