; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c_dwc2_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dwc2_hsotg = type { i32, i32, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc2_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc2_driver_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dwc2_hsotg*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.dwc2_hsotg* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.dwc2_hsotg* %5, %struct.dwc2_hsotg** %3, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = call i32 @dwc2_debugfs_exit(%struct.dwc2_hsotg* %6)
  %8 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %9 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %14 = call i32 @dwc2_hcd_remove(%struct.dwc2_hsotg* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %17 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %15
  %21 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %22 = call i32 @dwc2_hsotg_remove(%struct.dwc2_hsotg* %21)
  br label %23

23:                                               ; preds = %20, %15
  %24 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %25 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %30 = call i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg* %29)
  br label %31

31:                                               ; preds = %28, %23
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @reset_control_assert(i32 %34)
  %36 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %37 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @reset_control_assert(i32 %38)
  ret i32 0
}

declare dso_local %struct.dwc2_hsotg* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @dwc2_debugfs_exit(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hcd_remove(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_hsotg_remove(%struct.dwc2_hsotg*) #1

declare dso_local i32 @dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg*) #1

declare dso_local i32 @reset_control_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
