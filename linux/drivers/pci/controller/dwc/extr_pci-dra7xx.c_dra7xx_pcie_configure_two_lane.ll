; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_configure_two_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pci-dra7xx.c_dra7xx_pcie_configure_two_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.regmap = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"ti,syscon-lane-sel\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"unable to get ti,syscon-lane-sel\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"couldn't get lane selection reg offset\0A\00", align 1
@PCIE_B0_B1_TSYNCEN = common dso_local global i32 0, align 4
@PCIE_B1C0_MODE_SEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @dra7xx_pcie_configure_two_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dra7xx_pcie_configure_two_lane(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.regmap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %6, align 8
  %14 = load %struct.device_node*, %struct.device_node** %6, align 8
  %15 = call %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.regmap* %15, %struct.regmap** %7, align 8
  %16 = load %struct.regmap*, %struct.regmap** %7, align 8
  %17 = call i64 @IS_ERR(%struct.regmap* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %2
  %20 = load %struct.device*, %struct.device** %4, align 8
  %21 = call i32 @dev_err(%struct.device* %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %45

24:                                               ; preds = %2
  %25 = load %struct.device_node*, %struct.device_node** %6, align 8
  %26 = call i64 @of_property_read_u32_index(%struct.device_node* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 1, i32* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_err(%struct.device* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %45

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @PCIE_B0_B1_TSYNCEN, align 4
  %36 = or i32 %34, %35
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* @PCIE_B1C0_MODE_SEL, align 4
  %38 = load i32, i32* @PCIE_B0_B1_TSYNCEN, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %10, align 4
  %40 = load %struct.regmap*, %struct.regmap** %7, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @regmap_update_bits(%struct.regmap* %40, i32 %41, i32 %42, i32 %43)
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %33, %28, %19
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.regmap* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.regmap*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @regmap_update_bits(%struct.regmap*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
