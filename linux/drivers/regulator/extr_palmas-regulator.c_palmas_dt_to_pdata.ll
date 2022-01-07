; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_dt_to_pdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_palmas-regulator.c_palmas_dt_to_pdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_node = type { i32 }
%struct.palmas_pmic_platform_data = type { i8*, i8*, %struct.palmas_reg_init**, i64* }
%struct.palmas_reg_init = type { i32, i32, i32, i8* }
%struct.palmas_pmic_driver_data = type { i32, %struct.of_regulator_match* }
%struct.of_regulator_match = type { i32, i64, %struct.device_node* }

@.str = private unnamed_addr constant [11 x i8] c"regulators\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"regulator node not found\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Error parsing regulator init data: %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"ti,warm-reset\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"ti,roof-floor\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_NSLEEP = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_ENABLE1 = common dso_local global i32 0, align 4
@PALMAS_EXT_CONTROL_ENABLE2 = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"%s: Invalid roof-floor option: %u\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"ti,mode-sleep\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"ti,smps-range\00", align 1
@PALMAS_SMPS12_VOLTAGE_RANGE = common dso_local global i32 0, align 4
@PALMAS_REG_LDO8 = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [24 x i8] c"ti,enable-ldo8-tracking\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"ti,ldo6-vibrator\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_node*, %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_driver_data*)* @palmas_dt_to_pdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @palmas_dt_to_pdata(%struct.device* %0, %struct.device_node* %1, %struct.palmas_pmic_platform_data* %2, %struct.palmas_pmic_driver_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca %struct.palmas_pmic_platform_data*, align 8
  %9 = alloca %struct.palmas_pmic_driver_data*, align 8
  %10 = alloca %struct.device_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.of_regulator_match*, align 8
  %15 = alloca %struct.palmas_reg_init*, align 8
  %16 = alloca %struct.device_node*, align 8
  %17 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_node* %1, %struct.device_node** %7, align 8
  store %struct.palmas_pmic_platform_data* %2, %struct.palmas_pmic_platform_data** %8, align 8
  store %struct.palmas_pmic_driver_data* %3, %struct.palmas_pmic_driver_data** %9, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %18, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store %struct.device_node* %19, %struct.device_node** %10, align 8
  %20 = load %struct.device_node*, %struct.device_node** %10, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @dev_info(%struct.device* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %166

25:                                               ; preds = %4
  %26 = load %struct.device*, %struct.device** %6, align 8
  %27 = load %struct.device_node*, %struct.device_node** %10, align 8
  %28 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %9, align 8
  %29 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %28, i32 0, i32 1
  %30 = load %struct.of_regulator_match*, %struct.of_regulator_match** %29, align 8
  %31 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %9, align 8
  %32 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @of_regulator_match(%struct.device* %26, %struct.device_node* %27, %struct.of_regulator_match* %30, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load %struct.device_node*, %struct.device_node** %10, align 8
  %36 = call i32 @of_node_put(%struct.device_node* %35)
  %37 = load i32, i32* %13, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load %struct.device*, %struct.device** %6, align 8
  %41 = load i32, i32* %13, align 4
  %42 = call i32 @dev_err(%struct.device* %40, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %5, align 4
  br label %166

43:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  br label %44

44:                                               ; preds = %158, %43
  %45 = load i32, i32* %12, align 4
  %46 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %9, align 8
  %47 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %161

50:                                               ; preds = %44
  %51 = load %struct.palmas_pmic_driver_data*, %struct.palmas_pmic_driver_data** %9, align 8
  %52 = getelementptr inbounds %struct.palmas_pmic_driver_data, %struct.palmas_pmic_driver_data* %51, i32 0, i32 1
  %53 = load %struct.of_regulator_match*, %struct.of_regulator_match** %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %53, i64 %55
  store %struct.of_regulator_match* %56, %struct.of_regulator_match** %14, align 8
  %57 = load %struct.of_regulator_match*, %struct.of_regulator_match** %14, align 8
  %58 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %57, i32 0, i32 2
  %59 = load %struct.device_node*, %struct.device_node** %58, align 8
  store %struct.device_node* %59, %struct.device_node** %16, align 8
  %60 = load %struct.of_regulator_match*, %struct.of_regulator_match** %14, align 8
  %61 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load %struct.device_node*, %struct.device_node** %16, align 8
  %66 = icmp ne %struct.device_node* %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %64, %50
  br label %158

68:                                               ; preds = %64
  %69 = load %struct.device*, %struct.device** %6, align 8
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.palmas_reg_init* @devm_kzalloc(%struct.device* %69, i32 24, i32 %70)
  store %struct.palmas_reg_init* %71, %struct.palmas_reg_init** %15, align 8
  %72 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %15, align 8
  %73 = icmp ne %struct.palmas_reg_init* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %68
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %166

77:                                               ; preds = %68
  %78 = load %struct.of_regulator_match*, %struct.of_regulator_match** %14, align 8
  %79 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %8, align 8
  %82 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %81, i32 0, i32 3
  %83 = load i64*, i64** %82, align 8
  %84 = load i32, i32* %12, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i64, i64* %83, i64 %85
  store i64 %80, i64* %86, align 8
  %87 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %15, align 8
  %88 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %8, align 8
  %89 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %88, i32 0, i32 2
  %90 = load %struct.palmas_reg_init**, %struct.palmas_reg_init*** %89, align 8
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.palmas_reg_init*, %struct.palmas_reg_init** %90, i64 %92
  store %struct.palmas_reg_init* %87, %struct.palmas_reg_init** %93, align 8
  %94 = load %struct.device_node*, %struct.device_node** %16, align 8
  %95 = call i8* @of_property_read_bool(%struct.device_node* %94, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %96 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %15, align 8
  %97 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %96, i32 0, i32 3
  store i8* %95, i8** %97, align 8
  %98 = load %struct.device_node*, %struct.device_node** %16, align 8
  %99 = call i32 @of_property_read_u32(%struct.device_node* %98, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32* %11)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp ne i32 %100, %102
  br i1 %103, label %104, label %129

104:                                              ; preds = %77
  %105 = load i32, i32* @PALMAS_EXT_CONTROL_NSLEEP, align 4
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %125, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %11, align 4
  switch i32 %109, label %116 [
    i32 1, label %110
    i32 2, label %112
    i32 3, label %114
  ]

110:                                              ; preds = %108
  %111 = load i32, i32* @PALMAS_EXT_CONTROL_ENABLE1, align 4
  store i32 %111, i32* %17, align 4
  br label %124

112:                                              ; preds = %108
  %113 = load i32, i32* @PALMAS_EXT_CONTROL_ENABLE2, align 4
  store i32 %113, i32* %17, align 4
  br label %124

114:                                              ; preds = %108
  %115 = load i32, i32* @PALMAS_EXT_CONTROL_NSLEEP, align 4
  store i32 %115, i32* %17, align 4
  br label %124

116:                                              ; preds = %108
  %117 = call i32 @WARN_ON(i32 1)
  %118 = load %struct.device*, %struct.device** %6, align 8
  %119 = load %struct.of_regulator_match*, %struct.of_regulator_match** %14, align 8
  %120 = getelementptr inbounds %struct.of_regulator_match, %struct.of_regulator_match* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* %11, align 4
  %123 = call i32 @dev_warn(%struct.device* %118, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %121, i32 %122)
  br label %124

124:                                              ; preds = %116, %114, %112, %110
  br label %125

125:                                              ; preds = %124, %104
  %126 = load i32, i32* %17, align 4
  %127 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %15, align 8
  %128 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %127, i32 0, i32 0
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %77
  %130 = load %struct.device_node*, %struct.device_node** %16, align 8
  %131 = call i32 @of_property_read_u32(%struct.device_node* %130, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32* %11)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %138, label %134

134:                                              ; preds = %129
  %135 = load i32, i32* %11, align 4
  %136 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %15, align 8
  %137 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %134, %129
  %139 = load %struct.device_node*, %struct.device_node** %16, align 8
  %140 = call i8* @of_property_read_bool(%struct.device_node* %139, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0))
  %141 = ptrtoint i8* %140 to i32
  store i32 %141, i32* %13, align 4
  %142 = load i32, i32* %13, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %148

144:                                              ; preds = %138
  %145 = load i32, i32* @PALMAS_SMPS12_VOLTAGE_RANGE, align 4
  %146 = load %struct.palmas_reg_init*, %struct.palmas_reg_init** %15, align 8
  %147 = getelementptr inbounds %struct.palmas_reg_init, %struct.palmas_reg_init* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  br label %148

148:                                              ; preds = %144, %138
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* @PALMAS_REG_LDO8, align 4
  %151 = icmp eq i32 %149, %150
  br i1 %151, label %152, label %157

152:                                              ; preds = %148
  %153 = load %struct.device_node*, %struct.device_node** %16, align 8
  %154 = call i8* @of_property_read_bool(%struct.device_node* %153, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.8, i64 0, i64 0))
  %155 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %8, align 8
  %156 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %155, i32 0, i32 1
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %152, %148
  br label %158

158:                                              ; preds = %157, %67
  %159 = load i32, i32* %12, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %12, align 4
  br label %44

161:                                              ; preds = %44
  %162 = load %struct.device_node*, %struct.device_node** %7, align 8
  %163 = call i8* @of_property_read_bool(%struct.device_node* %162, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0))
  %164 = load %struct.palmas_pmic_platform_data*, %struct.palmas_pmic_platform_data** %8, align 8
  %165 = getelementptr inbounds %struct.palmas_pmic_platform_data, %struct.palmas_pmic_platform_data* %164, i32 0, i32 0
  store i8* %163, i8** %165, align 8
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %161, %74, %39, %22
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

declare dso_local i32 @of_regulator_match(%struct.device*, %struct.device_node*, %struct.of_regulator_match*, i32) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local %struct.palmas_reg_init* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i8* @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
