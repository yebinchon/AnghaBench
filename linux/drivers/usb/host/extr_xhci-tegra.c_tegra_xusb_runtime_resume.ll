; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_runtime_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-tegra.c_tegra_xusb_runtime_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_xusb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"failed to enable clocks: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to enable regulators: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to enable PHYs: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @tegra_xusb_runtime_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_xusb_runtime_resume(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_xusb*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.tegra_xusb* @dev_get_drvdata(%struct.device* %6)
  store %struct.tegra_xusb* %7, %struct.tegra_xusb** %4, align 8
  %8 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %9 = call i32 @tegra_xusb_clk_enable(%struct.tegra_xusb* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %57

17:                                               ; preds = %1
  %18 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %19 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %24 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @regulator_bulk_enable(i32 %22, i32 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %17
  %30 = load %struct.device*, %struct.device** %3, align 8
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %53

33:                                               ; preds = %17
  %34 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %35 = call i32 @tegra_xusb_phy_enable(%struct.tegra_xusb* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33
  %39 = load %struct.device*, %struct.device** %3, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  br label %43

42:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %57

43:                                               ; preds = %38
  %44 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %45 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %50 = getelementptr inbounds %struct.tegra_xusb, %struct.tegra_xusb* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @regulator_bulk_disable(i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %43, %29
  %54 = load %struct.tegra_xusb*, %struct.tegra_xusb** %4, align 8
  %55 = call i32 @tegra_xusb_clk_disable(%struct.tegra_xusb* %54)
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %42, %12
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.tegra_xusb* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @tegra_xusb_clk_enable(%struct.tegra_xusb*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @tegra_xusb_phy_enable(%struct.tegra_xusb*) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @tegra_xusb_clk_disable(%struct.tegra_xusb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
