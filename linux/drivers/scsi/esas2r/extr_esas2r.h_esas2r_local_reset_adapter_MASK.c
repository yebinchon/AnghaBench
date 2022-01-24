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
struct esas2r_adapter {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  AF_CHPRST_NEEDED ; 
 int /*<<< orphan*/  AF_CHPRST_PENDING ; 
 int /*<<< orphan*/  AF_DISC_PENDING ; 
 int /*<<< orphan*/  FUNC0 (struct esas2r_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct esas2r_adapter *a)
{
	FUNC0(a);

	FUNC1(AF_CHPRST_NEEDED, &a->flags);
	FUNC1(AF_CHPRST_PENDING, &a->flags);
	FUNC1(AF_DISC_PENDING, &a->flags);
}