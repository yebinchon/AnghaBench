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
struct parport {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int PARPORT_MODE_PCSPP ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 unsigned char FUNC2 (struct parport*) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,unsigned char) ; 
 unsigned char FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct parport *pb)
{
	unsigned char r, w;

	/*
	 * first clear an eventually pending EPP timeout 
	 * I (sailer@ife.ee.ethz.ch) have an SMSC chipset
	 * that does not even respond to SPP cycles if an EPP
	 * timeout is pending
	 */
	FUNC1(pb);

	/* Do a simple read-write test to make sure the port exists. */
	w = 0xc;
	FUNC5 (w, FUNC0 (pb));

	/* Is there a control register that we can read from?  Some
	 * ports don't allow reads, so read_control just returns a
	 * software copy. Some ports _do_ allow reads, so bypass the
	 * software copy here.  In addition, some bits aren't
	 * writable. */
	r = FUNC4 (FUNC0 (pb));
	if ((r & 0xf) == w) {
		w = 0xe;
		FUNC5 (w, FUNC0 (pb));
		r = FUNC4 (FUNC0 (pb));
		FUNC5 (0xc, FUNC0 (pb));
		if ((r & 0xf) == w)
			return PARPORT_MODE_PCSPP;
	}

	/* Try the data register.  The data lines aren't tri-stated at
	 * this stage, so we expect back what we wrote. */
	w = 0xaa;
	FUNC3 (pb, w);
	r = FUNC2 (pb);
	if (r == w) {
		w = 0x55;
		FUNC3 (pb, w);
		r = FUNC2 (pb);
		if (r == w)
			return PARPORT_MODE_PCSPP;
	}

	return 0;
}