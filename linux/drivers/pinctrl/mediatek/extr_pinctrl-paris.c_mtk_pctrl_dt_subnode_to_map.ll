; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pctrl_dt_subnode_to_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/mediatek/extr_pinctrl-paris.c_mtk_pctrl_dt_subnode_to_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pinctrl_dev = type { i32 }
%struct.device_node = type { i32 }
%struct.pinctrl_map = type { i32 }
%struct.mtk_pinctrl = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mtk_pinctrl_group = type { i32 }
%struct.property = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"pinmux\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"missing pins property in node %pOFn .\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@mtk_gpio_functions = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"invalid pins value.\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"unable to match pin %d to group\0A\00", align 1
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pinctrl_dev*, %struct.device_node*, %struct.pinctrl_map**, i32*, i32*)* @mtk_pctrl_dt_subnode_to_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_pctrl_dt_subnode_to_map(%struct.pinctrl_dev* %0, %struct.device_node* %1, %struct.pinctrl_map** %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.pinctrl_dev*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.pinctrl_map**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.mtk_pinctrl*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.mtk_pinctrl_group*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca %struct.property*, align 8
  %26 = alloca i32, align 4
  store %struct.pinctrl_dev* %0, %struct.pinctrl_dev** %7, align 8
  store %struct.device_node* %1, %struct.device_node** %8, align 8
  store %struct.pinctrl_map** %2, %struct.pinctrl_map*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %27 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %28 = call %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev* %27)
  store %struct.mtk_pinctrl* %28, %struct.mtk_pinctrl** %12, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %26, align 4
  %29 = load %struct.device_node*, %struct.device_node** %8, align 8
  %30 = call %struct.property* @of_find_property(%struct.device_node* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.property* %30, %struct.property** %25, align 8
  %31 = load %struct.property*, %struct.property** %25, align 8
  %32 = icmp ne %struct.property* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %5
  %34 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %12, align 8
  %35 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.device_node*, %struct.device_node** %8, align 8
  %38 = call i32 (i32, i8*, ...) @dev_err(i32 %36, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %187

41:                                               ; preds = %5
  %42 = load %struct.device_node*, %struct.device_node** %8, align 8
  %43 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %44 = call i32 @pinconf_generic_parse_dt_config(%struct.device_node* %42, %struct.pinctrl_dev* %43, i64** %21, i32* %19)
  store i32 %44, i32* %17, align 4
  %45 = load i32, i32* %17, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %17, align 4
  store i32 %48, i32* %6, align 4
  br label %187

49:                                               ; preds = %41
  %50 = load i32, i32* %19, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %49
  store i32 1, i32* %20, align 4
  br label %53

53:                                               ; preds = %52, %49
  %54 = load %struct.property*, %struct.property** %25, align 8
  %55 = getelementptr inbounds %struct.property, %struct.property* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = udiv i64 %57, 8
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  store i32 %60, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %61 = load i32, i32* %14, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %15, align 4
  br label %66

66:                                               ; preds = %63, %53
  %67 = load i32, i32* %20, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %66
  %70 = load i32, i32* %13, align 4
  %71 = icmp sge i32 %70, 1
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = load i32, i32* %15, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %15, align 4
  br label %75

75:                                               ; preds = %72, %69, %66
  %76 = load i32, i32* %13, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* @EINVAL, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %17, align 4
  br label %183

84:                                               ; preds = %78
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %15, align 4
  %87 = mul nsw i32 %85, %86
  store i32 %87, i32* %26, align 4
  %88 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %89 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %90 = load i32*, i32** %10, align 8
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %26, align 4
  %93 = call i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev* %88, %struct.pinctrl_map** %89, i32* %90, i32* %91, i32 %92)
  store i32 %93, i32* %17, align 4
  %94 = load i32, i32* %17, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %183

97:                                               ; preds = %84
  store i32 0, i32* %16, align 4
  br label %98

98:                                               ; preds = %179, %97
  %99 = load i32, i32* %16, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp slt i32 %99, %100
  br i1 %101, label %102, label %182

102:                                              ; preds = %98
  %103 = load %struct.device_node*, %struct.device_node** %8, align 8
  %104 = load i32, i32* %16, align 4
  %105 = call i32 @of_property_read_u32_index(%struct.device_node* %103, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %104, i64* %22)
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %102
  br label %183

109:                                              ; preds = %102
  %110 = load i64, i64* %22, align 8
  %111 = call i64 @MTK_GET_PIN_NO(i64 %110)
  store i64 %111, i64* %23, align 8
  %112 = load i64, i64* %22, align 8
  %113 = call i64 @MTK_GET_PIN_FUNC(i64 %112)
  store i64 %113, i64* %24, align 8
  %114 = load i64, i64* %23, align 8
  %115 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %12, align 8
  %116 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %115, i32 0, i32 1
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sge i64 %114, %119
  br i1 %120, label %126, label %121

121:                                              ; preds = %109
  %122 = load i64, i64* %24, align 8
  %123 = load i32, i32* @mtk_gpio_functions, align 4
  %124 = call i64 @ARRAY_SIZE(i32 %123)
  %125 = icmp sge i64 %122, %124
  br i1 %125, label %126, label %133

126:                                              ; preds = %121, %109
  %127 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %12, align 8
  %128 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %17, align 4
  br label %183

133:                                              ; preds = %121
  %134 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %12, align 8
  %135 = load i64, i64* %23, align 8
  %136 = call %struct.mtk_pinctrl_group* @mtk_pctrl_find_group_by_pin(%struct.mtk_pinctrl* %134, i64 %135)
  store %struct.mtk_pinctrl_group* %136, %struct.mtk_pinctrl_group** %18, align 8
  %137 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %18, align 8
  %138 = icmp ne %struct.mtk_pinctrl_group* %137, null
  br i1 %138, label %147, label %139

139:                                              ; preds = %133
  %140 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %12, align 8
  %141 = getelementptr inbounds %struct.mtk_pinctrl, %struct.mtk_pinctrl* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i64, i64* %23, align 8
  %144 = call i32 (i32, i8*, ...) @dev_err(i32 %142, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i64 %143)
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %17, align 4
  br label %183

147:                                              ; preds = %133
  %148 = load %struct.mtk_pinctrl*, %struct.mtk_pinctrl** %12, align 8
  %149 = load i64, i64* %23, align 8
  %150 = load i64, i64* %24, align 8
  %151 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %18, align 8
  %152 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %153 = load i32*, i32** %10, align 8
  %154 = load i32*, i32** %11, align 8
  %155 = call i32 @mtk_pctrl_dt_node_to_map_func(%struct.mtk_pinctrl* %148, i64 %149, i64 %150, %struct.mtk_pinctrl_group* %151, %struct.pinctrl_map** %152, i32* %153, i32* %154)
  store i32 %155, i32* %17, align 4
  %156 = load i32, i32* %17, align 4
  %157 = icmp slt i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %147
  br label %183

159:                                              ; preds = %147
  %160 = load i32, i32* %20, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %178

162:                                              ; preds = %159
  %163 = load %struct.pinctrl_dev*, %struct.pinctrl_dev** %7, align 8
  %164 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %165 = load i32*, i32** %10, align 8
  %166 = load i32*, i32** %11, align 8
  %167 = load %struct.mtk_pinctrl_group*, %struct.mtk_pinctrl_group** %18, align 8
  %168 = getelementptr inbounds %struct.mtk_pinctrl_group, %struct.mtk_pinctrl_group* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load i64*, i64** %21, align 8
  %171 = load i32, i32* %19, align 4
  %172 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_GROUP, align 4
  %173 = call i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev* %163, %struct.pinctrl_map** %164, i32* %165, i32* %166, i32 %169, i64* %170, i32 %171, i32 %172)
  store i32 %173, i32* %17, align 4
  %174 = load i32, i32* %17, align 4
  %175 = icmp slt i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %162
  br label %183

