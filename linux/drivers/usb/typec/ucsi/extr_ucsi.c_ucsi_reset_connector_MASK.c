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
struct ucsi_control {int dummy; } ;
struct ucsi_connector {int /*<<< orphan*/  ucsi; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ucsi_control,struct ucsi_connector*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct ucsi_control*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct ucsi_connector *con, bool hard)
{
	struct ucsi_control ctrl;

	FUNC0(ctrl, con, hard);

	return FUNC1(con->ucsi, &ctrl, NULL, 0);
}