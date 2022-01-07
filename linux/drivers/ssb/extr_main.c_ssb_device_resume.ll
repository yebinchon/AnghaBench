; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_device_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_main.c_ssb_device_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i64 }
%struct.ssb_device = type { i32 }
%struct.ssb_driver = type { i32 (%struct.ssb_device.0*)* }
%struct.ssb_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ssb_device_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_device_resume(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.ssb_device*, align 8
  %4 = alloca %struct.ssb_driver*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %6 = load %struct.device*, %struct.device** %2, align 8
  %7 = call %struct.ssb_device* @dev_to_ssb_dev(%struct.device* %6)
  store %struct.ssb_device* %7, %struct.ssb_device** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.device*, %struct.device** %2, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %36

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %2, align 8
  %14 = getelementptr inbounds %struct.device, %struct.device* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call %struct.ssb_driver* @drv_to_ssb_drv(i64 %15)
  store %struct.ssb_driver* %16, %struct.ssb_driver** %4, align 8
  %17 = load %struct.ssb_driver*, %struct.ssb_driver** %4, align 8
  %18 = icmp ne %struct.ssb_driver* %17, null
  br i1 %18, label %19, label %31

19:                                               ; preds = %12
  %20 = load %struct.ssb_driver*, %struct.ssb_driver** %4, align 8
  %21 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %20, i32 0, i32 0
  %22 = load i32 (%struct.ssb_device.0*)*, i32 (%struct.ssb_device.0*)** %21, align 8
  %23 = icmp ne i32 (%struct.ssb_device.0*)* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.ssb_driver*, %struct.ssb_driver** %4, align 8
  %26 = getelementptr inbounds %struct.ssb_driver, %struct.ssb_driver* %25, i32 0, i32 0
  %27 = load i32 (%struct.ssb_device.0*)*, i32 (%struct.ssb_device.0*)** %26, align 8
  %28 = load %struct.ssb_device*, %struct.ssb_device** %3, align 8
  %29 = bitcast %struct.ssb_device* %28 to %struct.ssb_device.0*
  %30 = call i32 %27(%struct.ssb_device.0* %29)
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %24, %19, %12
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %37

35:                                               ; preds = %31
  br label %36

36:                                               ; preds = %35, %1
  br label %37

37:                                               ; preds = %36, %34
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local %struct.ssb_device* @dev_to_ssb_dev(%struct.device*) #1

declare dso_local %struct.ssb_driver* @drv_to_ssb_drv(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
