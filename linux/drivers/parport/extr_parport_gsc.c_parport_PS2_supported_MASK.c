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
struct parport_gsc_private {int ctr_writable; } ;
struct parport {struct parport_gsc_private* private_data; int /*<<< orphan*/  modes; } ;

/* Variables and functions */
 int /*<<< orphan*/  PARPORT_MODE_TRISTATE ; 
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  FUNC2 (struct parport*) ; 
 int FUNC3 (struct parport*) ; 
 int /*<<< orphan*/  FUNC4 (struct parport*,int) ; 

__attribute__((used)) static int FUNC5(struct parport *pb)
{
	int ok = 0;
  
	FUNC0(pb);

	/* try to tri-state the buffer */
	FUNC2 (pb);
	
	FUNC4(pb, 0x55);
	if (FUNC3(pb) != 0x55) ok++;

	FUNC4(pb, 0xaa);
	if (FUNC3(pb) != 0xaa) ok++;

	/* cancel input mode */
	FUNC1 (pb);

	if (ok) {
		pb->modes |= PARPORT_MODE_TRISTATE;
	} else {
		struct parport_gsc_private *priv = pb->private_data;
		priv->ctr_writable &= ~0x20;
	}

	return ok;
}