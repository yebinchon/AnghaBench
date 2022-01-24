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
struct slink_front {char* symname; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_ino; } ;
struct file {int dummy; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct affs_sb_info {char* s_prefix; int /*<<< orphan*/  symlink_lock; } ;
struct TYPE_2__ {struct inode* host; } ;

/* Variables and functions */
 struct affs_sb_info* FUNC0 (int /*<<< orphan*/ ) ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 struct buffer_head* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct buffer_head*) ; 
 char* FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (char*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 

__attribute__((used)) static int FUNC11(struct file *file, struct page *page)
{
	struct buffer_head *bh;
	struct inode *inode = page->mapping->host;
	char *link = FUNC5(page);
	struct slink_front *lf;
	int			 i, j;
	char			 c;
	char			 lc;

	FUNC6("get_link(ino=%lu)\n", inode->i_ino);

	bh = FUNC3(inode->i_sb, inode->i_ino);
	if (!bh)
		goto fail;
	i  = 0;
	j  = 0;
	lf = (struct slink_front *)bh->b_data;
	lc = 0;

	if (FUNC9(lf->symname,':')) {	/* Handle assign or volume name */
		struct affs_sb_info *sbi = FUNC0(inode->i_sb);
		char *pf;
		FUNC7(&sbi->symlink_lock);
		pf = sbi->s_prefix ? sbi->s_prefix : "/";
		while (i < 1023 && (c = pf[i]))
			link[i++] = c;
		FUNC8(&sbi->symlink_lock);
		while (i < 1023 && lf->symname[j] != ':')
			link[i++] = lf->symname[j++];
		if (i < 1023)
			link[i++] = '/';
		j++;
		lc = '/';
	}
	while (i < 1023 && (c = lf->symname[j])) {
		if (c == '/' && lc == '/' && i < 1020) {	/* parent dir */
			link[i++] = '.';
			link[i++] = '.';
		}
		link[i++] = c;
		lc = c;
		j++;
	}
	link[i] = '\0';
	FUNC4(bh);
	FUNC2(page);
	FUNC10(page);
	return 0;
fail:
	FUNC1(page);
	FUNC10(page);
	return -EIO;
}