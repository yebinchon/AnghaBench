#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u8 ;
struct fsg_opts {int /*<<< orphan*/  lock; TYPE_2__* common; scalar_t__ refcnt; } ;
struct TYPE_3__ {int /*<<< orphan*/  ci_name; } ;
struct config_group {TYPE_1__ cg_item; } ;
struct fsg_lun_opts {size_t lun_id; struct config_group group; scalar_t__ lun; } ;
struct fsg_lun_config {int removable; } ;
typedef  int /*<<< orphan*/  config ;
struct TYPE_4__ {scalar_t__* luns; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int ENOMEM ; 
 int ERANGE ; 
 struct config_group* FUNC0 (int) ; 
 size_t FSG_MAX_LUNS ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (struct config_group*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_2__*,struct fsg_lun_config*,size_t,char const*,char const**) ; 
 int /*<<< orphan*/  fsg_lun_type ; 
 int /*<<< orphan*/  FUNC4 (struct fsg_lun_opts*) ; 
 int FUNC5 (char*,int /*<<< orphan*/ ,size_t*) ; 
 struct fsg_lun_opts* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct fsg_lun_config*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 char* FUNC11 (char const*,char) ; 
 struct fsg_opts* FUNC12 (TYPE_1__*) ; 

__attribute__((used)) static struct config_group *FUNC13(struct config_group *group,
					 const char *name)
{
	struct fsg_lun_opts *opts;
	struct fsg_opts *fsg_opts;
	struct fsg_lun_config config;
	char *num_str;
	u8 num;
	int ret;

	num_str = FUNC11(name, '.');
	if (!num_str) {
		FUNC10("Unable to locate . in LUN.NUMBER\n");
		return FUNC0(-EINVAL);
	}
	num_str++;

	ret = FUNC5(num_str, 0, &num);
	if (ret)
		return FUNC0(ret);

	fsg_opts = FUNC12(&group->cg_item);
	if (num >= FSG_MAX_LUNS)
		return FUNC0(-ERANGE);
	num = FUNC1(num, FSG_MAX_LUNS);

	FUNC8(&fsg_opts->lock);
	if (fsg_opts->refcnt || fsg_opts->common->luns[num]) {
		ret = -EBUSY;
		goto out;
	}

	opts = FUNC6(sizeof(*opts), GFP_KERNEL);
	if (!opts) {
		ret = -ENOMEM;
		goto out;
	}

	FUNC7(&config, 0, sizeof(config));
	config.removable = true;

	ret = FUNC3(fsg_opts->common, &config, num, name,
				    (const char **)&group->cg_item.ci_name);
	if (ret) {
		FUNC4(opts);
		goto out;
	}
	opts->lun = fsg_opts->common->luns[num];
	opts->lun_id = num;
	FUNC9(&fsg_opts->lock);

	FUNC2(&opts->group, name, &fsg_lun_type);

	return &opts->group;
out:
	FUNC9(&fsg_opts->lock);
	return FUNC0(ret);
}