; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_get_dt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_get_dt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_regulator = type { i32, i32 }
%struct.device_node = type { i32 }
%struct.spmi_regulator_init_data = type { i32, i32, i32 }

@SPMI_REGULATOR_PIN_CTRL_ENABLE_HW_DEFAULT = common dso_local global i32 0, align 4
@SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT = common dso_local global i32 0, align 4
@SPMI_VS_SOFT_START_STR_HW_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"qcom,ocp-max-retries\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"qcom,ocp-retry-delay\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"qcom,pin-ctrl-enable\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"qcom,pin-ctrl-hpm\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"qcom,vs-soft-start-strength\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spmi_regulator*, %struct.device_node*, %struct.spmi_regulator_init_data*)* @spmi_regulator_get_dt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spmi_regulator_get_dt_config(%struct.spmi_regulator* %0, %struct.device_node* %1, %struct.spmi_regulator_init_data* %2) #0 {
  %4 = alloca %struct.spmi_regulator*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.spmi_regulator_init_data*, align 8
  store %struct.spmi_regulator* %0, %struct.spmi_regulator** %4, align 8
  store %struct.device_node* %1, %struct.device_node** %5, align 8
  store %struct.spmi_regulator_init_data* %2, %struct.spmi_regulator_init_data** %6, align 8
  %7 = load i32, i32* @SPMI_REGULATOR_PIN_CTRL_ENABLE_HW_DEFAULT, align 4
  %8 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %6, align 8
  %9 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %8, i32 0, i32 2
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @SPMI_REGULATOR_PIN_CTRL_HPM_HW_DEFAULT, align 4
  %11 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %6, align 8
  %12 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @SPMI_VS_SOFT_START_STR_HW_DEFAULT, align 4
  %14 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %6, align 8
  %15 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load %struct.device_node*, %struct.device_node** %5, align 8
  %17 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %18 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %17, i32 0, i32 1
  %19 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32* %18)
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = load %struct.spmi_regulator*, %struct.spmi_regulator** %4, align 8
  %22 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %21, i32 0, i32 0
  %23 = call i32 @of_property_read_u32(%struct.device_node* %20, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32* %22)
  %24 = load %struct.device_node*, %struct.device_node** %5, align 8
  %25 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %6, align 8
  %26 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %25, i32 0, i32 2
  %27 = call i32 @of_property_read_u32(%struct.device_node* %24, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %26)
  %28 = load %struct.device_node*, %struct.device_node** %5, align 8
  %29 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %6, align 8
  %30 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %29, i32 0, i32 1
  %31 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32* %30)
  %32 = load %struct.device_node*, %struct.device_node** %5, align 8
  %33 = load %struct.spmi_regulator_init_data*, %struct.spmi_regulator_init_data** %6, align 8
  %34 = getelementptr inbounds %struct.spmi_regulator_init_data, %struct.spmi_regulator_init_data* %33, i32 0, i32 0
  %35 = call i32 @of_property_read_u32(%struct.device_node* %32, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0), i32* %34)
  ret void
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
