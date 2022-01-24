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
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct parport*) ; 

__attribute__((used)) static int FUNC3(struct parport *pb)
{
	unsigned char r;

	if (!(FUNC2(pb) & 0x01))
		return 1;

	/* To clear timeout some chips require double read */
	FUNC2(pb);
	r = FUNC2(pb);
	FUNC1(r | 0x01, FUNC0(pb)); /* Some reset by writing 1 */
	FUNC1(r & 0xfe, FUNC0(pb)); /* Others by writing 0 */
	r = FUNC2(pb);

	return !(r & 0x01);
}