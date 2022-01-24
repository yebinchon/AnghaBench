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
struct skt_dev_info {int nskt; int /*<<< orphan*/ * skt; } ;
struct platform_device {int dummy; } ;

/* Variables and functions */
 struct skt_dev_info* FUNC0 (struct platform_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *dev)
{
	struct skt_dev_info *sinfo = FUNC0(dev);
	int i;

	for (i = 0; i < sinfo->nskt; i++)
		FUNC1(&sinfo->skt[i]);

	return 0;
}