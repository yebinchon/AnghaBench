; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_clocks_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_clocks_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i8*, i8*, i8*, i8*, %struct.tegra_pcie_soc*, %struct.device* }
%struct.tegra_pcie_soc = type { i64 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pex\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"pll_e\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"cml\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_clocks_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_clocks_get(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.tegra_pcie_soc*, align 8
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 5
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %9, i32 0, i32 4
  %11 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %10, align 8
  store %struct.tegra_pcie_soc* %11, %struct.tegra_pcie_soc** %5, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = call i8* @devm_clk_get(%struct.device* %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %14, i32 0, i32 3
  store i8* %13, i8** %15, align 8
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 3
  %18 = load i8*, i8** %17, align 8
  %19 = call i64 @IS_ERR(i8* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %1
  %22 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %23 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %22, i32 0, i32 3
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 @PTR_ERR(i8* %24)
  store i32 %25, i32* %2, align 4
  br label %78

26:                                               ; preds = %1
  %27 = load %struct.device*, %struct.device** %4, align 8
  %28 = call i8* @devm_clk_get(%struct.device* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %29 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %30 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %31, i32 0, i32 2
  %33 = load i8*, i8** %32, align 8
  %34 = call i64 @IS_ERR(i8* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %26
  %37 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %37, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @PTR_ERR(i8* %39)
  store i32 %40, i32* %2, align 4
  br label %78

41:                                               ; preds = %26
  %42 = load %struct.device*, %struct.device** %4, align 8
  %43 = call i8* @devm_clk_get(%struct.device* %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %44, i32 0, i32 1
  store i8* %43, i8** %45, align 8
  %46 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %46, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 @IS_ERR(i8* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %41
  %52 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %52, i32 0, i32 1
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @PTR_ERR(i8* %54)
  store i32 %55, i32* %2, align 4
  br label %78

56:                                               ; preds = %41
  %57 = load %struct.tegra_pcie_soc*, %struct.tegra_pcie_soc** %5, align 8
  %58 = getelementptr inbounds %struct.tegra_pcie_soc, %struct.tegra_pcie_soc* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i8* @devm_clk_get(%struct.device* %62, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %64, i32 0, i32 0
  store i8* %63, i8** %65, align 8
  %66 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = call i64 @IS_ERR(i8* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %61
  %72 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %73 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i32 @PTR_ERR(i8* %74)
  store i32 %75, i32* %2, align 4
  br label %78

76:                                               ; preds = %61
  br label %77

77:                                               ; preds = %76, %56
  store i32 0, i32* %2, align 4
  br label %78

78:                                               ; preds = %77, %71, %51, %36, %21
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i8* @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
