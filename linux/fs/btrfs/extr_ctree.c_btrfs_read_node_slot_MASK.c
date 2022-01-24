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
struct extent_buffer {int /*<<< orphan*/  fs_info; } ;
struct btrfs_key {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOENT ; 
 struct extent_buffer* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct extent_buffer*) ; 
 int FUNC3 (struct extent_buffer*) ; 
 int FUNC4 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC5 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct extent_buffer*,struct btrfs_key*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct extent_buffer*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct extent_buffer*) ; 
 int /*<<< orphan*/  FUNC9 (struct extent_buffer*) ; 
 struct extent_buffer* FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,struct btrfs_key*) ; 

struct extent_buffer *FUNC11(struct extent_buffer *parent,
					   int slot)
{
	int level = FUNC3(parent);
	struct extent_buffer *eb;
	struct btrfs_key first_key;

	if (slot < 0 || slot >= FUNC4(parent))
		return FUNC1(-ENOENT);

	FUNC0(level == 0);

	FUNC6(parent, &first_key, slot);
	eb = FUNC10(parent->fs_info, FUNC5(parent, slot),
			     FUNC7(parent, slot),
			     level - 1, &first_key);
	if (!FUNC2(eb) && !FUNC8(eb)) {
		FUNC9(eb);
		eb = FUNC1(-EIO);
	}

	return eb;
}