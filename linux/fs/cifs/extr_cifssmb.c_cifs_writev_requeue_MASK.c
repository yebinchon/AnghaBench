#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct inode {int /*<<< orphan*/  i_mapping; } ;
struct cifs_writedata {unsigned int bytes; int nr_pages; unsigned int pagesz; unsigned int tailsz; int /*<<< orphan*/  refcount; int /*<<< orphan*/ * pages; TYPE_4__* cfile; int /*<<< orphan*/  pid; int /*<<< orphan*/  offset; int /*<<< orphan*/  sync_mode; } ;
struct TCP_Server_Info {TYPE_2__* ops; } ;
struct TYPE_8__ {int /*<<< orphan*/  pid; int /*<<< orphan*/  tlink; int /*<<< orphan*/  dentry; } ;
struct TYPE_7__ {TYPE_1__* ses; } ;
struct TYPE_6__ {unsigned int (* wp_retry_size ) (struct inode*) ;int (* async_writev ) (struct cifs_writedata*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {struct TCP_Server_Info* server; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct inode*) ; 
 unsigned int FUNC1 (unsigned int,unsigned int) ; 
 int EBADF ; 
 int ENOMEM ; 
 int ENOTSUPP ; 
 unsigned int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VFS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,TYPE_4__**) ; 
 struct cifs_writedata* FUNC5 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cifs_writedata_release ; 
 int /*<<< orphan*/  cifs_writev_complete ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC15 (struct inode*) ; 
 int FUNC16 (struct cifs_writedata*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC19(struct cifs_writedata *wdata)
{
	int i, rc = 0;
	struct inode *inode = FUNC7(wdata->cfile->dentry);
	struct TCP_Server_Info *server;
	unsigned int rest_len;

	server = FUNC17(wdata->cfile->tlink)->ses->server;
	i = 0;
	rest_len = wdata->bytes;
	do {
		struct cifs_writedata *wdata2;
		unsigned int j, nr_pages, wsize, tailsz, cur_len;

		wsize = server->ops->wp_retry_size(inode);
		if (wsize < rest_len) {
			nr_pages = wsize / PAGE_SIZE;
			if (!nr_pages) {
				rc = -ENOTSUPP;
				break;
			}
			cur_len = nr_pages * PAGE_SIZE;
			tailsz = PAGE_SIZE;
		} else {
			nr_pages = FUNC1(rest_len, PAGE_SIZE);
			cur_len = rest_len;
			tailsz = rest_len - (nr_pages - 1) * PAGE_SIZE;
		}

		wdata2 = FUNC5(nr_pages, cifs_writev_complete);
		if (!wdata2) {
			rc = -ENOMEM;
			break;
		}

		for (j = 0; j < nr_pages; j++) {
			wdata2->pages[j] = wdata->pages[i + j];
			FUNC11(wdata2->pages[j]);
			FUNC6(wdata2->pages[j]);
		}

		wdata2->sync_mode = wdata->sync_mode;
		wdata2->nr_pages = nr_pages;
		wdata2->offset = FUNC13(wdata2->pages[0]);
		wdata2->pagesz = PAGE_SIZE;
		wdata2->tailsz = tailsz;
		wdata2->bytes = cur_len;

		rc = FUNC4(FUNC0(inode), false,
					    &wdata2->cfile);
		if (!wdata2->cfile) {
			FUNC3(VFS, "No writable handle to retry writepages rc=%d\n",
				 rc);
			if (!FUNC9(rc))
				rc = -EBADF;
		} else {
			wdata2->pid = wdata2->cfile->pid;
			rc = server->ops->async_writev(wdata2,
						       cifs_writedata_release);
		}

		for (j = 0; j < nr_pages; j++) {
			FUNC18(wdata2->pages[j]);
			if (rc != 0 && !FUNC9(rc)) {
				FUNC2(wdata2->pages[j]);
				FUNC8(wdata2->pages[j]);
				FUNC14(wdata2->pages[j]);
			}
		}

		if (rc) {
			FUNC10(&wdata2->refcount, cifs_writedata_release);
			if (FUNC9(rc))
				continue;
			i += nr_pages;
			break;
		}

		rest_len -= cur_len;
		i += nr_pages;
	} while (i < wdata->nr_pages);

	/* cleanup remaining pages from the original wdata */
	for (; i < wdata->nr_pages; i++) {
		FUNC2(wdata->pages[i]);
		FUNC8(wdata->pages[i]);
		FUNC14(wdata->pages[i]);
	}

	if (rc != 0 && !FUNC9(rc))
		FUNC12(inode->i_mapping, rc);
	FUNC10(&wdata->refcount, cifs_writedata_release);
}