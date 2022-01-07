; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/controller/dwc/extr_pcie-tegra194.c_tegra_pcie_dw_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_pcie_dw = type { i32, i32, i8*, %struct.TYPE_3__*, i8*, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"nvidia,aspm-cmrt-us\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to read ASPM T_cmrt: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"nvidia,aspm-pwr-on-t-us\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"Failed to read ASPM Power On time: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"nvidia,aspm-l0s-entrance-latency-us\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Failed to read ASPM L0s Entrance latency: %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"num-lanes\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"Failed to read num-lanes: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"nvidia,bpmp\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"Failed to read Controller-ID: %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"phy-names\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"Failed to find PHY entries: %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"nvidia,update-fc-fixup\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"supports-clkreq\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"snps,enable-cdm-check\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_pcie_dw*)* @tegra_pcie_dw_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_pcie_dw_parse_dt(%struct.tegra_pcie_dw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_pcie_dw*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i32, align 4
  store %struct.tegra_pcie_dw* %0, %struct.tegra_pcie_dw** %3, align 8
  %6 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %6, i32 0, i32 3
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  store %struct.device_node* %10, %struct.device_node** %4, align 8
  %11 = load %struct.device_node*, %struct.device_node** %4, align 8
  %12 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %13 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %12, i32 0, i32 10
  %14 = call i32 @of_property_read_u32(%struct.device_node* %11, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %18, i32 0, i32 3
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @dev_info(%struct.TYPE_3__* %20, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* %2, align 4
  br label %117

24:                                               ; preds = %1
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %26, i32 0, i32 9
  %28 = call i32 @of_property_read_u32(%struct.device_node* %25, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32* %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %33 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %32, i32 0, i32 3
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_info(%struct.TYPE_3__* %34, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %31, %24
  %38 = load %struct.device_node*, %struct.device_node** %4, align 8
  %39 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %40 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %39, i32 0, i32 8
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %5, align 4
  %42 = load i32, i32* %5, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %46 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %45, i32 0, i32 3
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32 @dev_info(%struct.TYPE_3__* %47, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %44, %37
  %51 = load %struct.device_node*, %struct.device_node** %4, align 8
  %52 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %53 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %52, i32 0, i32 7
  %54 = call i32 @of_property_read_u32(%struct.device_node* %51, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %59 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %5, align 4
  %62 = call i32 @dev_err(%struct.TYPE_3__* %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* %5, align 4
  store i32 %63, i32* %2, align 4
  br label %117

64:                                               ; preds = %50
  %65 = load %struct.device_node*, %struct.device_node** %4, align 8
  %66 = call i32 @of_pci_get_max_link_speed(%struct.device_node* %65)
  %67 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %68 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %67, i32 0, i32 6
  store i32 %66, i32* %68, align 4
  %69 = load %struct.device_node*, %struct.device_node** %4, align 8
  %70 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %71 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %70, i32 0, i32 5
  %72 = call i32 @of_property_read_u32_index(%struct.device_node* %69, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), i32 1, i32* %71)
  store i32 %72, i32* %5, align 4
  %73 = load i32, i32* %5, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %64
  %76 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %77 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %76, i32 0, i32 3
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @dev_err(%struct.TYPE_3__* %78, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0), i32 %79)
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %117

82:                                               ; preds = %64
  %83 = load %struct.device_node*, %struct.device_node** %4, align 8
  %84 = call i32 @of_property_count_strings(%struct.device_node* %83, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %82
  %88 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %89 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %88, i32 0, i32 3
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %89, align 8
  %91 = load i32, i32* %5, align 4
  %92 = call i32 @dev_err(%struct.TYPE_3__* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %117

94:                                               ; preds = %82
  %95 = load i32, i32* %5, align 4
  %96 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %97 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %96, i32 0, i32 0
  store i32 %95, i32* %97, align 8
  %98 = load %struct.device_node*, %struct.device_node** %4, align 8
  %99 = call i8* @of_property_read_bool(%struct.device_node* %98, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0))
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %94
  %102 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %103 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %102, i32 0, i32 1
  store i32 1, i32* %103, align 4
  br label %104

104:                                              ; preds = %101, %94
  %105 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %106 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %105, i32 0, i32 3
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load %struct.device_node*, %struct.device_node** %108, align 8
  %110 = call i8* @of_property_read_bool(%struct.device_node* %109, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0))
  %111 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %112 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %111, i32 0, i32 4
  store i8* %110, i8** %112, align 8
  %113 = load %struct.device_node*, %struct.device_node** %4, align 8
  %114 = call i8* @of_property_read_bool(%struct.device_node* %113, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  %115 = load %struct.tegra_pcie_dw*, %struct.tegra_pcie_dw** %3, align 8
  %116 = getelementptr inbounds %struct.tegra_pcie_dw, %struct.tegra_pcie_dw* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %104, %87, %75, %57, %17
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_info(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @of_pci_get_max_link_speed(%struct.device_node*) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
