; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_device_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_device_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.ssb_device = type { i32 }
%struct.ssb_driver = type { i32 (%struct.ssb_device.0*, i32)* }
%struct.ssb_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @ssb_device_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_device_suspend(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ssb_device*, align 8
  %6 = alloca %struct.ssb_driver*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.ssb_device* @dev_to_ssb_dev(%struct.device* %8)
  store %struct.ssb_device* %9, %struct.ssb_device** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %39

14:                                               ; preds = %2
  %15 = load %struct.device*, %struct.device** %3, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call %struct.ssb_driver* @drv_to_ssb_drv(i64 %17)
  store %struct.ssb_driver* %18, %struct.ssb_driver** %6, align 8
  %19 = load %struct.ssb_driver*, %struct.ssb_driver** %6, align 8
  %20 = icmp ne %struct.ssb_driver* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %14
  %22 = load %struct.ssb_driver*, %struct.ssb_driver** %6, align 8
  %23 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %22, i32 0, i32 0
  %24 = load i32 (%struct.ssb_device.0*, i32)*, i32 (%struct.ssb_device.0*, i32)** %23, align 8
  %25 = icmp ne i32 (%struct.ssb_device.0*, i32)* %24, null
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.ssb_driver*, %struct.ssb_driver** %6, align 8
  %28 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %27, i32 0, i32 0
  %29 = load i32 (%struct.ssb_device.0*, i32)*, i32 (%struct.ssb_device.0*, i32)** %28, align 8
  %30 = load %struct.ssb_device*, %struct.ssb_device** %5, align 8
  %31 = bitcast %struct.ssb_device* %30 to %struct.ssb_device.0*
  %32 = load i32, i32* %4, align 4
  %33 = call i32 %29(%struct.ssb_device.0* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %26, %21, %14
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  br label %40

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %38, %2
  br label %40

40:                                               ; preds = %39, %37
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local %struct.ssb_device* @dev_to_ssb_dev(%struct.device*) #1

declare dso_local %struct.ssb_driver* @drv_to_ssb_drv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
