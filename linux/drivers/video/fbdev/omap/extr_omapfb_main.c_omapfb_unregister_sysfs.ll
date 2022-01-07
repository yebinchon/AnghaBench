; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_unregister_sysfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap/extr_omapfb_main.c_omapfb_unregister_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omapfb_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ctrl_attr_grp = common dso_local global i32 0, align 4
@panel_attr_grp = common dso_local global i32 0, align 4
@dev_attr_caps_num = common dso_local global i32 0, align 4
@dev_attr_caps_text = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omapfb_device*)* @omapfb_unregister_sysfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omapfb_unregister_sysfs(%struct.omapfb_device* %0) #0 {
  %2 = alloca %struct.omapfb_device*, align 8
  store %struct.omapfb_device* %0, %struct.omapfb_device** %2, align 8
  %3 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %4 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %3, i32 0, i32 0
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = call i32 @sysfs_remove_group(i32* %6, i32* @ctrl_attr_grp)
  %8 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %9 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @sysfs_remove_group(i32* %11, i32* @panel_attr_grp)
  %13 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %14 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @device_remove_file(%struct.TYPE_2__* %15, i32* @dev_attr_caps_num)
  %17 = load %struct.omapfb_device*, %struct.omapfb_device** %2, align 8
  %18 = getelementptr inbounds %struct.omapfb_device, %struct.omapfb_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = call i32 @device_remove_file(%struct.TYPE_2__* %19, i32* @dev_attr_caps_text)
  ret void
}

declare dso_local i32 @sysfs_remove_group(i32*, i32*) #1

declare dso_local i32 @device_remove_file(%struct.TYPE_2__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
