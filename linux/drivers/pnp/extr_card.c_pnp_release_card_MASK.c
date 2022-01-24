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
struct pnp_card {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pnp_card*) ; 
 int /*<<< orphan*/  FUNC1 (struct pnp_card*) ; 
 struct pnp_card* FUNC2 (struct device*) ; 

__attribute__((used)) static void FUNC3(struct device *dmdev)
{
	struct pnp_card *card = FUNC2(dmdev);

	FUNC1(card);
	FUNC0(card);
}