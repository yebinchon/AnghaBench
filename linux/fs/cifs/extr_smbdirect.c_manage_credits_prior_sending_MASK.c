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
struct smbd_connection {int new_credits_offered; int /*<<< orphan*/  lock_new_credits_offered; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct smbd_connection *info)
{
	int new_credits;

	FUNC0(&info->lock_new_credits_offered);
	new_credits = info->new_credits_offered;
	info->new_credits_offered = 0;
	FUNC1(&info->lock_new_credits_offered);

	return new_credits;
}