; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_slot_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_enable_slot_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i64, i64, i32 }

@.str = private unnamed_addr constant [39 x i8] c"Failed to enable 3.3V slot supply: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Failed to enable 12V slot supply: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_enable_slot_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_enable_slot_regulators(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  %4 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  %5 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @regulator_enable(i64 %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %9
  %17 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dev_err(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %68

23:                                               ; preds = %9
  br label %24

24:                                               ; preds = %23, %1
  %25 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %43

29:                                               ; preds = %24
  %30 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @regulator_enable(i64 %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %29
  %37 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @dev_err(i32 %39, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %56

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %43
  %49 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %50 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48, %43
  %54 = call i32 @msleep(i32 100)
  br label %55

55:                                               ; preds = %53, %48
  store i32 0, i32* %2, align 4
  br label %68

56:                                               ; preds = %36
  %57 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %58 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %63 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @regulator_disable(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  %67 = load i32, i32* %4, align 4
  store i32 %67, i32* %2, align 4
  br label %68

68:                                               ; preds = %66, %55, %16
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @regulator_enable(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @regulator_disable(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
