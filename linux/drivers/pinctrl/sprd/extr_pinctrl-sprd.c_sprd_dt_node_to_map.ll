; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_dt_node_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/sprd/extr_pinctrl-sprd.c_sprd_dt_node_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }
%struct.sprd_pinctrl = type { i32 }
%struct.sprd_pin_group = type { i8*, i32* }

@.str = private unnamed_addr constant [34 x i8] c"unable to find group for node %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"pins\00", align 1
@PIN_MAP_TYPE_CONFIGS_PIN = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"function\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"%s: could not parse property function\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"%s: could not parse node property\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*)* @sprd_dt_node_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_dt_node_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pinctrl_dev*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pinctrl_map**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sprd_pinctrl*, align 8
  %11 = alloca %struct.sprd_pin_group*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %8, align 8
  store i32* %3, i32** %9, align 8
  %21 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %22 = call %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %21)
  store %struct.sprd_pinctrl* %22, %struct.sprd_pinctrl** %10, align 8
  store i64* null, i64** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %23 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %10, align 8
  %24 = load %struct.device_node*, %struct.device_node** %7, align 8
  %25 = getelementptr inbounds %struct.device_node, %struct.device_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call %struct.sprd_pin_group* @sprd_pinctrl_find_group_by_name(%struct.sprd_pinctrl* %23, i32 %26)
  store %struct.sprd_pin_group* %27, %struct.sprd_pin_group** %11, align 8
  %28 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %11, align 8
  %29 = icmp ne %struct.sprd_pin_group* %28, null
  br i1 %29, label %39, label %30

30:                                               ; preds = %4
  %31 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %10, align 8
  %32 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.device_node*, %struct.device_node** %7, align 8
  %35 = call i32 @of_node_full_name(%struct.device_node* %34)
  %36 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %5, align 4
  br label %158

39:                                               ; preds = %4
  %40 = load %struct.device_node*, %struct.device_node** %7, align 8
  %41 = call i32 @of_property_count_strings(%struct.device_node* %40, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32 %41, i32* %18, align 4
  %42 = load i32, i32* %18, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %39
  %45 = load i32, i32* %18, align 4
  store i32 %45, i32* %5, align 4
  br label %158

46:                                               ; preds = %39
  %47 = load i32, i32* %18, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  store i32 %50, i32* %17, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_GROUP, align 4
  store i32 %52, i32* %17, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = load %struct.device_node*, %struct.device_node** %7, align 8
  %55 = call i32 @of_property_read_string(%struct.device_node* %54, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8** %16)
  store i32 %55, i32* %18, align 4
  %56 = load i32, i32* %18, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load i32, i32* %18, align 4
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp ne i32 %59, %61
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %10, align 8
  %65 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.device_node*, %struct.device_node** %7, align 8
  %68 = call i32 @of_node_full_name(%struct.device_node* %67)
  %69 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %68)
  br label %70

70:                                               ; preds = %63, %58
  store i8* null, i8** %16, align 8
  br label %71

71:                                               ; preds = %70, %53
  %72 = load %struct.device_node*, %struct.device_node** %7, align 8
  %73 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %74 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %72, %struct.pinctrl_dev* %73, i64** %12, i32* %13)
  store i32 %74, i32* %18, align 4
  %75 = load i32, i32* %18, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load %struct.sprd_pinctrl*, %struct.sprd_pinctrl** %10, align 8
  %79 = getelementptr inbounds %struct.sprd_pinctrl, %struct.sprd_pinctrl* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.device_node*, %struct.device_node** %7, align 8
  %82 = call i32 @of_node_full_name(%struct.device_node* %81)
  %83 = call i32 @dev_err(i32 %80, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %82)
  %84 = load i32, i32* %18, align 4
  store i32 %84, i32* %5, align 4
  br label %158

85:                                               ; preds = %71
  %86 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  store %struct.pinctrl_map* null, %struct.pinctrl_map** %86, align 8
  %87 = load i32*, i32** %9, align 8
  store i32 0, i32* %87, align 4
  %88 = load i8*, i8** %16, align 8
  %89 = icmp ne i8* %88, null
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* %15, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %15, align 4
  br label %93

93:                                               ; preds = %90, %85
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %93
  %97 = load i32, i32* %15, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %15, align 4
  br label %99

99:                                               ; preds = %96, %93
  %100 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %101 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %102 = load i32*, i32** %9, align 8
  %103 = load i32, i32* %15, align 4
  %104 = call i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev* %100, %struct.pinctrl_map** %101, i32* %14, i32* %102, i32 %103)
  store i32 %104, i32* %18, align 4
  %105 = load i32, i32* %18, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %154

108:                                              ; preds = %99
  %109 = load i8*, i8** %16, align 8
  %110 = icmp ne i8* %109, null
  br i1 %110, label %111, label %124

111:                                              ; preds = %108
  %112 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %113 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %114 = load i32*, i32** %9, align 8
  %115 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %11, align 8
  %116 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %115, i32 0, i32 0
  %117 = load i8*, i8** %116, align 8
  %118 = load i8*, i8** %16, align 8
  %119 = call i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev* %112, %struct.pinctrl_map** %113, i32* %14, i32* %114, i8* %117, i8* %118)
  store i32 %119, i32* %18, align 4
  %120 = load i32, i32* %18, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %111
  br label %154

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %108
  %125 = load i32, i32* %13, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %153

127:                                              ; preds = %124
  %128 = load i32, i32* %17, align 4
  %129 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_PIN, align 4
  %130 = icmp eq i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %11, align 8
  %133 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %132, i32 0, i32 1
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 0
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %20, align 4
  %137 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %138 = load i32, i32* %20, align 4
  %139 = call i8* @pin_get_name(%struct.pinctrl_dev* %137, i32 %138)
  store i8* %139, i8** %19, align 8
  br label %144

140:                                              ; preds = %127
  %141 = load %struct.sprd_pin_group*, %struct.sprd_pin_group** %11, align 8
  %142 = getelementptr inbounds %struct.sprd_pin_group, %struct.sprd_pin_group* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %19, align 8
  br label %144

144:                                              ; preds = %140, %131
  %145 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %6, align 8
  %146 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %8, align 8
  %147 = load i32*, i32** %9, align 8
  %148 = load i8*, i8** %19, align 8
  %149 = load i64*, i64** %12, align 8
  %150 = load i32, i32* %13, align 4
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev* %145, %struct.pinctrl_map** %146, i32* %14, i32* %147, i8* %148, i64* %149, i32 %150, i32 %151)
  store i32 %152, i32* %18, align 4
  br label %153

153:                                              ; preds = %144, %124
  br label %154

154:                                              ; preds = %153, %122, %107
  %155 = load i64*, i64** %12, align 8
  %156 = call i32 @kfree(i64* %155)
  %157 = load i32, i32* %18, align 4
  store i32 %157, i32* %5, align 4
  br label %158

158:                                              ; preds = %154, %77, %44, %30
  %159 = load i32, i32* %5, align 4
  ret i32 %159
}

declare dso_local %struct.sprd_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.sprd_pin_group* @sprd_pinctrl_find_group_by_name(%struct.sprd_pinctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @of_node_full_name(%struct.device_node*) #1

declare dso_local i32 @of_property_count_strings(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, %struct.pinctrl_dev*, i64**, i32*) #1

declare dso_local i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32) #1

declare dso_local i32 @pinctrl_utils_add_map_mux(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i8*, i8*) #1

declare dso_local i8* @pin_get_name(%struct.pinctrl_dev*, i32) #1

declare dso_local i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i8*, i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
