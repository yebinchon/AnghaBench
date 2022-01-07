; ModuleID = '/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_parse_pinconf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pinctrl/extr_pinctrl-single.c_pcs_parse_pinconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcs_conf_type = type { i8*, i32, i32, i32 }
%struct.pcs_device = type { i32 }
%struct.device_node = type { i32 }
%struct.pcs_function = type { i32, %struct.pcs_conf_vals* }
%struct.pcs_conf_vals = type { i32 }
%struct.pinctrl_map = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64*, i32, i32 }

@pcs_parse_pinconf.prop2 = internal constant [4 x %struct.pcs_conf_type] [%struct.pcs_conf_type { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i32 0, i32 0), i32 132, i32 0, i32 0 }, %struct.pcs_conf_type { i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i32 0, i32 0), i32 128, i32 0, i32 0 }, %struct.pcs_conf_type { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i32 0, i32 0), i32 131, i32 0, i32 0 }, %struct.pcs_conf_type { i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i32 0, i32 0), i32 129, i32 0, i32 0 }], align 16
@.str = private unnamed_addr constant [30 x i8] c"pinctrl-single,drive-strength\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"pinctrl-single,slew-rate\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"pinctrl-single,input-schmitt\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"pinctrl-single,low-power-mode\00", align 1
@pcs_parse_pinconf.prop4 = internal constant [3 x %struct.pcs_conf_type] [%struct.pcs_conf_type { i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i32 0, i32 0), i32 133, i32 0, i32 0 }, %struct.pcs_conf_type { i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i32 0, i32 0), i32 134, i32 0, i32 0 }, %struct.pcs_conf_type { i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i32 0, i32 0), i32 130, i32 0, i32 0 }], align 16
@.str.4 = private unnamed_addr constant [27 x i8] c"pinctrl-single,bias-pullup\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"pinctrl-single,bias-pulldown\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"pinctrl-single,input-schmitt-enable\00", align 1
@PCS_HAS_PINCONF = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PIN_MAP_TYPE_CONFIGS_GROUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcs_device*, %struct.device_node*, %struct.pcs_function*, %struct.pinctrl_map**)* @pcs_parse_pinconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcs_parse_pinconf(%struct.pcs_device* %0, %struct.device_node* %1, %struct.pcs_function* %2, %struct.pinctrl_map** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcs_device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.pcs_function*, align 8
  %9 = alloca %struct.pinctrl_map**, align 8
  %10 = alloca %struct.pinctrl_map*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca %struct.pcs_conf_vals*, align 8
  store %struct.pcs_device* %0, %struct.pcs_device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.pcs_function* %2, %struct.pcs_function** %8, align 8
  store %struct.pinctrl_map** %3, %struct.pinctrl_map*** %9, align 8
  %16 = load %struct.pinctrl_map**, %struct.pinctrl_map*** %9, align 8
  %17 = load %struct.pinctrl_map*, %struct.pinctrl_map** %16, align 8
  store %struct.pinctrl_map* %17, %struct.pinctrl_map** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i64* null, i64** %13, align 8
  store i64* null, i64** %14, align 8
  store %struct.pcs_conf_vals* null, %struct.pcs_conf_vals** %15, align 8
  %18 = load i32, i32* @PCS_HAS_PINCONF, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %173

21:                                               ; preds = %4
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %39, %21
  %23 = load i32, i32* %11, align 4
  %24 = call i32 @ARRAY_SIZE(%struct.pcs_conf_type* getelementptr inbounds ([4 x %struct.pcs_conf_type], [4 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop2, i64 0, i64 0))
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %42

26:                                               ; preds = %22
  %27 = load %struct.device_node*, %struct.device_node** %7, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x %struct.pcs_conf_type], [4 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop2, i64 0, i64 %29
  %31 = getelementptr inbounds %struct.pcs_conf_type, %struct.pcs_conf_type* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @of_find_property(%struct.device_node* %27, i32 %32, i32* null)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %26
  %36 = load i32, i32* %12, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %12, align 4
  br label %38

38:                                               ; preds = %35, %26
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %11, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %11, align 4
  br label %22

42:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %43

43:                                               ; preds = %60, %42
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @ARRAY_SIZE(%struct.pcs_conf_type* getelementptr inbounds ([3 x %struct.pcs_conf_type], [3 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop4, i64 0, i64 0))
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.device_node*, %struct.device_node** %7, align 8
  %49 = load i32, i32* %11, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [3 x %struct.pcs_conf_type], [3 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop4, i64 0, i64 %50
  %52 = getelementptr inbounds %struct.pcs_conf_type, %struct.pcs_conf_type* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @of_find_property(%struct.device_node* %48, i32 %53, i32* null)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %47
  %57 = load i32, i32* %12, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %12, align 4
  br label %59

59:                                               ; preds = %56, %47
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %11, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %11, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load i32, i32* %12, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  store i32 0, i32* %5, align 4
  br label %173

67:                                               ; preds = %63
  %68 = load %struct.pcs_device*, %struct.pcs_device** %6, align 8
  %69 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i8* @devm_kcalloc(i32 %70, i32 %71, i32 4, i32 %72)
  %74 = bitcast i8* %73 to %struct.pcs_conf_vals*
  %75 = load %struct.pcs_function*, %struct.pcs_function** %8, align 8
  %76 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %75, i32 0, i32 1
  store %struct.pcs_conf_vals* %74, %struct.pcs_conf_vals** %76, align 8
  %77 = load %struct.pcs_function*, %struct.pcs_function** %8, align 8
  %78 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %77, i32 0, i32 1
  %79 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %78, align 8
  %80 = icmp ne %struct.pcs_conf_vals* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %67
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %5, align 4
  br label %173

84:                                               ; preds = %67
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.pcs_function*, %struct.pcs_function** %8, align 8
  %87 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  %88 = load %struct.pcs_function*, %struct.pcs_function** %8, align 8
  %89 = getelementptr inbounds %struct.pcs_function, %struct.pcs_function* %88, i32 0, i32 1
  %90 = load %struct.pcs_conf_vals*, %struct.pcs_conf_vals** %89, align 8
  %91 = getelementptr inbounds %struct.pcs_conf_vals, %struct.pcs_conf_vals* %90, i64 0
  store %struct.pcs_conf_vals* %91, %struct.pcs_conf_vals** %15, align 8
  %92 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %93 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %92, i32 1
  store %struct.pinctrl_map* %93, %struct.pinctrl_map** %10, align 8
  %94 = load %struct.pcs_device*, %struct.pcs_device** %6, align 8
  %95 = getelementptr inbounds %struct.pcs_device, %struct.pcs_device* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %12, align 4
  %98 = load i32, i32* @GFP_KERNEL, align 4
  %99 = call i8* @devm_kcalloc(i32 %96, i32 %97, i32 8, i32 %98)
  %100 = bitcast i8* %99 to i64*
  store i64* %100, i64** %13, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = icmp ne i64* %101, null
  br i1 %102, label %106, label %103

103:                                              ; preds = %84
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %5, align 4
  br label %173

106:                                              ; preds = %84
  %107 = load i64*, i64** %13, align 8
  %108 = getelementptr inbounds i64, i64* %107, i64 0
  store i64* %108, i64** %14, align 8
  store i32 0, i32* %11, align 4
  br label %109

109:                                              ; preds = %127, %106
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @ARRAY_SIZE(%struct.pcs_conf_type* getelementptr inbounds ([4 x %struct.pcs_conf_type], [4 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop2, i64 0, i64 0))
  %112 = icmp slt i32 %110, %111
  br i1 %112, label %113, label %130

113:                                              ; preds = %109
  %114 = load %struct.pcs_device*, %struct.pcs_device** %6, align 8
  %115 = load %struct.device_node*, %struct.device_node** %7, align 8
  %116 = load i32, i32* %11, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x %struct.pcs_conf_type], [4 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop2, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.pcs_conf_type, %struct.pcs_conf_type* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [4 x %struct.pcs_conf_type], [4 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop2, i64 0, i64 %122
  %124 = getelementptr inbounds %struct.pcs_conf_type, %struct.pcs_conf_type* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @pcs_add_conf2(%struct.pcs_device* %114, %struct.device_node* %115, i32 %120, i32 %125, %struct.pcs_conf_vals** %15, i64** %14)
  br label %127

127:                                              ; preds = %113
  %128 = load i32, i32* %11, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %11, align 4
  br label %109

130:                                              ; preds = %109
  store i32 0, i32* %11, align 4
  br label %131

131:                                              ; preds = %149, %130
  %132 = load i32, i32* %11, align 4
  %133 = call i32 @ARRAY_SIZE(%struct.pcs_conf_type* getelementptr inbounds ([3 x %struct.pcs_conf_type], [3 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop4, i64 0, i64 0))
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %152

135:                                              ; preds = %131
  %136 = load %struct.pcs_device*, %struct.pcs_device** %6, align 8
  %137 = load %struct.device_node*, %struct.device_node** %7, align 8
  %138 = load i32, i32* %11, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [3 x %struct.pcs_conf_type], [3 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop4, i64 0, i64 %139
  %141 = getelementptr inbounds %struct.pcs_conf_type, %struct.pcs_conf_type* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %11, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [3 x %struct.pcs_conf_type], [3 x %struct.pcs_conf_type]* @pcs_parse_pinconf.prop4, i64 0, i64 %144
  %146 = getelementptr inbounds %struct.pcs_conf_type, %struct.pcs_conf_type* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @pcs_add_conf4(%struct.pcs_device* %136, %struct.device_node* %137, i32 %142, i32 %147, %struct.pcs_conf_vals** %15, i64** %14)
  br label %149

149:                                              ; preds = %135
  %150 = load i32, i32* %11, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %11, align 4
  br label %131

152:                                              ; preds = %131
  %153 = load i32, i32* @PIN_MAP_TYPE_CONFIGS_GROUP, align 4
  %154 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %155 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %154, i32 0, i32 1
  store i32 %153, i32* %155, align 8
  %156 = load %struct.device_node*, %struct.device_node** %7, align 8
  %157 = getelementptr inbounds %struct.device_node, %struct.device_node* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %160 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 2
  store i32 %158, i32* %162, align 4
  %163 = load i64*, i64** %13, align 8
  %164 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %165 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  store i64* %163, i64** %167, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load %struct.pinctrl_map*, %struct.pinctrl_map** %10, align 8
  %170 = getelementptr inbounds %struct.pinctrl_map, %struct.pinctrl_map* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 1
  store i32 %168, i32* %172, align 8
  store i32 0, i32* %5, align 4
  br label %173

173:                                              ; preds = %152, %103, %81, %66, %20
  %174 = load i32, i32* %5, align 4
  ret i32 %174
}

declare dso_local i32 @ARRAY_SIZE(%struct.pcs_conf_type*) #1

declare dso_local i64 @of_find_property(%struct.device_node*, i32, i32*) #1

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @pcs_add_conf2(%struct.pcs_device*, %struct.device_node*, i32, i32, %struct.pcs_conf_vals**, i64**) #1

declare dso_local i32 @pcs_add_conf4(%struct.pcs_device*, %struct.device_node*, i32, i32, %struct.pcs_conf_vals**, i64**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
