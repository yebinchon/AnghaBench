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
struct parport_pc_private {int ecr; } ;
struct parport {struct parport_pc_private* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct parport*) ; 
 int /*<<< orphan*/  FUNC1 (struct parport*) ; 
 int /*<<< orphan*/  ECR_SPP ; 
 int /*<<< orphan*/  FUNC2 (struct parport*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct parport*,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct parport *pb)
{
	struct parport_pc_private *priv = pb->private_data;
	unsigned char r = 0xc;

	FUNC5(r, FUNC0(pb));
	if ((FUNC4(FUNC1(pb)) & 0x3) == (r & 0x3)) {
		FUNC5(r ^ 0x2, FUNC0(pb)); /* Toggle bit 1 */

		r = FUNC4(FUNC0(pb));
		if ((FUNC4(FUNC1(pb)) & 0x2) == (r & 0x2))
			goto no_reg; /* Sure that no ECR register exists */
	}

	if ((FUNC4(FUNC1(pb)) & 0x3) != 0x1)
		goto no_reg;

	FUNC2(pb, 0x34);
	if (FUNC4(FUNC1(pb)) != 0x35)
		goto no_reg;

	priv->ecr = 1;
	FUNC5(0xc, FUNC0(pb));

	/* Go to mode 000 */
	FUNC3(pb, ECR_SPP);

	return 1;

 no_reg:
	FUNC5(0xc, FUNC0(pb));
	return 0;
}