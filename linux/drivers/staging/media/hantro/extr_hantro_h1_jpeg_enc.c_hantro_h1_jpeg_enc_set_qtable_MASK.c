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
typedef  size_t u32 ;
struct hantro_dev {int dummy; } ;

/* Variables and functions */
 size_t H1_JPEG_QUANT_TABLE_COUNT ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 size_t FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (struct hantro_dev*,size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct hantro_dev *vpu,
			      unsigned char *luma_qtable,
			      unsigned char *chroma_qtable)
{
	u32 reg, i;

	for (i = 0; i < H1_JPEG_QUANT_TABLE_COUNT; i++) {
		reg = FUNC2(&luma_qtable[i]);
		FUNC3(vpu, reg, FUNC1(i));

		reg = FUNC2(&chroma_qtable[i]);
		FUNC3(vpu, reg, FUNC0(i));
	}
}