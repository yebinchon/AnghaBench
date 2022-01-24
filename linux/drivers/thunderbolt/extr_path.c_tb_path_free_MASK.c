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
struct tb_path_hop {int path_length; struct tb_path_hop* hops; int /*<<< orphan*/  next_hop_index; scalar_t__ out_port; int /*<<< orphan*/  in_hop_index; scalar_t__ in_port; } ;
struct tb_path {int path_length; struct tb_path* hops; int /*<<< orphan*/  next_hop_index; scalar_t__ out_port; int /*<<< orphan*/  in_hop_index; scalar_t__ in_port; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct tb_path_hop*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

void FUNC3(struct tb_path *path)
{
	int i;

	for (i = 0; i < path->path_length; i++) {
		const struct tb_path_hop *hop = &path->hops[i];

		if (hop->in_port)
			FUNC1(hop->in_port,
						 hop->in_hop_index);
		if (hop->out_port)
			FUNC2(hop->out_port,
						  hop->next_hop_index);
	}

	FUNC0(path->hops);
	FUNC0(path);
}