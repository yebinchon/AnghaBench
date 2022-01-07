; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_of_parse.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_qcom_spmi-regulator.c_spmi_regulator_of_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { %struct.device*, %struct.spmi_regulator* }
%struct.device = type { i32 }
%struct.spmi_regulator = type { i32, i32, i32, i64, i64 }
%struct.spmi_regulator_init_data = type { i32 }

@SPMI_VS_OCP_DEFAULT_MAX_RETRIES = common dso_local global i64 0, align 8
@SPMI_VS_OCP_DEFAULT_RETRY_DELAY_MS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"common initialization failed, ret=%d\0A\00", align 1
@SPMI_FTSMPS426_CLOCK_RATE = common dso_local global i32 0, align 4
@SPMI_HFS430_CLOCK_RATE = common dso_local global i32 0, align 4
@SPMI_REGULATOR_LOGICAL_TYPE_VS = common dso_local global i32 0, align 4
@spmi_regulator_vs_ocp_isr = common dso_local global i32 0, align 4
@IRQF_TRIGGER_RISING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"ocp\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"failed to request irq %d, ret=%d\0A\00", align 1
@spmi_regulator_vs_ocp_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @spmi_regulator_of_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spmi_regulator_of_parse(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.regulator_desc*, align 8
  %7 = alloca %struct.regulator_config*, align 8
  %8 = alloca %struct.spmi_regulator_init_data, align 4
  %9 = alloca %struct.spmi_regulator*, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %6, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %7, align 8
  %12 = bitcast %struct.spmi_regulator_init_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %12, i8 0, i64 4, i1 false)
  %13 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %14 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %13, i32 0, i32 1
  %15 = load %struct.spmi_regulator*, %struct.spmi_regulator** %14, align 8
  store %struct.spmi_regulator* %15, %struct.spmi_regulator** %9, align 8
  %16 = load %struct.regulator_config*, %struct.regulator_config** %7, align 8
  %17 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %10, align 8
  %19 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = call i32 @spmi_regulator_get_dt_config(%struct.spmi_regulator* %19, %struct.device_node* %20, %struct.spmi_regulator_init_data* %8)
  %22 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %23 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %3
  %27 = load i64, i64* @SPMI_VS_OCP_DEFAULT_MAX_RETRIES, align 8
  %28 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %29 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %28, i32 0, i32 4
  store i64 %27, i64* %29, align 8
  br label %30

30:                                               ; preds = %26, %3
  %31 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %32 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load i64, i64* @SPMI_VS_OCP_DEFAULT_RETRY_DELAY_MS, align 8
  %37 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %38 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %37, i32 0, i32 3
  store i64 %36, i64* %38, align 8
  br label %39

39:                                               ; preds = %35, %30
  %40 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %41 = call i32 @spmi_regulator_init_registers(%struct.spmi_regulator* %40, %struct.spmi_regulator_init_data* %8)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %45, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %11, align 4
  store i32 %48, i32* %4, align 4
  br label %119

49:                                               ; preds = %39
  %50 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %51 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  switch i32 %52, label %79 [
    i32 133, label %53
    i32 128, label %53
    i32 129, label %53
    i32 130, label %53
    i32 132, label %61
    i32 131, label %70
  ]

53:                                               ; preds = %49, %49, %49, %49
  %54 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %55 = call i32 @spmi_regulator_init_slew_rate(%struct.spmi_regulator* %54)
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* %11, align 4
  store i32 %59, i32* %4, align 4
  br label %119

60:                                               ; preds = %53
  br label %80

61:                                               ; preds = %49
  %62 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %63 = load i32, i32* @SPMI_FTSMPS426_CLOCK_RATE, align 4
  %64 = call i32 @spmi_regulator_init_slew_rate_ftsmps426(%struct.spmi_regulator* %62, i32 %63)
  store i32 %64, i32* %11, align 4
  %65 = load i32, i32* %11, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %61
  %68 = load i32, i32* %11, align 4
  store i32 %68, i32* %4, align 4
  br label %119

69:                                               ; preds = %61
  br label %80

70:                                               ; preds = %49
  %71 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %72 = load i32, i32* @SPMI_HFS430_CLOCK_RATE, align 4
  %73 = call i32 @spmi_regulator_init_slew_rate_ftsmps426(%struct.spmi_regulator* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %11, align 4
  store i32 %77, i32* %4, align 4
  br label %119

78:                                               ; preds = %70
  br label %80

79:                                               ; preds = %49
  br label %80

80:                                               ; preds = %79, %78, %69, %60
  %81 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %82 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @SPMI_REGULATOR_LOGICAL_TYPE_VS, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %80
  %87 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %88 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %87, i32 0, i32 1
  store i32 0, i32* %88, align 4
  br label %89

89:                                               ; preds = %86, %80
  %90 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %91 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %118

94:                                               ; preds = %89
  %95 = load %struct.device*, %struct.device** %10, align 8
  %96 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %97 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @spmi_regulator_vs_ocp_isr, align 4
  %100 = load i32, i32* @IRQF_TRIGGER_RISING, align 4
  %101 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %102 = call i32 @devm_request_irq(%struct.device* %95, i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), %struct.spmi_regulator* %101)
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %113

105:                                              ; preds = %94
  %106 = load %struct.device*, %struct.device** %10, align 8
  %107 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %108 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %11, align 4
  %111 = call i32 (%struct.device*, i8*, i32, ...) @dev_err(%struct.device* %106, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load i32, i32* %11, align 4
  store i32 %112, i32* %4, align 4
  br label %119

113:                                              ; preds = %94
  %114 = load %struct.spmi_regulator*, %struct.spmi_regulator** %9, align 8
  %115 = getelementptr inbounds %struct.spmi_regulator, %struct.spmi_regulator* %114, i32 0, i32 2
  %116 = load i32, i32* @spmi_regulator_vs_ocp_work, align 4
  %117 = call i32 @INIT_DELAYED_WORK(i32* %115, i32 %116)
  br label %118

118:                                              ; preds = %113, %89
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %118, %105, %76, %67, %58, %44
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spmi_regulator_get_dt_config(%struct.spmi_regulator*, %struct.device_node*, %struct.spmi_regulator_init_data*) #2

declare dso_local i32 @spmi_regulator_init_registers(%struct.spmi_regulator*, %struct.spmi_regulator_init_data*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, ...) #2

declare dso_local i32 @spmi_regulator_init_slew_rate(%struct.spmi_regulator*) #2

declare dso_local i32 @spmi_regulator_init_slew_rate_ftsmps426(%struct.spmi_regulator*, i32) #2

declare dso_local i32 @devm_request_irq(%struct.device*, i32, i32, i32, i8*, %struct.spmi_regulator*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
