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
struct extent_buffer {int dummy; } ;
struct btrfs_map_token {int dummy; } ;
struct btrfs_item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct btrfs_map_token*,struct extent_buffer*) ; 
 struct btrfs_item* FUNC3 (int) ; 
 int FUNC4 (struct extent_buffer*,struct btrfs_item*,struct btrfs_map_token*) ; 
 int FUNC5 (struct extent_buffer*,struct btrfs_item*,struct btrfs_map_token*) ; 
 int FUNC6 (int,int) ; 

__attribute__((used)) static int FUNC7(struct extent_buffer *l, int start, int nr)
{
	struct btrfs_item *start_item;
	struct btrfs_item *end_item;
	struct btrfs_map_token token;
	int data_len;
	int nritems = FUNC1(l);
	int end = FUNC6(nritems, start + nr) - 1;

	if (!nr)
		return 0;
	FUNC2(&token, l);
	start_item = FUNC3(start);
	end_item = FUNC3(end);
	data_len = FUNC4(l, start_item, &token) +
		FUNC5(l, start_item, &token);
	data_len = data_len - FUNC4(l, end_item, &token);
	data_len += sizeof(struct btrfs_item) * nr;
	FUNC0(data_len < 0);
	return data_len;
}