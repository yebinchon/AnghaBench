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
struct gb_vibrator_device {int /*<<< orphan*/  connection; int /*<<< orphan*/  minor; int /*<<< orphan*/  dev; int /*<<< orphan*/  delayed_work; } ;
struct gb_bundle {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gb_bundle*) ; 
 int FUNC5 (struct gb_bundle*) ; 
 struct gb_vibrator_device* FUNC6 (struct gb_bundle*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct gb_vibrator_device*) ; 
 int /*<<< orphan*/  minors ; 
 int /*<<< orphan*/  FUNC9 (struct gb_vibrator_device*) ; 

__attribute__((used)) static void FUNC10(struct gb_bundle *bundle)
{
	struct gb_vibrator_device *vib = FUNC6(bundle);
	int ret;

	ret = FUNC5(bundle);
	if (ret)
		FUNC4(bundle);

	if (FUNC0(&vib->delayed_work))
		FUNC9(vib);

	FUNC1(vib->dev);
	FUNC7(&minors, vib->minor);
	FUNC3(vib->connection);
	FUNC2(vib->connection);
	FUNC8(vib);
}