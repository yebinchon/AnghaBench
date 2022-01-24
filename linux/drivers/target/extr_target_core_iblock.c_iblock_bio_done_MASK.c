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
struct se_cmd {struct iblock_req* priv; } ;
struct iblock_req {int /*<<< orphan*/  ib_bio_err_cnt; } ;
struct bio {scalar_t__ bi_status; struct se_cmd* bi_private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct se_cmd*) ; 
 int /*<<< orphan*/  FUNC3 (char*,struct bio*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct bio *bio)
{
	struct se_cmd *cmd = bio->bi_private;
	struct iblock_req *ibr = cmd->priv;

	if (bio->bi_status) {
		FUNC3("bio error: %p,  err: %d\n", bio, bio->bi_status);
		/*
		 * Bump the ib_bio_err_cnt and release bio.
		 */
		FUNC0(&ibr->ib_bio_err_cnt);
		FUNC4();
	}

	FUNC1(bio);

	FUNC2(cmd);
}