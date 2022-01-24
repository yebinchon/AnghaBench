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
struct pp_ctx {int dummy; } ;
struct ntb_dev {struct pp_ctx* ctx; } ;
struct ntb_client {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pp_ctx*) ; 
 int /*<<< orphan*/  FUNC1 (struct pp_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct pp_ctx*) ; 

__attribute__((used)) static void FUNC3(struct ntb_client *client, struct ntb_dev *ntb)
{
	struct pp_ctx *pp = ntb->ctx;

	FUNC2(pp);

	FUNC1(pp);

	FUNC0(pp);
}