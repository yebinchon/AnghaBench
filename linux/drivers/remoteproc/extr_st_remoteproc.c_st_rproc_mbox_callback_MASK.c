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
typedef  int /*<<< orphan*/  u32 ;
struct rproc {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IRQ_NONE ; 
 int /*<<< orphan*/  FUNC0 (struct device*,char*,int /*<<< orphan*/ ) ; 
 struct rproc* FUNC1 (struct device*) ; 
 scalar_t__ FUNC2 (struct rproc*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct device *dev, u32 msg)
{
	struct rproc *rproc = FUNC1(dev);

	if (FUNC2(rproc, msg) == IRQ_NONE)
		FUNC0(dev, "no message was found in vqid %d\n", msg);
}