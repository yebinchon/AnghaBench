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
struct cifsFileInfo {int /*<<< orphan*/  file_info_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cifsFileInfo*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct cifsFileInfo *
FUNC3(struct cifsFileInfo *cifs_file)
{
	FUNC1(&cifs_file->file_info_lock);
	FUNC0(cifs_file);
	FUNC2(&cifs_file->file_info_lock);
	return cifs_file;
}