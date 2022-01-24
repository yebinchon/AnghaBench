#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int size; TYPE_2__* data; } ;
struct TYPE_5__ {int /*<<< orphan*/  d3; int /*<<< orphan*/  d2; int /*<<< orphan*/  d1; int /*<<< orphan*/  d0; } ;
struct TYPE_4__ {TYPE_3__ sdiag_wrapper; TYPE_3__ f0000_wrapper; TYPE_3__ data_wrapper; TYPE_2__ data; int /*<<< orphan*/  command; struct dentry* root; } ;
struct samsung_laptop {TYPE_1__ debug; TYPE_2__* sdiag; TYPE_2__* f0000_segment; } ;
struct dentry {int dummy; } ;

/* Variables and functions */
 int S_IFREG ; 
 int S_IRUGO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int,struct dentry*,TYPE_3__*) ; 
 struct dentry* FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,struct dentry*,struct samsung_laptop*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct dentry*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  samsung_laptop_call_fops ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(struct samsung_laptop *samsung)
{
	struct dentry *root;

	root = FUNC1("samsung-laptop", NULL);
	samsung->debug.root = root;

	samsung->debug.f0000_wrapper.data = samsung->f0000_segment;
	samsung->debug.f0000_wrapper.size = 0xffff;

	samsung->debug.data_wrapper.data = &samsung->debug.data;
	samsung->debug.data_wrapper.size = sizeof(samsung->debug.data);

	samsung->debug.sdiag_wrapper.data = samsung->sdiag;
	samsung->debug.sdiag_wrapper.size = FUNC6(samsung->sdiag);

	FUNC3("command", S_IRUGO | S_IWUSR, root,
			   &samsung->debug.command);
	FUNC4("d0", S_IRUGO | S_IWUSR, root,
			   &samsung->debug.data.d0);
	FUNC4("d1", S_IRUGO | S_IWUSR, root,
			   &samsung->debug.data.d1);
	FUNC3("d2", S_IRUGO | S_IWUSR, root,
			   &samsung->debug.data.d2);
	FUNC5("d3", S_IRUGO | S_IWUSR, root,
			  &samsung->debug.data.d3);
	FUNC0("data", S_IRUGO | S_IWUSR, root,
			    &samsung->debug.data_wrapper);
	FUNC0("f0000_segment", S_IRUSR | S_IWUSR, root,
			    &samsung->debug.f0000_wrapper);
	FUNC2("call", S_IFREG | S_IRUGO, root, samsung,
			    &samsung_laptop_call_fops);
	FUNC0("sdiag", S_IRUGO | S_IWUSR, root,
			    &samsung->debug.sdiag_wrapper);
}