; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos5440_pcie_get_clk_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-exynos.c_exynos5440_pcie_get_clk_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.exynos_pcie = type { %struct.TYPE_2__*, %struct.dw_pcie* }
%struct.TYPE_2__ = type { i8*, i8* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get pcie rc clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"pcie_bus\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to get pcie bus clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.exynos_pcie*)* @exynos5440_pcie_get_clk_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exynos5440_pcie_get_clk_resources(%struct.exynos_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.exynos_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  store %struct.exynos_pcie* %0, %struct.exynos_pcie** %3, align 8
  %6 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %6, i32 0, i32 1
  %8 = load %struct.dw_pcie*, %struct.dw_pcie** %7, align 8
  store %struct.dw_pcie* %8, %struct.dw_pcie** %4, align 8
  %9 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %10 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %9, i32 0, i32 0
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  %12 = load %struct.device*, %struct.device** %5, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_2__* @devm_kzalloc(%struct.device* %12, i32 16, i32 %13)
  %15 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %16 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %15, i32 0, i32 0
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %16, align 8
  %17 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %18 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = icmp ne %struct.TYPE_2__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %71

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %5, align 8
  %26 = call i8* @devm_clk_get(%struct.device* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i8* %26, i8** %30, align 8
  %31 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %32 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i64 @IS_ERR(i8* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %24
  %39 = load %struct.device*, %struct.device** %5, align 8
  %40 = call i32 @dev_err(%struct.device* %39, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %42 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @PTR_ERR(i8* %45)
  store i32 %46, i32* %2, align 4
  br label %71

47:                                               ; preds = %24
  %48 = load %struct.device*, %struct.device** %5, align 8
  %49 = call i8* @devm_clk_get(%struct.device* %48, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %50 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %51 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i8* %49, i8** %53, align 8
  %54 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %54, i32 0, i32 0
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = call i64 @IS_ERR(i8* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %70

61:                                               ; preds = %47
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.exynos_pcie*, %struct.exynos_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.exynos_pcie, %struct.exynos_pcie* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i32 @PTR_ERR(i8* %68)
  store i32 %69, i32* %2, align 4
  br label %71

70:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %61, %38, %21
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_2__* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
