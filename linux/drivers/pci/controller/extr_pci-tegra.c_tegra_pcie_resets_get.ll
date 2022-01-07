; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_resets_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_resets_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i8*, i8*, i8*, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"pex\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"afi\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"pcie_x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_resets_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_resets_get(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %5 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %6 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %5, i32 0, i32 3
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = call i8* @devm_reset_control_get_exclusive(%struct.device* %8, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %10, i32 0, i32 2
  store i8* %9, i8** %11, align 8
  %12 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %12, i32 0, i32 2
  %14 = load i8*, i8** %13, align 8
  %15 = call i64 @IS_ERR(i8* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %18, i32 0, i32 2
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @PTR_ERR(i8* %20)
  store i32 %21, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i8* @devm_reset_control_get_exclusive(%struct.device* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %25, i32 0, i32 1
  store i8* %24, i8** %26, align 8
  %27 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %27, i32 0, i32 1
  %29 = load i8*, i8** %28, align 8
  %30 = call i64 @IS_ERR(i8* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %33, i32 0, i32 1
  %35 = load i8*, i8** %34, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %2, align 4
  br label %53

37:                                               ; preds = %22
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = call i8* @devm_reset_control_get_exclusive(%struct.device* %38, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %41 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %43 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = call i64 @IS_ERR(i8* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %37
  %48 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %49 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @PTR_ERR(i8* %50)
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %37
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %47, %32, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i8* @devm_reset_control_get_exclusive(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
