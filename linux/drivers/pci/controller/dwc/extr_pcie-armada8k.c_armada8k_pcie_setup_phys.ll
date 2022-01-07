; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_setup_phys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-armada8k.c_armada8k_pcie_setup_phys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.armada8k_pcie = type { i32, i32**, %struct.dw_pcie* }
%struct.dw_pcie = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@ARMADA8K_PCIE_MAX_LANES = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"No available PHY\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Failed to initialize PHY(s) (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.armada8k_pcie*)* @armada8k_pcie_setup_phys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @armada8k_pcie_setup_phys(%struct.armada8k_pcie* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.armada8k_pcie*, align 8
  %4 = alloca %struct.dw_pcie*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.armada8k_pcie* %0, %struct.armada8k_pcie** %3, align 8
  %9 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %10 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %9, i32 0, i32 2
  %11 = load %struct.dw_pcie*, %struct.dw_pcie** %10, align 8
  store %struct.dw_pcie* %11, %struct.dw_pcie** %4, align 8
  %12 = load %struct.dw_pcie*, %struct.dw_pcie** %4, align 8
  %13 = getelementptr inbounds %struct.dw_pcie, %struct.dw_pcie* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %5, align 8
  %15 = load %struct.device*, %struct.device** %5, align 8
  %16 = getelementptr inbounds %struct.device, %struct.device* %15, i32 0, i32 0
  %17 = load %struct.device_node*, %struct.device_node** %16, align 8
  store %struct.device_node* %17, %struct.device_node** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %75, %1
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @ARMADA8K_PCIE_MAX_LANES, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %78

22:                                               ; preds = %18
  %23 = load %struct.device*, %struct.device** %5, align 8
  %24 = load %struct.device_node*, %struct.device_node** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32* @devm_of_phy_get_by_index(%struct.device* %23, %struct.device_node* %24, i32 %25)
  %27 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %28 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %27, i32 0, i32 1
  %29 = load i32**, i32*** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  store i32* %26, i32** %32, align 8
  %33 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %34 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %33, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32*, i32** %35, i64 %37
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %22
  %43 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %44 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %43, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @PTR_ERR(i32* %49)
  %51 = load i32, i32* @ENODEV, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp ne i32 %50, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %42
  %55 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %56 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %55, i32 0, i32 1
  %57 = load i32**, i32*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32*, i32** %57, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @PTR_ERR(i32* %61)
  store i32 %62, i32* %2, align 4
  br label %97

63:                                               ; preds = %42
  %64 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %65 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32*, i32** %66, i64 %68
  store i32* null, i32** %69, align 8
  br label %75

70:                                               ; preds = %22
  %71 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %72 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 8
  br label %75

75:                                               ; preds = %70, %63
  %76 = load i32, i32* %8, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %8, align 4
  br label %18

78:                                               ; preds = %18
  %79 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %80 = getelementptr inbounds %struct.armada8k_pcie, %struct.armada8k_pcie* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %78
  %84 = load %struct.device*, %struct.device** %5, align 8
  %85 = call i32 @dev_warn(%struct.device* %84, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %86

86:                                               ; preds = %83, %78
  %87 = load %struct.armada8k_pcie*, %struct.armada8k_pcie** %3, align 8
  %88 = call i32 @armada8k_pcie_enable_phys(%struct.armada8k_pcie* %87)
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %86
  %92 = load %struct.device*, %struct.device** %5, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @dev_err(%struct.device* %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %91, %86
  %96 = load i32, i32* %7, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %54
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32* @devm_of_phy_get_by_index(%struct.device*, %struct.device_node*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @armada8k_pcie_enable_phys(%struct.armada8k_pcie*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
