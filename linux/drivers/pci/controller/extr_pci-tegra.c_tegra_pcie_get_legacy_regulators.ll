; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_legacy_regulators.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_get_legacy_regulators.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie = type { i32, %struct.TYPE_3__*, %struct.device* }
%struct.TYPE_3__ = type { i8* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"nvidia,tegra30-pcie\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"nvidia,tegra20-pcie\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"device %pOF not supported in legacy mode\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"pex-clk\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"vdd\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"avdd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie*)* @tegra_pcie_get_legacy_regulators to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_get_legacy_regulators(%struct.tegra_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.tegra_pcie* %0, %struct.tegra_pcie** %3, align 8
  %6 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %6, i32 0, i32 2
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 0
  %11 = load %struct.device_node*, %struct.device_node** %10, align 8
  store %struct.device_node* %11, %struct.device_node** %5, align 8
  %12 = load %struct.device_node*, %struct.device_node** %5, align 8
  %13 = call i64 @of_device_is_compatible(%struct.device_node* %12, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %16, i32 0, i32 0
  store i32 3, i32* %17, align 8
  br label %26

18:                                               ; preds = %1
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call i64 @of_device_is_compatible(%struct.device_node* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %24 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %23, i32 0, i32 0
  store i32 2, i32* %24, align 8
  br label %25

25:                                               ; preds = %22, %18
  br label %26

26:                                               ; preds = %25, %15
  %27 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %26
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load %struct.device_node*, %struct.device_node** %5, align 8
  %34 = call i32 @dev_err(%struct.device* %32, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), %struct.device_node* %33)
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %83

37:                                               ; preds = %26
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.TYPE_3__* @devm_kcalloc(%struct.device* %38, i32 %41, i32 8, i32 %42)
  %44 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %45 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %44, i32 0, i32 1
  store %struct.TYPE_3__* %43, %struct.TYPE_3__** %45, align 8
  %46 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %47 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = icmp ne %struct.TYPE_3__* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %37
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %2, align 4
  br label %83

53:                                               ; preds = %37
  %54 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %55 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %54, i32 0, i32 1
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i64 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8** %58, align 8
  %59 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %60 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i8** %63, align 8
  %64 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = icmp sgt i32 %66, 2
  br i1 %67, label %68, label %74

68:                                               ; preds = %53
  %69 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %70 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %69, i32 0, i32 1
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 2
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %73, align 8
  br label %74

74:                                               ; preds = %68, %53
  %75 = load %struct.device*, %struct.device** %4, align 8
  %76 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.tegra_pcie*, %struct.tegra_pcie** %3, align 8
  %80 = getelementptr inbounds %struct.tegra_pcie, %struct.tegra_pcie* %79, i32 0, i32 1
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %80, align 8
  %82 = call i32 @devm_regulator_bulk_get(%struct.device* %75, i32 %78, %struct.TYPE_3__* %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %74, %50, %31
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @of_device_is_compatible(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, %struct.device_node*) #1

declare dso_local %struct.TYPE_3__* @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local i32 @devm_regulator_bulk_get(%struct.device*, i32, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
