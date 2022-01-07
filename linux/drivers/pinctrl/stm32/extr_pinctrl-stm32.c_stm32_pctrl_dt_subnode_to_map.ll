; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_dt_subnode_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/stm32/extr_pinctrl-stm32.c_stm32_pctrl_dt_subnode_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }
%struct.stm32_pinctrl = type { i32 }
%struct.stm32_pinctrl_group = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"missing pins property in node %pOFn .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"invalid function.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to match pin %d to group\0A\00", align 1
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*, i32*)* @stm32_pctrl_dt_subnode_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_pctrl_dt_subnode_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.pinctrl_map**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.stm32_pinctrl*, align 8
  %13 = alloca %struct.stm32_pinctrl_group*, align 8
  %14 = alloca %struct.property*, align 8
  %15 = alloca %struct.device_node*, align 8
  %16 = alloca %struct.device_node*, align 8
  %17 = alloca %struct.device_node*, align 8
  %18 = alloca i64*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i32 0, i32* %26, align 4
  %27 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %28 = call %struct.stm32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %27)
  store %struct.stm32_pinctrl* %28, %struct.stm32_pinctrl** %12, align 8
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = call %struct.property* @of_find_property(%struct.device_node* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %30, %struct.property** %14, align 8
  %31 = load %struct.property*, %struct.property** %14, align 8
  %32 = icmp ne %struct.property* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %5
  %34 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %12, align 8
  %35 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.device_node*, %struct.device_node** %8, align 8
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %180

41:                                               ; preds = %5
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %44 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %42, %struct.pinctrl_dev* %43, i64** %18, i32* %19)
  store i32 %44, i32* %26, align 4
  %45 = load i32, i32* %26, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %26, align 4
  store i32 %48, i32* %6, align 4
  br label %180

49:                                               ; preds = %41
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %20, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load %struct.property*, %struct.property** %14, align 8
  %55 = getelementptr inbounds %struct.property, %struct.property* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %22, align 4
  %60 = load i32, i32* %22, align 4
  store i32 %60, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %61 = load i32, i32* %23, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %24, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %24, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %22, align 4
  %71 = icmp sge i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %24, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %24, align 4
  br label %75

75:                                               ; preds = %72, %69, %66
  %76 = load i32, i32* %22, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %24, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %26, align 4
  br label %176

84:                                               ; preds = %78
  %85 = load i32, i32* %22, align 4
  %86 = load i32, i32* %24, align 4
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %21, align 4
  %88 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %89 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %21, align 4
  %93 = call i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev* %88, %struct.pinctrl_map** %89, i32* %90, i32* %91, i32 %92)
  store i32 %93, i32* %26, align 4
  %94 = load i32, i32* %26, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %176

97:                                               ; preds = %84
  store i32 0, i32* %25, align 4
  br label %98

98:                                               ; preds = %172, %97
  %99 = load i32, i32* %25, align 4
  %100 = load i32, i32* %22, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %175

102:                                              ; preds = %98
  %103 = load %struct.device_node*, %struct.device_node** %8, align 8
  %104 = load i32, i32* %25, align 4
  %105 = call i32 @of_property_read_u32_index(%struct.device_node* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %104, %struct.device_node** %15)
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %26, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %176

109:                                              ; preds = %102
  %110 = load %struct.device_node*, %struct.device_node** %15, align 8
  %111 = call %struct.device_node* @STM32_GET_PIN_NO(%struct.device_node* %110)
  store %struct.device_node* %111, %struct.device_node** %16, align 8
  %112 = load %struct.device_node*, %struct.device_node** %15, align 8
  %113 = call %struct.device_node* @STM32_GET_PIN_FUNC(%struct.device_node* %112)
  store %struct.device_node* %113, %struct.device_node** %17, align 8
  %114 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %12, align 8
  %115 = load %struct.device_node*, %struct.device_node** %16, align 8
  %116 = load %struct.device_node*, %struct.device_node** %17, align 8
  %117 = call i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl* %114, %struct.device_node* %115, %struct.device_node* %116)
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %126, label %119

