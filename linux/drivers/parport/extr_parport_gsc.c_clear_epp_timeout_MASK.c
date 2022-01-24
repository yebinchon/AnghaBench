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
 int FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct parport *pb)
{
	unsigned char r;

	if (!(FUNC1(pb) & 0x01))
		return 1;

	/* To clear timeout some chips require double read */
	FUNC1(pb);
	r = FUNC1(pb);
	FUNC2 (r | 0x01, FUNC0 (pb)); /* Some reset by writing 1 */
	FUNC2 (r & 0xfe, FUNC0 (pb)); /* Others by writing 0 */
	r = FUNC1(pb);

	return !(r & 0x01);
}