177:                                              ; preds = %162
  br label %178

178:                                              ; preds = %177, %159
  br label %179

179:                                              ; preds = %178
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  br label %98

182:                                              ; preds = %98
  store i32 0, i32* %17, align 4
  br label %183

183:                                              ; preds = %182, %176, %158, %139, %126, %108, %96, %81
  %184 = load i64*, i64** %21, align 8
  %185 = call i32 @kfree(i64* %184)
  %186 = load i32, i32* %17, align 4
  store i32 %186, i32* %6, align 4
  br label %187

187:                                              ; preds = %183, %47, %33
  %188 = load i32, i32* %6, align 4
  ret i32 %188
}

declare dso_local %struct.mtk_pinctrl* @pinctrl_dev_get_drvdata(%struct.pinctrl_dev*) #1

declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @pinconf_generic_parse_dt_config(%struct.device_node*, %struct.pinctrl_dev*, i64**, i32*) #1

declare dso_local i32 @pinctrl_utils_reserve_map(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32) #1

declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i64*) #1

declare dso_local i64 @MTK_GET_PIN_NO(i64) #1

declare dso_local i64 @MTK_GET_PIN_FUNC(i64) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local %struct.mtk_pinctrl_group* @mtk_pctrl_find_group_by_pin(%struct.mtk_pinctrl*, i64) #1

declare dso_local i32 @mtk_pctrl_dt_node_to_map_func(%struct.mtk_pinctrl*, i64, i64, %struct.mtk_pinctrl_group*, %struct.pinctrl_map**, i32*, i32*) #1

declare dso_local i32 @pinctrl_utils_add_map_configs(%struct.pinctrl_dev*, %struct.pinctrl_map**, i32*, i32*, i32, i64*, i32, i32) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
