; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_get_slot_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_get_slot_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32*, i32, i32* }

@.str = private unnamed_addr constant [9 x i8] c"vpcie3v3\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"vpcie12v\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_get_slot_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_get_slot_regulators(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  %4 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %5 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call i8* @devm_regulator_get_optional(i32 %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %8 = bitcast i8* %7 to i32*
  %9 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %9, i32 0, i32 2
  store i32* %8, i32** %10, align 8
  %11 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @IS_ERR(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %1
  %17 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %18 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @PTR_ERR(i32* %19)
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @PTR_ERR(i32* %27)
  store i32 %28, i32* %2, align 4
  br label %62

29:                                               ; preds = %16
  %30 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %31 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %30, i32 0, i32 2
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i8* @devm_regulator_get_optional(i32 %35, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %37 = bitcast i8* %36 to i32*
  %38 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %39 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %38, i32 0, i32 0
  store i32* %37, i32** %39, align 8
  %40 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = call i64 @IS_ERR(i32* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %32
  %46 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = call i32 @PTR_ERR(i32* %48)
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp ne i32 %49, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %45
  %54 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @PTR_ERR(i32* %56)
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %45
  %59 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %59, i32 0, i32 0
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %58, %32
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %53, %24
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i8* @devm_regulator_get_optional(i32, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
