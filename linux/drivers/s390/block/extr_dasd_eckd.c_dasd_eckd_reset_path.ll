; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reset_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reset_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, %struct.dasd_eckd_private* }
%struct.dasd_eckd_private = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_device*, i64)* @dasd_eckd_reset_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eckd_reset_path(%struct.dasd_device* %0, i64 %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dasd_eckd_private*, align 8
  %6 = alloca i64, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %7, i32 0, i32 1
  %9 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %8, align 8
  store %struct.dasd_eckd_private* %9, %struct.dasd_eckd_private** %5, align 8
  %10 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %11 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %2
  %15 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %16 = call i64 @get_fcx_max_data(%struct.dasd_device* %15)
  %17 = load %struct.dasd_eckd_private*, %struct.dasd_eckd_private** %5, align 8
  %18 = getelementptr inbounds %struct.dasd_eckd_private, %struct.dasd_eckd_private* %17, i32 0, i32 0
  store i64 %16, i64* %18, align 8
  br label %19

19:                                               ; preds = %14, %2
  %20 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @get_ccwdev_lock(i32 %22)
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @spin_lock_irqsave(i32 %23, i64 %24)
  %26 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %27 = load i64, i64* %4, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  br label %34

30:                                               ; preds = %19
  %31 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %32 = call i32 @dasd_path_get_notoperpm(%struct.dasd_device* %31)
  %33 = sext i32 %32 to i64
  br label %34

34:                                               ; preds = %30, %29
  %35 = phi i64 [ %27, %29 ], [ %33, %30 ]
  %36 = trunc i64 %35 to i32
  %37 = call i32 @dasd_path_set_tbvpm(%struct.dasd_device* %26, i32 %36)
  %38 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %39 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %38)
  %40 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @get_ccwdev_lock(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  ret void
}

declare dso_local i64 @get_fcx_max_data(%struct.dasd_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @dasd_path_set_tbvpm(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_path_get_notoperpm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
