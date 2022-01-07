; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c___dwc2_lowlevel_hw_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c___dwc2_lowlevel_hw_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, %struct.TYPE_2__*, i64, i64, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.platform_device*, i32)*, i32 }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @__dwc2_lowlevel_hw_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc2_lowlevel_hw_enable(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %15 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @regulator_bulk_enable(i32 %13, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %1
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %88

22:                                               ; preds = %1
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %24 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %22
  %28 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %29 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @clk_prepare_enable(i64 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %88

36:                                               ; preds = %27
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %44 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @usb_phy_init(i64 %45)
  store i32 %46, i32* %5, align 4
  br label %86

47:                                               ; preds = %37
  %48 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %49 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = icmp ne %struct.TYPE_2__* %50, null
  br i1 %51, label %52, label %72

52:                                               ; preds = %47
  %53 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %54 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %53, i32 0, i32 1
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %56, align 8
  %58 = icmp ne i32 (%struct.platform_device*, i32)* %57, null
  br i1 %58, label %59, label %72

59:                                               ; preds = %52
  %60 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %61 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %63, align 8
  %65 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %66 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %67 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i32 %64(%struct.platform_device* %65, i32 %70)
  store i32 %71, i32* %5, align 4
  br label %85

72:                                               ; preds = %52, %47
  %73 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %74 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @phy_power_on(i32 %75)
  store i32 %76, i32* %5, align 4
  %77 = load i32, i32* %5, align 4
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %72
  %80 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %81 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @phy_init(i32 %82)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %79, %72
  br label %85

85:                                               ; preds = %84, %59
  br label %86

86:                                               ; preds = %85, %42
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %86, %34, %20
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @usb_phy_init(i64) #1

declare dso_local i32 @phy_power_on(i32) #1

declare dso_local i32 @phy_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
