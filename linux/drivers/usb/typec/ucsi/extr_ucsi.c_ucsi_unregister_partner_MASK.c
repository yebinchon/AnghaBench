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
struct ucsi_connector {int /*<<< orphan*/ * partner; } ;

/* Variables and functions */
 int /*<<< orphan*/  UCSI_RECIPIENT_SOP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct ucsi_connector*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct ucsi_connector *con)
{
	if (!con->partner)
		return;

	FUNC1(con, UCSI_RECIPIENT_SOP);
	FUNC0(con->partner);
	con->partner = NULL;
}