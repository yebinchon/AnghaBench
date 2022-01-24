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
struct winsize {int /*<<< orphan*/  ws_row; int /*<<< orphan*/  ws_col; } ;
struct vc_data {int dummy; } ;
struct tty_struct {struct vc_data* driver_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (struct tty_struct*,struct vc_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct tty_struct *tty, struct winsize *ws)
{
	struct vc_data *vc = tty->driver_data;
	int ret;

	FUNC0();
	ret = FUNC2(tty, vc, ws->ws_col, ws->ws_row);
	FUNC1();
	return ret;
}