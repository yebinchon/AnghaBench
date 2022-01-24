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
struct wsm_buf {int /*<<< orphan*/ * begin; int /*<<< orphan*/ * end; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 size_t FWLOAD_BLOCK_SIZE ; 
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int /*<<< orphan*/ * FUNC1 (size_t,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wsm_buf*) ; 

void FUNC3(struct wsm_buf *buf)
{
	FUNC0(buf->begin);
	buf->begin = FUNC1(FWLOAD_BLOCK_SIZE, GFP_KERNEL | GFP_DMA);
	buf->end = buf->begin ? &buf->begin[FWLOAD_BLOCK_SIZE] : buf->begin;
	FUNC2(buf);
}