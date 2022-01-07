; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-exynos.c_dwc3_exynos_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc3/extr_dwc3-exynos.c_dwc3_exynos_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.dwc3_exynos = type { i32, i64, i32, i32, i32* }

@dwc3_exynos_remove_child = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dwc3_exynos_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dwc3_exynos_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.dwc3_exynos*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.dwc3_exynos* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.dwc3_exynos* %6, %struct.dwc3_exynos** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = load i32, i32* @dwc3_exynos_remove_child, align 4
  %10 = call i32 @device_for_each_child(i32* %8, i32* null, i32 %9)
  %11 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %12 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %27, %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %20 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  br label %27

27:                                               ; preds = %18
  %28 = load i32, i32* %4, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %4, align 4
  br label %15

30:                                               ; preds = %15
  %31 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %32 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp uge i64 %33, 0
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %37 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %36, i32 0, i32 4
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %40 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  br label %45

45:                                               ; preds = %35, %30
  %46 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %47 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @regulator_disable(i32 %48)
  %50 = load %struct.dwc3_exynos*, %struct.dwc3_exynos** %3, align 8
  %51 = getelementptr inbounds %struct.dwc3_exynos, %struct.dwc3_exynos* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @regulator_disable(i32 %52)
  ret i32 0
}

declare dso_local %struct.dwc3_exynos* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @device_for_each_child(i32*, i32*, i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