119:                                              ; preds = %109
  %120 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %12, align 8
  %121 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 (i32, i8*, ...) @dev_err(i32 %122, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  %124 = load i32, i32* @EINVAL, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %26, align 4
  br label %176

126:                                              ; preds = %109
  %127 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %12, align 8
  %128 = load %struct.device_node*, %struct.device_node** %16, align 8
  %129 = call %struct.stm32_pinctrl_group* @stm32_pctrl_find_group_by_pin(%struct.stm32_pinctrl* %127, %struct.device_node* %128)
  store %struct.stm32_pinctrl_group* %129, %struct.stm32_pinctrl_group** %13, align 8
  %130 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %13, align 8
  %131 = icmp ne %struct.stm32_pinctrl_group* %130, null
  br i1 %131, label %140, label %132

132:                                              ; preds = %126
  %133 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %12, align 8
  %134 = getelementptr inbounds %struct.stm32_pinctrl, %struct.stm32_pinctrl* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.device_node*, %struct.device_node** %16, align 8
  %137 = call i32 (i32, i8*, ...) @dev_err(i32 %135, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %136)
  %138 = load i32, i32* @EINVAL, align 4
  %139 = sub nsw i32 0, %138
  store i32 %139, i32* %26, align 4
  br label %176

140:                                              ; preds = %126
  %141 = load %struct.stm32_pinctrl*, %struct.stm32_pinctrl** %12, align 8
  %142 = load %struct.device_node*, %struct.device_node** %16, align 8
  %143 = load %struct.device_node*, %struct.device_node** %17, align 8
  %144 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %13, align 8
  %145 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %146 = load i32*, i32** %10, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i32 @stm32_pctrl_dt_node_to_map_func(%struct.stm32_pinctrl* %141, %struct.device_node* %142, %struct.device_node* %143, %struct.stm32_pinctrl_group* %144, %struct.pinctrl_map** %145, i32* %146, i32* %147)
  store i32 %148, i32* %26, align 4
  %149 = load i32, i32* %26, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %140
  br label %176

152:                                              ; preds = %140
  %153 = load i32, i32* %20, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %171

155:                                              ; preds = %152
  %156 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %157 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %158 = load i32*, i32** %10, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = load %struct.stm32_pinctrl_group*, %struct.stm32_pinctrl_group** %13, align 8
  %161 = getelementptr inbounds %struct.stm32_pinctrl_group, %struct.stm32_pinctrl_group* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i64*, i64** %18, align 8
  %164 = load i32, i32* %19, align 4
  %165 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_GROUP, align 4
  %166 = call i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev* %156, %struct.pinctrl_map** %157, i32* %158, i32* %159, i32 %162, i64* %163, i32 %164, i32 %165)
  store i32 %166, i32* %26, align 4
  %167 = load i32, i32* %26, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %170

169:                                              ; preds = %155
  br label %176

170:                                              ; preds = %155
  br label %171

171:                                              ; preds = %170, %152
  br label %172

172:                                              ; preds = %171
  %173 = load i32, i32* %25, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %25, align 4
  br label %98

175:                                              ; preds = %98
  br label %176

176:                                              ; preds = %175, %169, %151, %132, %119, %108, %96, %81
  %177 = load i64*, i64** %18, align 8
  %178 = call i32 @kfree(i64* %177)
  %179 = load i32, i32* %26, align 4
  store i32 %179, i32* %6, align 4
  br label %180

180:                                              ; preds = %176, %47, %33
  %181 = load i32, i32* %6, align 4
  ret i32 %181
}

declare dso_local %struct.stm32_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, %struct.pinctrl_dev*, i64**, i32*) #1

declare dso_local i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, %struct.device_node**) #1

declare dso_local %struct.device_node* @STM32_GET_PIN_NO(%struct.device_node*) #1

declare dso_local %struct.device_node* @STM32_GET_PIN_FUNC(%struct.device_node*) #1

declare dso_local i32 @stm32_pctrl_is_function_valid(%struct.stm32_pinctrl*, %struct.device_node*, %struct.device_node*) #1

declare dso_local %struct.stm32_pinctrl_group* @stm32_pctrl_find_group_by_pin(%struct.stm32_pinctrl*, %struct.device_node*) #1

declare dso_local i32 @stm32_pctrl_dt_node_to_map_func(%struct.stm32_pinctrl*, %struct.device_node*, %struct.device_node*, %struct.stm32_pinctrl_group*, %struct.pinctrl_map**, i32*, i32*) #1

declare dso_local i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32, i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
