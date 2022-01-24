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
struct imx_media_fim {int /*<<< orphan*/  lock; } ;
typedef  int /*<<< orphan*/  ktime_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct imx_media_fim*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct imx_media_fim*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct imx_media_fim *fim, ktime_t timestamp)
{
	unsigned long flags;

	FUNC2(&fim->lock, flags);

	if (!FUNC1(fim))
		FUNC0(fim, timestamp);

	FUNC3(&fim->lock, flags);
}