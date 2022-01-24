#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ntb_msit_ctx {TYPE_1__* peers; } ;
struct ntb_dev {struct ntb_msit_ctx* ctx; } ;
struct ntb_client {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  msi_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC5 (struct ntb_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct ntb_msit_ctx*) ; 
 int FUNC7 (struct ntb_dev*) ; 

__attribute__((used)) static void FUNC8(struct ntb_client *client, struct ntb_dev *ntb)
{
	struct ntb_msit_ctx *nm = ntb->ctx;
	int i;

	FUNC4(ntb);
	FUNC2(ntb, FUNC3(ntb));
	FUNC5(ntb);

	for (i = 0; i < FUNC7(ntb); i++)
		FUNC0(nm->peers[i].msi_desc);

	FUNC1(ntb);
	FUNC6(nm);
}