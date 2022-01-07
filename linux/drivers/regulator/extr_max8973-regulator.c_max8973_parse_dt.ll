; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_parse_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_max8973-regulator.c_max8973_parse_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8973_regulator_platform_data = type { i32, i64, i32, i64, i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"maxim,externally-enable\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"maxim,dvs-gpio\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"maxim,dvs-default-state\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"maxim,enable-remote-sense\00", align 1
@MAX8973_CONTROL_REMOTE_SENSE_ENABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [31 x i8] c"maxim,enable-falling-slew-rate\00", align 1
@MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [30 x i8] c"maxim,enable-active-discharge\00", align 1
@MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"maxim,enable-frequency-shift\00", align 1
@MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [26 x i8] c"maxim,enable-bias-control\00", align 1
@MAX8973_CONTROL_BIAS_ENABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [17 x i8] c"maxim,enable-etr\00", align 1
@.str.9 = private unnamed_addr constant [34 x i8] c"maxim,enable-high-etr-sensitivity\00", align 1
@MAX8973_CONTROL_CLKADV_TRIP_75mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_CONTROL_CLKADV_TRIP_150mV_PER_US = common dso_local global i32 0, align 4
@MAX8973_CONTROL_CLKADV_TRIP_DISABLED = common dso_local global i32 0, align 4
@MAX77621_TJINT_WARNING_TEMP_140 = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [27 x i8] c"junction-warn-millicelsius\00", align 1
@MAX77621_TJINT_WARNING_TEMP_120 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.max8973_regulator_platform_data* (%struct.device*)* @max8973_parse_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.max8973_regulator_platform_data* @max8973_parse_dt(%struct.device* %0) #0 {
  %2 = alloca %struct.max8973_regulator_platform_data*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.max8973_regulator_platform_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device_node*, %struct.device_node** %11, align 8
  store %struct.device_node* %12, %struct.device_node** %5, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.max8973_regulator_platform_data* @devm_kzalloc(%struct.device* %13, i32 40, i32 %14)
  store %struct.max8973_regulator_platform_data* %15, %struct.max8973_regulator_platform_data** %4, align 8
  %16 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %17 = icmp ne %struct.max8973_regulator_platform_data* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %1
  store %struct.max8973_regulator_platform_data* null, %struct.max8973_regulator_platform_data** %2, align 8
  br label %137

19:                                               ; preds = %1
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @of_property_read_bool(%struct.device_node* %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %23 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = call i32 @of_get_named_gpio(%struct.device_node* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 0)
  %26 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %27 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i64* %7)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %19
  %33 = load i64, i64* %7, align 8
  %34 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %35 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %19
  %37 = load %struct.device_node*, %struct.device_node** %5, align 8
  %38 = call i32 @of_property_read_bool(%struct.device_node* %37, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %36
  %41 = load i32, i32* @MAX8973_CONTROL_REMOTE_SENSE_ENABLE, align 4
  %42 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %43 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %41
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %40, %36
  %47 = load %struct.device_node*, %struct.device_node** %5, align 8
  %48 = call i32 @of_property_read_bool(%struct.device_node* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0))
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %46
  %51 = load i32, i32* @MAX8973_CONTROL_FALLING_SLEW_RATE_ENABLE, align 4
  %52 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %53 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %46
  %57 = load %struct.device_node*, %struct.device_node** %5, align 8
  %58 = call i32 @of_property_read_bool(%struct.device_node* %57, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %56
  %61 = load i32, i32* @MAX8973_CONTROL_OUTPUT_ACTIVE_DISCH_ENABLE, align 4
  %62 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %63 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %56
  %67 = load %struct.device_node*, %struct.device_node** %5, align 8
  %68 = call i32 @of_property_read_bool(%struct.device_node* %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i32, i32* @MAX8973_CONTROL_FREQ_SHIFT_9PER_ENABLE, align 4
  %72 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %73 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %76

76:                                               ; preds = %70, %66
  %77 = load %struct.device_node*, %struct.device_node** %5, align 8
  %78 = call i32 @of_property_read_bool(%struct.device_node* %77, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %76
  %81 = load i32, i32* @MAX8973_CONTROL_BIAS_ENABLE, align 4
  %82 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %83 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 8
  br label %86

86:                                               ; preds = %80, %76
  %87 = load %struct.device_node*, %struct.device_node** %5, align 8
  %88 = call i32 @of_property_read_bool(%struct.device_node* %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.8, i64 0, i64 0))
  store i32 %88, i32* %8, align 4
  %89 = load %struct.device_node*, %struct.device_node** %5, align 8
  %90 = call i32 @of_property_read_bool(%struct.device_node* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %86
  store i32 1, i32* %8, align 4
  br label %94

94:                                               ; preds = %93, %86
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %113

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %97
  %101 = load i32, i32* @MAX8973_CONTROL_CLKADV_TRIP_75mV_PER_US, align 4
  %102 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %103 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %112

106:                                              ; preds = %97
  %107 = load i32, i32* @MAX8973_CONTROL_CLKADV_TRIP_150mV_PER_US, align 4
  %108 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %109 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %100
  br label %119

113:                                              ; preds = %94
  %114 = load i32, i32* @MAX8973_CONTROL_CLKADV_TRIP_DISABLED, align 4
  %115 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %116 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = or i32 %117, %114
  store i32 %118, i32* %116, align 8
  br label %119

119:                                              ; preds = %113, %112
  %120 = load i64, i64* @MAX77621_TJINT_WARNING_TEMP_140, align 8
  %121 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %122 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %121, i32 0, i32 1
  store i64 %120, i64* %122, align 8
  %123 = load %struct.device_node*, %struct.device_node** %5, align 8
  %124 = call i32 @of_property_read_u32(%struct.device_node* %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.10, i64 0, i64 0), i64* %7)
  store i32 %124, i32* %6, align 4
  %125 = load i32, i32* %6, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %119
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* @MAX77621_TJINT_WARNING_TEMP_120, align 8
  %130 = icmp sle i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* @MAX77621_TJINT_WARNING_TEMP_120, align 8
  %133 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  %134 = getelementptr inbounds %struct.max8973_regulator_platform_data, %struct.max8973_regulator_platform_data* %133, i32 0, i32 1
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %127, %119
  %136 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %4, align 8
  store %struct.max8973_regulator_platform_data* %136, %struct.max8973_regulator_platform_data** %2, align 8
  br label %137

137:                                              ; preds = %135, %18
  %138 = load %struct.max8973_regulator_platform_data*, %struct.max8973_regulator_platform_data** %2, align 8
  ret %struct.max8973_regulator_platform_data* %138
}

declare dso_local %struct.max8973_regulator_platform_data* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
