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
struct hecubafb_par {int /*<<< orphan*/  (* send_data ) (struct hecubafb_par*,int) ;int /*<<< orphan*/  (* send_command ) (struct hecubafb_par*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  APOLLO_ERASE_DISPLAY ; 
 int /*<<< orphan*/  APOLLO_INIT_DISPLAY ; 
 int FUNC0 (struct hecubafb_par*) ; 
 int /*<<< orphan*/  nosplash ; 
 int splashval ; 
 int /*<<< orphan*/  FUNC1 (struct hecubafb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hecubafb_par*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct hecubafb_par*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct hecubafb_par*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(struct hecubafb_par *par)
{
	int retval;

	retval = FUNC0(par);
	if (retval)
		return retval;

	par->send_command(par, APOLLO_INIT_DISPLAY);
	par->send_data(par, 0x81);

	/* have to wait while display resets */
	FUNC5(1000);

	/* if we were told to splash the screen, we just clear it */
	if (!nosplash) {
		par->send_command(par, APOLLO_ERASE_DISPLAY);
		par->send_data(par, splashval);
	}

	return 0;
}