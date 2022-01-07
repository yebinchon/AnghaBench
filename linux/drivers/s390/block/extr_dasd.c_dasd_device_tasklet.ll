; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_device_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_device_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32 }
%struct.list_head = type { i32 }

@shutdown_waitq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dasd_device_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_device_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.list_head, align 4
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.dasd_device*
  store %struct.dasd_device* %6, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = call i32 @atomic_set(i32* %8, i32 0)
  %10 = call i32 @INIT_LIST_HEAD(%struct.list_head* %4)
  %11 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %12 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @get_ccwdev_lock(i32 %13)
  %15 = call i32 @spin_lock_irq(i32 %14)
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = call i32 @__dasd_device_check_expire(%struct.dasd_device* %16)
  %18 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %19 = call i32 @__dasd_device_process_ccw_queue(%struct.dasd_device* %18, %struct.list_head* %4)
  %20 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %21 = call i32 @__dasd_device_check_path_events(%struct.dasd_device* %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @get_ccwdev_lock(i32 %24)
  %26 = call i32 @spin_unlock_irq(i32 %25)
  %27 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %28 = call i32 @__dasd_device_process_final_queue(%struct.dasd_device* %27, %struct.list_head* %4)
  %29 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %30 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @get_ccwdev_lock(i32 %31)
  %33 = call i32 @spin_lock_irq(i32 %32)
  %34 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %35 = call i32 @__dasd_device_start_head(%struct.dasd_device* %34)
  %36 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %37 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_ccwdev_lock(i32 %38)
  %40 = call i32 @spin_unlock_irq(i32 %39)
  %41 = call i64 @waitqueue_active(i32* @shutdown_waitq)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %1
  %44 = call i32 @wake_up(i32* @shutdown_waitq)
  br label %45

45:                                               ; preds = %43, %1
  %46 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %47 = call i32 @dasd_put_device(%struct.dasd_device* %46)
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__dasd_device_check_expire(%struct.dasd_device*) #1

declare dso_local i32 @__dasd_device_process_ccw_queue(%struct.dasd_device*, %struct.list_head*) #1

declare dso_local i32 @__dasd_device_check_path_events(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @__dasd_device_process_final_queue(%struct.dasd_device*, %struct.list_head*) #1

declare dso_local i32 @__dasd_device_start_head(%struct.dasd_device*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
