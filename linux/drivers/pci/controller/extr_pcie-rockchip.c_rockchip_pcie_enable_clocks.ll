; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_enable_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pcie-rockchip.c_rockchip_pcie_enable_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rockchip_pcie = type { i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"unable to enable aclk_pcie clock\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"unable to enable aclk_perf_pcie clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"unable to enable hclk_pcie clock\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"unable to enable clk_pcie_pm clock\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rockchip_pcie_enable_clocks(%struct.rockchip_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rockchip_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.rockchip_pcie* %0, %struct.rockchip_pcie** %3, align 8
  %6 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %6, i32 0, i32 4
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @clk_prepare_enable(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = call i32 @dev_err(%struct.device* %16, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* %5, align 4
  store i32 %18, i32* %2, align 4
  br label %66

19:                                               ; preds = %1
  %20 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %21 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @clk_prepare_enable(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %19
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i32 @dev_err(%struct.device* %27, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  br label %60

29:                                               ; preds = %19
  %30 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %31 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @clk_prepare_enable(i32 %32)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = call i32 @dev_err(%struct.device* %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %55

39:                                               ; preds = %29
  %40 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %41 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @clk_prepare_enable(i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %39
  %47 = load %struct.device*, %struct.device** %4, align 8
  %48 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  br label %50

49:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %66

50:                                               ; preds = %46
  %51 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %52 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @clk_disable_unprepare(i32 %53)
  br label %55

55:                                               ; preds = %50, %36
  %56 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %57 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @clk_disable_unprepare(i32 %58)
  br label %60

60:                                               ; preds = %55, %26
  %61 = load %struct.rockchip_pcie*, %struct.rockchip_pcie** %3, align 8
  %62 = getelementptr inbounds %struct.rockchip_pcie, %struct.rockchip_pcie* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @clk_disable_unprepare(i32 %63)
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %60, %49, %15
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
