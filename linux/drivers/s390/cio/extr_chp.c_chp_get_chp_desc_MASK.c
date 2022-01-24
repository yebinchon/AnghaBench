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
struct chp_id {int dummy; } ;
struct channel_path_desc_fmt0 {int dummy; } ;
struct channel_path {int /*<<< orphan*/  lock; int /*<<< orphan*/  desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct channel_path* FUNC0 (struct chp_id) ; 
 struct channel_path_desc_fmt0* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct channel_path_desc_fmt0*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

struct channel_path_desc_fmt0 *FUNC5(struct chp_id chpid)
{
	struct channel_path *chp;
	struct channel_path_desc_fmt0 *desc;

	chp = FUNC0(chpid);
	if (!chp)
		return NULL;
	desc = FUNC1(sizeof(*desc), GFP_KERNEL);
	if (!desc)
		return NULL;

	FUNC3(&chp->lock);
	FUNC2(desc, &chp->desc, sizeof(*desc));
	FUNC4(&chp->lock);
	return desc;
}