#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct kset {int dummy; } ;
struct gb_audio_manager_module_descriptor {int dummy; } ;
struct TYPE_3__ {struct kset* kset; } ;
struct gb_audio_manager_module {int id; TYPE_1__ kobj; int /*<<< orphan*/  desc; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gb_audio_module_type ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 struct gb_audio_manager_module* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct gb_audio_manager_module_descriptor*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct gb_audio_manager_module*) ; 

int FUNC8(
	struct gb_audio_manager_module **module,
	struct kset *manager_kset,
	int id, struct gb_audio_manager_module_descriptor *desc)
{
	int err;
	struct gb_audio_manager_module *m;

	m = FUNC3(sizeof(*m), GFP_ATOMIC);
	if (!m)
		return -ENOMEM;

	/* Initialize the node */
	FUNC0(&m->list);

	/* Set the module id */
	m->id = id;

	/* Copy the provided descriptor */
	FUNC4(&m->desc, desc, sizeof(*desc));

	/* set the kset */
	m->kobj.kset = manager_kset;

	/*
	 * Initialize and add the kobject to the kernel.  All the default files
	 * will be created here.  As we have already specified a kset for this
	 * kobject, we don't have to set a parent for the kobject, the kobject
	 * will be placed beneath that kset automatically.
	 */
	err = FUNC1(&m->kobj, &gb_audio_module_type, NULL, "%d",
				   id);
	if (err) {
		FUNC5("failed initializing kobject for audio module #%d\n",
		       id);
		FUNC2(&m->kobj);
		return err;
	}

	/*
	 * Notify the object was created
	 */
	FUNC7(m);

	*module = m;
	FUNC6("Created audio module #%d\n", id);
	return 0;
}