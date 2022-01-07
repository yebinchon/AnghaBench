; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_generic_notify(%struct.ccw_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ccw_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dasd_device*, align 8
  %7 = alloca i32, align 4
  store %struct.ccw_device* %0, %struct.ccw_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ccw_device*, %struct.ccw_device** %4, align 8
  %9 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %8)
  store %struct.dasd_device* %9, %struct.dasd_device** %6, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %11 = call i64 @IS_ERR(%struct.dasd_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %33

14:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %29 [
    i32 130, label %16
    i32 131, label %16
    i32 129, label %16
    i32 128, label %21
  ]

16:                                               ; preds = %14, %14, %14
  %17 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %18 = call i32 @dasd_path_no_path(%struct.dasd_device* %17)
  %19 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %20 = call i32 @dasd_generic_last_path_gone(%struct.dasd_device* %19)
  store i32 %20, i32* %7, align 4
  br label %29

21:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  %22 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %23 = call i32 @dasd_path_get_opm(%struct.dasd_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %27 = call i32 @dasd_generic_path_operational(%struct.dasd_device* %26)
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %25, %21
  br label %29

29:                                               ; preds = %14, %28, %16
  %30 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %31 = call i32 @dasd_put_device(%struct.dasd_device* %30)
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %29, %13
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_no_path(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_last_path_gone(%struct.dasd_device*) #1

declare dso_local i32 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @dasd_generic_path_operational(%struct.dasd_device*) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
