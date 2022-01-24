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
struct fsl_mc_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  ls1088a_soc ; 
 int /*<<< orphan*/  ls2080a_soc ; 
 int /*<<< orphan*/  ls2088a_soc ; 
 int /*<<< orphan*/  lx2160a_soc ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct fsl_mc_device *dpio_dev, int cpu)
{
	int cluster_base, cluster_size;

	if (FUNC1(ls1088a_soc)) {
		cluster_base = 2;
		cluster_size = 4;
	} else if (FUNC1(ls2080a_soc) ||
		   FUNC1(ls2088a_soc) ||
		   FUNC1(lx2160a_soc)) {
		cluster_base = 0;
		cluster_size = 2;
	} else {
		FUNC0(&dpio_dev->dev, "unknown SoC version\n");
		return -1;
	}

	return cluster_base + cpu / cluster_size;
}