; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_sysctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/ti/extr_phy-ti-pipe3.c_ti_pipe3_get_sysctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ti_pipe3 = type { i64, i32, i32*, i32, i32*, i32*, i32*, i32, %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"syscon-phy-power\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"can't get syscon-phy-power, using control device\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"couldn't get power reg. offset\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [12 x i8] c"ctrl-module\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"Failed to get control device phandle\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to get control device\0A\00", align 1
@PIPE3_MODE_PCIE = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [11 x i8] c"syscon-pcs\00", align 1
@.str.7 = private unnamed_addr constant [42 x i8] c"can't get syscon-pcs, using omap control\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"couldn't get pcie pcs reg. offset\0A\00", align 1
@PIPE3_MODE_SATA = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [16 x i8] c"syscon-pllreset\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"can't get syscon-pllreset, sata dpll won't idle\0A\00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"couldn't get pllreset reg. offset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ti_pipe3*)* @ti_pipe3_get_sysctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ti_pipe3_get_sysctrl(%struct.ti_pipe3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ti_pipe3*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.platform_device*, align 8
  store %struct.ti_pipe3* %0, %struct.ti_pipe3** %3, align 8
  %8 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %9 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %8, i32 0, i32 8
  %10 = load %struct.device*, %struct.device** %9, align 8
  store %struct.device* %10, %struct.device** %4, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %14, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast i8* %15 to i32*
  %17 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %18 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %17, i32 0, i32 6
  store i32* %16, i32** %18, align 8
  %19 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %20 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %19, i32 0, i32 6
  %21 = load i32*, i32** %20, align 8
  %22 = call i64 @IS_ERR(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load %struct.device*, %struct.device** %4, align 8
  %26 = call i32 @dev_dbg(%struct.device* %25, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %28 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %27, i32 0, i32 6
  store i32* null, i32** %28, align 8
  br label %41

29:                                               ; preds = %1
  %30 = load %struct.device_node*, %struct.device_node** %5, align 8
  %31 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %32 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %31, i32 0, i32 7
  %33 = call i64 @of_property_read_u32_index(%struct.device_node* %30, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 1, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.device*, %struct.device** %4, align 8
  %37 = call i32 @dev_err(%struct.device* %36, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %2, align 4
  br label %142

40:                                               ; preds = %29
  br label %41

41:                                               ; preds = %40, %24
  %42 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %43 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %42, i32 0, i32 6
  %44 = load i32*, i32** %43, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %71, label %46

46:                                               ; preds = %41
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %47, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i32 0)
  store %struct.device_node* %48, %struct.device_node** %6, align 8
  %49 = load %struct.device_node*, %struct.device_node** %6, align 8
  %50 = icmp ne %struct.device_node* %49, null
  br i1 %50, label %56, label %51

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.4, i64 0, i64 0))
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %142

56:                                               ; preds = %46
  %57 = load %struct.device_node*, %struct.device_node** %6, align 8
  %58 = call %struct.platform_device* @of_find_device_by_node(%struct.device_node* %57)
  store %struct.platform_device* %58, %struct.platform_device** %7, align 8
  %59 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %60 = icmp ne %struct.platform_device* %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %56
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %142

66:                                               ; preds = %56
  %67 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %67, i32 0, i32 0
  %69 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %70 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %69, i32 0, i32 5
  store i32* %68, i32** %70, align 8
  br label %71

71:                                               ; preds = %66, %41
  %72 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %73 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @PIPE3_MODE_PCIE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %106

77:                                               ; preds = %71
  %78 = load %struct.device_node*, %struct.device_node** %5, align 8
  %79 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0))
  %80 = bitcast i8* %79 to i32*
  %81 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %82 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %81, i32 0, i32 4
  store i32* %80, i32** %82, align 8
  %83 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %84 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = call i64 @IS_ERR(i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.device*, %struct.device** %4, align 8
  %90 = call i32 @dev_dbg(%struct.device* %89, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.7, i64 0, i64 0))
  %91 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %92 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %91, i32 0, i32 4
  store i32* null, i32** %92, align 8
  br label %105

93:                                               ; preds = %77
  %94 = load %struct.device_node*, %struct.device_node** %5, align 8
  %95 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %96 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %95, i32 0, i32 3
  %97 = call i64 @of_property_read_u32_index(%struct.device_node* %94, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.6, i64 0, i64 0), i32 1, i32* %96)
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.device*, %struct.device** %4, align 8
  %101 = call i32 @dev_err(%struct.device* %100, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %2, align 4
  br label %142

104:                                              ; preds = %93
  br label %105

105:                                              ; preds = %104, %88
  br label %106

106:                                              ; preds = %105, %71
  %107 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %108 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PIPE3_MODE_SATA, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %141

112:                                              ; preds = %106
  %113 = load %struct.device_node*, %struct.device_node** %5, align 8
  %114 = call i8* @syscon_regmap_lookup_by_phandle(%struct.device_node* %113, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0))
  %115 = bitcast i8* %114 to i32*
  %116 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %117 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %116, i32 0, i32 2
  store i32* %115, i32** %117, align 8
  %118 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %119 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = call i64 @IS_ERR(i32* %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %128

123:                                              ; preds = %112
  %124 = load %struct.device*, %struct.device** %4, align 8
  %125 = call i32 @dev_info(%struct.device* %124, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %126 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %127 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %126, i32 0, i32 2
  store i32* null, i32** %127, align 8
  br label %140

128:                                              ; preds = %112
  %129 = load %struct.device_node*, %struct.device_node** %5, align 8
  %130 = load %struct.ti_pipe3*, %struct.ti_pipe3** %3, align 8
  %131 = getelementptr inbounds %struct.ti_pipe3, %struct.ti_pipe3* %130, i32 0, i32 1
  %132 = call i64 @of_property_read_u32_index(%struct.device_node* %129, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 1, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %139

134:                                              ; preds = %128
  %135 = load %struct.device*, %struct.device** %4, align 8
  %136 = call i32 @dev_err(%struct.device* %135, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.11, i64 0, i64 0))
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %2, align 4
  br label %142

139:                                              ; preds = %128
  br label %140

140:                                              ; preds = %139, %123
  br label %141

141:                                              ; preds = %140, %106
  store i32 0, i32* %2, align 4
  br label %142

142:                                              ; preds = %141, %134, %99, %61, %51, %35
  %143 = load i32, i32* %2, align 4
  ret i32 %143
}

declare dso_local i8* @syscon_regmap_lookup_by_phandle(%struct.device_node*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i64 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local %struct.platform_device* @of_find_device_by_node(%struct.device_node*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
