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
struct pn533_i2c_phy {int aborted; int /*<<< orphan*/  priv; } ;
struct pn533 {struct pn533_i2c_phy* phy; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC0 (struct pn533*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct pn533 *dev, gfp_t flags)
{
	struct pn533_i2c_phy *phy = dev->phy;

	phy->aborted = true;

	/* An ack will cancel the last issued command */
	FUNC0(dev, flags);

	/* schedule cmd_complete_work to finish current command execution */
	FUNC1(phy->priv, NULL, -ENOENT);
}