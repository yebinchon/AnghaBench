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
struct list_head {int dummy; } ;
struct heuristic_ws {struct list_head list; void* bucket_b; void* bucket; int /*<<< orphan*/  sample; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUCKET_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct list_head* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct list_head*) ; 
 int /*<<< orphan*/  MAX_SAMPLE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (struct list_head*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct heuristic_ws* FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct list_head *FUNC6(unsigned int level)
{
	struct heuristic_ws *ws;

	ws = FUNC5(sizeof(*ws), GFP_KERNEL);
	if (!ws)
		return FUNC0(-ENOMEM);

	ws->sample = FUNC4(MAX_SAMPLE_SIZE, GFP_KERNEL);
	if (!ws->sample)
		goto fail;

	ws->bucket = FUNC3(BUCKET_SIZE, sizeof(*ws->bucket), GFP_KERNEL);
	if (!ws->bucket)
		goto fail;

	ws->bucket_b = FUNC3(BUCKET_SIZE, sizeof(*ws->bucket_b), GFP_KERNEL);
	if (!ws->bucket_b)
		goto fail;

	FUNC1(&ws->list);
	return &ws->list;
fail:
	FUNC2(&ws->list);
	return FUNC0(-ENOMEM);
}