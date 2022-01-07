; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_of_populate_bind_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_of-thermal.c_thermal_of_populate_bind_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.__thermal_bind_params = type { i32, i32, %struct.__thermal_cooling_bind_param*, i32 }
%struct.__thermal_cooling_bind_param = type { %struct.device_node*, i32, i32 }
%struct.thermal_trip = type { %struct.device_node* }
%struct.of_phandle_args = type { i32, i32*, %struct.device_node* }

@THERMAL_WEIGHT_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"contribution\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"trip\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"missing trip property\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [15 x i8] c"cooling-device\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"#cooling-cells\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"Add a cooling_device property with at least one device\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [30 x i8] c"Invalid cooling-device entry\0A\00", align 1
@.str.7 = private unnamed_addr constant [51 x i8] c"wrong reference to cooling device, missing limits\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.__thermal_bind_params*, %struct.thermal_trip*, i32)* @thermal_of_populate_bind_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @thermal_of_populate_bind_params(%struct.device_node* %0, %struct.__thermal_bind_params* %1, %struct.thermal_trip* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.__thermal_bind_params*, align 8
  %8 = alloca %struct.thermal_trip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.of_phandle_args, align 8
  %11 = alloca %struct.__thermal_cooling_bind_param*, align 8
  %12 = alloca %struct.device_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %6, align 8
  store %struct.__thermal_bind_params* %1, %struct.__thermal_bind_params** %7, align 8
  store %struct.thermal_trip* %2, %struct.thermal_trip** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load i32, i32* @THERMAL_WEIGHT_DEFAULT, align 4
  %18 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %19 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 8
  %20 = load %struct.device_node*, %struct.device_node** %6, align 8
  %21 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* %16)
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %13, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %4
  %25 = load i32, i32* %16, align 4
  %26 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %27 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.device_node*, %struct.device_node** %6, align 8
  %30 = call %struct.device_node* @of_parse_phandle(%struct.device_node* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 0)
  store %struct.device_node* %30, %struct.device_node** %12, align 8
  %31 = load %struct.device_node*, %struct.device_node** %12, align 8
  %32 = icmp ne %struct.device_node* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %28
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %160

37:                                               ; preds = %28
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %56, %37
  %39 = load i32, i32* %14, align 4
  %40 = load i32, i32* %9, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %59

42:                                               ; preds = %38
  %43 = load %struct.device_node*, %struct.device_node** %12, align 8
  %44 = load %struct.thermal_trip*, %struct.thermal_trip** %8, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %44, i64 %46
  %48 = getelementptr inbounds %struct.thermal_trip, %struct.thermal_trip* %47, i32 0, i32 0
  %49 = load %struct.device_node*, %struct.device_node** %48, align 8
  %50 = icmp eq %struct.device_node* %43, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %42
  %52 = load i32, i32* %14, align 4
  %53 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %54 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  br label %59

55:                                               ; preds = %42
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %14, align 4
  br label %38

59:                                               ; preds = %51, %38
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %59
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %156

66:                                               ; preds = %59
  %67 = load %struct.device_node*, %struct.device_node** %6, align 8
  %68 = call i32 @of_count_phandle_with_args(%struct.device_node* %67, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %73, label %71

71:                                               ; preds = %66
  %72 = call i32 @pr_err(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0))
  br label %156

73:                                               ; preds = %66
  %74 = load i32, i32* %15, align 4
  %75 = load i32, i32* @GFP_KERNEL, align 4
  %76 = call %struct.__thermal_cooling_bind_param* @kcalloc(i32 %74, i32 16, i32 %75)
  store %struct.__thermal_cooling_bind_param* %76, %struct.__thermal_cooling_bind_param** %11, align 8
  %77 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %78 = icmp ne %struct.__thermal_cooling_bind_param* %77, null
  br i1 %78, label %80, label %79

79:                                               ; preds = %73
  br label %156

80:                                               ; preds = %73
  store i32 0, i32* %14, align 4
  br label %81

81:                                               ; preds = %126, %80
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* %15, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %129

85:                                               ; preds = %81
  %86 = load %struct.device_node*, %struct.device_node** %6, align 8
  %87 = load i32, i32* %14, align 4
  %88 = call i32 @of_parse_phandle_with_args(%struct.device_node* %86, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %87, %struct.of_phandle_args* %10)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %136

93:                                               ; preds = %85
  %94 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 2
  %95 = load %struct.device_node*, %struct.device_node** %94, align 8
  %96 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %97 = load i32, i32* %14, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %96, i64 %98
  %100 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %99, i32 0, i32 0
  store %struct.device_node* %95, %struct.device_node** %100, align 8
  %101 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp sge i32 %102, 2
  br i1 %103, label %104, label %123

104:                                              ; preds = %93
  %105 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %110 = load i32, i32* %14, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %109, i64 %111
  %113 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %112, i32 0, i32 2
  store i32 %108, i32* %113, align 4
  %114 = getelementptr inbounds %struct.of_phandle_args, %struct.of_phandle_args* %10, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %119 = load i32, i32* %14, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %118, i64 %120
  %122 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %121, i32 0, i32 1
  store i32 %117, i32* %122, align 8
  br label %125

123:                                              ; preds = %93
  %124 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.7, i64 0, i64 0))
  br label %125

125:                                              ; preds = %123, %104
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %14, align 4
  br label %81

129:                                              ; preds = %81
  %130 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %131 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %132 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %131, i32 0, i32 2
  store %struct.__thermal_cooling_bind_param* %130, %struct.__thermal_cooling_bind_param** %132, align 8
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.__thermal_bind_params*, %struct.__thermal_bind_params** %7, align 8
  %135 = getelementptr inbounds %struct.__thermal_bind_params, %struct.__thermal_bind_params* %134, i32 0, i32 1
  store i32 %133, i32* %135, align 4
  br label %156

136:                                              ; preds = %91
  %137 = load i32, i32* %14, align 4
  %138 = sub nsw i32 %137, 1
  store i32 %138, i32* %14, align 4
  br label %139

139:                                              ; preds = %150, %136
  %140 = load i32, i32* %14, align 4
  %141 = icmp sge i32 %140, 0
  br i1 %141, label %142, label %153

142:                                              ; preds = %139
  %143 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %144 = load i32, i32* %14, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %143, i64 %145
  %147 = getelementptr inbounds %struct.__thermal_cooling_bind_param, %struct.__thermal_cooling_bind_param* %146, i32 0, i32 0
  %148 = load %struct.device_node*, %struct.device_node** %147, align 8
  %149 = call i32 @of_node_put(%struct.device_node* %148)
  br label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %14, align 4
  %152 = add nsw i32 %151, -1
  store i32 %152, i32* %14, align 4
  br label %139

153:                                              ; preds = %139
  %154 = load %struct.__thermal_cooling_bind_param*, %struct.__thermal_cooling_bind_param** %11, align 8
  %155 = call i32 @kfree(%struct.__thermal_cooling_bind_param* %154)
  br label %156

156:                                              ; preds = %153, %129, %79, %71, %63
  %157 = load %struct.device_node*, %struct.device_node** %12, align 8
  %158 = call i32 @of_node_put(%struct.device_node* %157)
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %5, align 4
  br label %160

160:                                              ; preds = %156, %33
  %161 = load i32, i32* %5, align 4
  ret i32 %161
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #1

declare dso_local %struct.__thermal_cooling_bind_param* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @of_parse_phandle_with_args(%struct.device_node*, i8*, i8*, i32, %struct.of_phandle_args*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @kfree(%struct.__thermal_cooling_bind_param*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
