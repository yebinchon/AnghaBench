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
struct iss_device {int /*<<< orphan*/  media_dev; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  csi2b; int /*<<< orphan*/  csi2a; int /*<<< orphan*/  ipipeif; int /*<<< orphan*/  ipipe; int /*<<< orphan*/  resizer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct iss_device *iss)
{
	FUNC4(&iss->resizer);
	FUNC2(&iss->ipipe);
	FUNC3(&iss->ipipeif);
	FUNC1(&iss->csi2a);
	FUNC1(&iss->csi2b);

	FUNC5(&iss->v4l2_dev);
	FUNC0(&iss->media_dev);
}