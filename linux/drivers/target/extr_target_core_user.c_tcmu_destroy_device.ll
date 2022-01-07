; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_destroy_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_tcmu_destroy_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_device = type { i32 }
%struct.tcmu_dev = type { i32, i32, i32, i32, i32 }

@root_udev_mutex = common dso_local global i32 0, align 4
@tcmu_dev_kref_release = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_device*)* @tcmu_destroy_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcmu_destroy_device(%struct.se_device* %0) #0 {
  %2 = alloca %struct.se_device*, align 8
  %3 = alloca %struct.tcmu_dev*, align 8
  store %struct.se_device* %0, %struct.se_device** %2, align 8
  %4 = load %struct.se_device*, %struct.se_device** %2, align 8
  %5 = call %struct.tcmu_dev* @TCMU_DEV(%struct.se_device* %4)
  store %struct.tcmu_dev* %5, %struct.tcmu_dev** %3, align 8
  %6 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %7 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %6, i32 0, i32 4
  %8 = call i32 @del_timer_sync(i32* %7)
  %9 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %10 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %9, i32 0, i32 3
  %11 = call i32 @del_timer_sync(i32* %10)
  %12 = call i32 @mutex_lock(i32* @root_udev_mutex)
  %13 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %14 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %13, i32 0, i32 2
  %15 = call i32 @list_del(i32* %14)
  %16 = call i32 @mutex_unlock(i32* @root_udev_mutex)
  %17 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %18 = call i32 @tcmu_send_dev_remove_event(%struct.tcmu_dev* %17)
  %19 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %20 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %19, i32 0, i32 1
  %21 = call i32 @uio_unregister_device(i32* %20)
  %22 = load %struct.tcmu_dev*, %struct.tcmu_dev** %3, align 8
  %23 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %22, i32 0, i32 0
  %24 = load i32, i32* @tcmu_dev_kref_release, align 4
  %25 = call i32 @kref_put(i32* %23, i32 %24)
  ret void
}

declare dso_local %struct.tcmu_dev* @TCMU_DEV(%struct.se_device*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tcmu_send_dev_remove_event(%struct.tcmu_dev*) #1

declare dso_local i32 @uio_unregister_device(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
