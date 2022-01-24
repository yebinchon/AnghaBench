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
struct raw3215_info {int /*<<< orphan*/  port; int /*<<< orphan*/  tlet; int /*<<< orphan*/  empty_wait; int /*<<< orphan*/  timer; struct raw3215_info* buffer; struct raw3215_info* inbuf; } ;

/* Variables and functions */
 int GFP_DMA ; 
 int GFP_KERNEL ; 
 int RAW3215_BUFFER_SIZE ; 
 int RAW3215_INBUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct raw3215_info*) ; 
 void* FUNC2 (int,int) ; 
 int /*<<< orphan*/  raw3215_timeout ; 
 int /*<<< orphan*/  raw3215_wakeup ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct raw3215_info *FUNC6(void)
{
	struct raw3215_info *info;

	info = FUNC2(sizeof(struct raw3215_info), GFP_KERNEL | GFP_DMA);
	if (!info)
		return NULL;

	info->buffer = FUNC2(RAW3215_BUFFER_SIZE, GFP_KERNEL | GFP_DMA);
	info->inbuf = FUNC2(RAW3215_INBUF_SIZE, GFP_KERNEL | GFP_DMA);
	if (!info->buffer || !info->inbuf) {
		FUNC1(info->inbuf);
		FUNC1(info->buffer);
		FUNC1(info);
		return NULL;
	}

	FUNC4(&info->timer, raw3215_timeout, 0);
	FUNC0(&info->empty_wait);
	FUNC3(&info->tlet, raw3215_wakeup, (unsigned long)info);
	FUNC5(&info->port);

	return info;
}