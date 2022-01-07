; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_phys_get_legacy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_phys_get_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"failed to get PHY: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"failed to initialize PHY: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_phys_get_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_phys_get_legacy(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i32 @devm_phy_optional_get(%struct.device* %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_ERR(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %1
  %19 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @PTR_ERR(i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* %2, align 4
  br label %42

27:                                               ; preds = %1
  %28 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %29 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @phy_init(i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.device*, %struct.device** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %2, align 4
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %39, %34, %18
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @devm_phy_optional_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @phy_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
