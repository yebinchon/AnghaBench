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
struct spk_synth {scalar_t__ ser; int /*<<< orphan*/  dev_name; } ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  SYNTH_DEFAULT_DEV ; 
 scalar_t__ SYNTH_DEFAULT_SER ; 
 int FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct spk_synth *synth, dev_t *dev_no)
{
	/* use ser only when dev is not specified */
	if (FUNC1(synth->dev_name, SYNTH_DEFAULT_DEV) ||
	    synth->ser == SYNTH_DEFAULT_SER)
		return FUNC2(synth->dev_name, dev_no);

	return FUNC0(synth->ser, dev_no);
}