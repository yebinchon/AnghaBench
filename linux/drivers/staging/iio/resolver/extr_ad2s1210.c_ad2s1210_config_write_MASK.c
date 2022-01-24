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
typedef  int /*<<< orphan*/  u8 ;
struct ad2s1210_state {int /*<<< orphan*/ * tx; int /*<<< orphan*/  sdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  MOD_CONFIG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct ad2s1210_state*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(struct ad2s1210_state *st, u8 data)
{
	int ret;

	FUNC0(MOD_CONFIG, st);
	st->tx[0] = data;
	ret = FUNC1(st->sdev, st->tx, 1);
	if (ret < 0)
		return ret;

	return 0;
}