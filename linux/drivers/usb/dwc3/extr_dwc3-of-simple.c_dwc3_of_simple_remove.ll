; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-of-simple.c_dwc3_of_simple_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-of-simple.c_dwc3_of_simple_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.device }
%struct.device = type { i32 }
%struct.dwc3_of_simple = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_of_simple_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_of_simple_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dwc3_of_simple*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dwc3_of_simple* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.dwc3_of_simple* %6, %struct.dwc3_of_simple** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @of_platform_depopulate(%struct.device* %9)
  %11 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %15 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_bulk_disable_unprepare(i64 %13, i32 %16)
  %18 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %19 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %22 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_bulk_put_all(i64 %20, i32 %23)
  %25 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %26 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %25, i32 0, i32 2
  store i64 0, i64* %26, align 8
  %27 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %28 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %33 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @reset_control_assert(i32 %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load %struct.dwc3_of_simple*, %struct.dwc3_of_simple** %3, align 8
  %38 = getelementptr inbounds %struct.dwc3_of_simple, %struct.dwc3_of_simple* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @reset_control_put(i32 %39)
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = call i32 @pm_runtime_disable(%struct.device* %41)
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @pm_runtime_put_noidle(%struct.device* %43)
  %45 = load %struct.device*, %struct.device** %4, align 8
  %46 = call i32 @pm_runtime_set_suspended(%struct.device* %45)
  ret i32 0
}

declare dso_local %struct.dwc3_of_simple* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_platform_depopulate(%struct.device*) #1

declare dso_local i32 @clk_bulk_disable_unprepare(i64, i32) #1

declare dso_local i32 @clk_bulk_put_all(i64, i32) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @reset_control_put(i32) #1

declare dso_local i32 @pm_runtime_disable(%struct.device*) #1

declare dso_local i32 @pm_runtime_put_noidle(%struct.device*) #1

declare dso_local i32 @pm_runtime_set_suspended(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
