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
struct ulpi {int dummy; } ;
struct tusb1210 {int /*<<< orphan*/  phy; } ;

/* Variables and functions */
 struct tusb1210* FUNC0 (struct ulpi*) ; 
 int /*<<< orphan*/  FUNC1 (struct ulpi*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ulpi *ulpi)
{
	struct tusb1210 *tusb = FUNC0(ulpi);

	FUNC1(ulpi, tusb->phy);
}