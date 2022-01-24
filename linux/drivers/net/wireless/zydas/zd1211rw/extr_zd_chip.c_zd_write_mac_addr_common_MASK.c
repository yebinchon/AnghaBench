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
typedef  int u8 ;
typedef  struct zd_ioreq32 {int value; } const zd_ioreq32 ;
struct zd_chip {int /*<<< orphan*/  mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct zd_ioreq32 const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct zd_chip*) ; 
 int FUNC5 (struct zd_chip*,struct zd_ioreq32 const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct zd_chip *chip, const u8 *mac_addr,
				    const struct zd_ioreq32 *in_reqs,
				    const char *type)
{
	int r;
	struct zd_ioreq32 reqs[2] = {in_reqs[0], in_reqs[1]};

	if (mac_addr) {
		reqs[0].value = (mac_addr[3] << 24)
			      | (mac_addr[2] << 16)
			      | (mac_addr[1] <<  8)
			      |  mac_addr[0];
		reqs[1].value = (mac_addr[5] <<  8)
			      |  mac_addr[4];
		FUNC1(FUNC4(chip), "%s addr %pM\n", type, mac_addr);
	} else {
		FUNC1(FUNC4(chip), "set NULL %s\n", type);
	}

	FUNC2(&chip->mutex);
	r = FUNC5(chip, reqs, FUNC0(reqs));
	FUNC3(&chip->mutex);
	return r;
}