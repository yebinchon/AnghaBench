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
struct erofs_qstr {int /*<<< orphan*/ * end; int /*<<< orphan*/ * name; } ;
struct erofs_dirent {int /*<<< orphan*/  nameoff; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 struct erofs_dirent* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct erofs_qstr*,struct erofs_qstr*,unsigned int*) ; 
 unsigned int FUNC2 (unsigned int,unsigned int) ; 
 int FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static struct erofs_dirent *FUNC4(struct erofs_qstr *name,
					       u8 *data,
					       unsigned int dirblksize,
					       const int ndirents)
{
	int head, back;
	unsigned int startprfx, endprfx;
	struct erofs_dirent *const de = (struct erofs_dirent *)data;

	/* since the 1st dirent has been evaluated previously */
	head = 1;
	back = ndirents - 1;
	startprfx = endprfx = 0;

	while (head <= back) {
		const int mid = head + (back - head) / 2;
		const int nameoff = FUNC3(de[mid].nameoff,
						      dirblksize);
		unsigned int matched = FUNC2(startprfx, endprfx);
		struct erofs_qstr dname = {
			.name = data + nameoff,
			.end = mid >= ndirents - 1 ?
				data + dirblksize :
				data + FUNC3(de[mid + 1].nameoff,
							 dirblksize)
		};

		/* string comparison without already matched prefix */
		int ret = FUNC1(name, &dname, &matched);

		if (!ret) {
			return de + mid;
		} else if (ret > 0) {
			head = mid + 1;
			startprfx = matched;
		} else {
			back = mid - 1;
			endprfx = matched;
		}
	}

	return FUNC0(-ENOENT);
}