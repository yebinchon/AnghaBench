; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_get_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/extr_pci-tegra.c_tegra_pcie_port_get_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_port = type { i32, %struct.phy**, i32, %struct.TYPE_2__* }
%struct.phy = type { i32 }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"pcie\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"failed to get PHY#%u: %ld\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"failed to initialize PHY#%u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_port*)* @tegra_pcie_port_get_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_port_get_phys(%struct.tegra_pcie_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_port*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.phy*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tegra_pcie_port* %0, %struct.tegra_pcie_port** %3, align 8
  %8 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %9 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %8, i32 0, i32 3
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %15 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.phy** @devm_kcalloc(%struct.device* %13, i32 8, i32 %16, i32 %17)
  %19 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %20 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %19, i32 0, i32 1
  store %struct.phy** %18, %struct.phy*** %20, align 8
  %21 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %21, i32 0, i32 1
  %23 = load %struct.phy**, %struct.phy*** %22, align 8
  %24 = icmp ne %struct.phy** %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %1
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %76

28:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %29

29:                                               ; preds = %72, %28
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %32 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %75

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %38 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* %6, align 4
  %41 = call %struct.phy* @devm_of_phy_optional_get_index(%struct.device* %36, i32 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %40)
  store %struct.phy* %41, %struct.phy** %5, align 8
  %42 = load %struct.phy*, %struct.phy** %5, align 8
  %43 = call i64 @IS_ERR(%struct.phy* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %35
  %46 = load %struct.device*, %struct.device** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.phy*, %struct.phy** %5, align 8
  %49 = call i32 @PTR_ERR(%struct.phy* %48)
  %50 = call i32 @dev_err(%struct.device* %46, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %49)
  %51 = load %struct.phy*, %struct.phy** %5, align 8
  %52 = call i32 @PTR_ERR(%struct.phy* %51)
  store i32 %52, i32* %2, align 4
  br label %76

53:                                               ; preds = %35
  %54 = load %struct.phy*, %struct.phy** %5, align 8
  %55 = call i32 @phy_init(%struct.phy* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load %struct.device*, %struct.device** %4, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @dev_err(%struct.device* %59, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %60, i32 %61)
  %63 = load i32, i32* %7, align 4
  store i32 %63, i32* %2, align 4
  br label %76

64:                                               ; preds = %53
  %65 = load %struct.phy*, %struct.phy** %5, align 8
  %66 = load %struct.tegra_pcie_port*, %struct.tegra_pcie_port** %3, align 8
  %67 = getelementptr inbounds %struct.tegra_pcie_port, %struct.tegra_pcie_port* %66, i32 0, i32 1
  %68 = load %struct.phy**, %struct.phy*** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.phy*, %struct.phy** %68, i64 %70
  store %struct.phy* %65, %struct.phy** %71, align 8
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %6, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %6, align 4
  br label %29

75:                                               ; preds = %29
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %58, %45, %25
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.phy** @devm_kcalloc(%struct.device*, i32, i32, i32) #1

declare dso_local %struct.phy* @devm_of_phy_optional_get_index(%struct.device*, i32, i8*, i32) #1

declare dso_local i64 @IS_ERR(%struct.phy*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.phy*) #1

declare dso_local i32 @phy_init(%struct.phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
