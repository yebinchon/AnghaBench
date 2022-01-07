; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/tegra/extr_soctherm.c_soctherm_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_soctherm = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*, i32)* @soctherm_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @soctherm_clk_enable(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.platform_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tegra_soctherm*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %4, align 8
  %9 = call %struct.tegra_soctherm* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.tegra_soctherm* %9, %struct.tegra_soctherm** %6, align 8
  %10 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %11 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %2
  %15 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %16 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %14, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %74

22:                                               ; preds = %14
  %23 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @reset_control_assert(i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %60

29:                                               ; preds = %22
  %30 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %31 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @reset_control_deassert(i32 %39)
  %41 = load i32, i32* %7, align 4
  store i32 %41, i32* %3, align 4
  br label %74

42:                                               ; preds = %29
  %43 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %44 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @clk_prepare_enable(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %42
  %50 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %51 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @clk_disable_unprepare(i32 %52)
  %54 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %55 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @reset_control_deassert(i32 %56)
  %58 = load i32, i32* %7, align 4
  store i32 %58, i32* %3, align 4
  br label %74

59:                                               ; preds = %42
  br label %69

60:                                               ; preds = %22
  %61 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %62 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @clk_disable_unprepare(i32 %63)
  %65 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %66 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @clk_disable_unprepare(i32 %67)
  br label %69

69:                                               ; preds = %60, %59
  %70 = load %struct.tegra_soctherm*, %struct.tegra_soctherm** %6, align 8
  %71 = getelementptr inbounds %struct.tegra_soctherm, %struct.tegra_soctherm* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @reset_control_deassert(i32 %72)
  store i32 0, i32* %3, align 4
  br label %74

74:                                               ; preds = %69, %49, %36, %19
  %75 = load i32, i32* %3, align 4
  ret i32 %75
}

declare dso_local %struct.tegra_soctherm* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @reset_control_assert(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @reset_control_deassert(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
