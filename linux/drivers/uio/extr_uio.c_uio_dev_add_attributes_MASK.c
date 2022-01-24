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
struct uio_portio {int /*<<< orphan*/  kobj; struct uio_port* port; } ;
struct uio_port {scalar_t__ size; struct uio_portio* portio; } ;
struct uio_mem {scalar_t__ size; struct uio_map* map; } ;
struct uio_map {int /*<<< orphan*/  kobj; struct uio_mem* mem; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct uio_device {TYPE_2__ dev; int /*<<< orphan*/ * map_dir; TYPE_1__* info; int /*<<< orphan*/ * portio_dir; } ;
struct TYPE_3__ {struct uio_mem* mem; struct uio_port* port; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  KOBJ_ADD ; 
 int MAX_UIO_MAPS ; 
 int MAX_UIO_PORT_REGIONS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  map_attr_type ; 
 int /*<<< orphan*/  portio_attr_type ; 

__attribute__((used)) static int FUNC7(struct uio_device *idev)
{
	int ret;
	int mi, pi;
	int map_found = 0;
	int portio_found = 0;
	struct uio_mem *mem;
	struct uio_map *map;
	struct uio_port *port;
	struct uio_portio *portio;

	for (mi = 0; mi < MAX_UIO_MAPS; mi++) {
		mem = &idev->info->mem[mi];
		if (mem->size == 0)
			break;
		if (!map_found) {
			map_found = 1;
			idev->map_dir = FUNC2("maps",
							&idev->dev.kobj);
			if (!idev->map_dir) {
				ret = -ENOMEM;
				goto err_map;
			}
		}
		map = FUNC6(sizeof(*map), GFP_KERNEL);
		if (!map) {
			ret = -ENOMEM;
			goto err_map;
		}
		FUNC3(&map->kobj, &map_attr_type);
		map->mem = mem;
		mem->map = map;
		ret = FUNC1(&map->kobj, idev->map_dir, "map%d", mi);
		if (ret)
			goto err_map_kobj;
		ret = FUNC5(&map->kobj, KOBJ_ADD);
		if (ret)
			goto err_map_kobj;
	}

	for (pi = 0; pi < MAX_UIO_PORT_REGIONS; pi++) {
		port = &idev->info->port[pi];
		if (port->size == 0)
			break;
		if (!portio_found) {
			portio_found = 1;
			idev->portio_dir = FUNC2("portio",
							&idev->dev.kobj);
			if (!idev->portio_dir) {
				ret = -ENOMEM;
				goto err_portio;
			}
		}
		portio = FUNC6(sizeof(*portio), GFP_KERNEL);
		if (!portio) {
			ret = -ENOMEM;
			goto err_portio;
		}
		FUNC3(&portio->kobj, &portio_attr_type);
		portio->port = port;
		port->portio = portio;
		ret = FUNC1(&portio->kobj, idev->portio_dir,
							"port%d", pi);
		if (ret)
			goto err_portio_kobj;
		ret = FUNC5(&portio->kobj, KOBJ_ADD);
		if (ret)
			goto err_portio_kobj;
	}

	return 0;

err_portio:
	pi--;
err_portio_kobj:
	for (; pi >= 0; pi--) {
		port = &idev->info->port[pi];
		portio = port->portio;
		FUNC4(&portio->kobj);
	}
	FUNC4(idev->portio_dir);
err_map:
	mi--;
err_map_kobj:
	for (; mi >= 0; mi--) {
		mem = &idev->info->mem[mi];
		map = mem->map;
		FUNC4(&map->kobj);
	}
	FUNC4(idev->map_dir);
	FUNC0(&idev->dev, "error creating sysfs files (%d)\n", ret);
	return ret;
}