; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c___dwc2_lowlevel_hw_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_platform.c___dwc2_lowlevel_hw_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32, i64, i32, %struct.TYPE_2__*, i64, i32 }
%struct.TYPE_2__ = type { i32 (%struct.platform_device*, i32)*, i32 }
%struct.platform_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dwc2_hsotg*)* @__dwc2_lowlevel_hw_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dwc2_lowlevel_hw_disable(%struct.dwc2_hsotg* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dwc2_hsotg*, align 8
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %3, align 8
  %6 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %7 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %6, i32 0, i32 5
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.platform_device* @to_platform_device(i32 %8)
  store %struct.platform_device* %9, %struct.platform_device** %4, align 8
  store i32 0, i32* %5, align 4
  %10 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %11 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %10, i32 0, i32 4
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %16 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @usb_phy_shutdown(i64 %17)
  br label %58

19:                                               ; preds = %1
  %20 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %21 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %20, i32 0, i32 3
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = icmp ne %struct.TYPE_2__* %22, null
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %26 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %28, align 8
  %30 = icmp ne i32 (%struct.platform_device*, i32)* %29, null
  br i1 %30, label %31, label %44

31:                                               ; preds = %24
  %32 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %33 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %32, i32 0, i32 3
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*, i32)** %35, align 8
  %37 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %38 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %39 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %38, i32 0, i32 3
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 %36(%struct.platform_device* %37, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %57

44:                                               ; preds = %24, %19
  %45 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %46 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @phy_exit(i32 %47)
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %44
  %52 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %53 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @phy_power_off(i32 %54)
  store i32 %55, i32* %5, align 4
  br label %56

56:                                               ; preds = %51, %44
  br label %57

57:                                               ; preds = %56, %31
  br label %58

58:                                               ; preds = %57, %14
  %59 = load i32, i32* %5, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = load i32, i32* %5, align 4
  store i32 %62, i32* %2, align 4
  br label %83

63:                                               ; preds = %58
  %64 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %65 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %70 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @clk_disable_unprepare(i64 %71)
  br label %73

73:                                               ; preds = %68, %63
  %74 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %75 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @ARRAY_SIZE(i32 %76)
  %78 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %3, align 8
  %79 = getelementptr inbounds %struct.dwc2_hsotg, %struct.dwc2_hsotg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @regulator_bulk_disable(i32 %77, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %73, %61
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.platform_device* @to_platform_device(i32) #1

declare dso_local i32 @usb_phy_shutdown(i64) #1

declare dso_local i32 @phy_exit(i32) #1

declare dso_local i32 @phy_power_off(i32) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
