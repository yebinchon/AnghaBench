; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bd718x7-regulator.c_buck2_set_hw_dvs_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bd718x7-regulator.c_buck2_set_hw_dvs_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { i32 }
%struct.of_dvs_setting = type { i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"rohm,dvs-run-voltage\00", align 1
@BD718XX_REG_BUCK2_VOLT_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"rohm,dvs-idle-voltage\00", align 1
@BD718XX_REG_BUCK2_VOLT_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @buck2_set_hw_dvs_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buck2_set_hw_dvs_levels(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x %struct.of_dvs_setting], align 16
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %6, align 8
  %10 = getelementptr inbounds [2 x %struct.of_dvs_setting], [2 x %struct.of_dvs_setting]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %10, i32 0, i32 1
  %13 = load i32, i32* @BD718XX_REG_BUCK2_VOLT_RUN, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %10, i64 1
  %15 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %14, i32 0, i32 1
  %17 = load i32, i32* @BD718XX_REG_BUCK2_VOLT_IDLE, align 4
  store i32 %17, i32* %16, align 8
  store i32 0, i32* %8, align 4
  br label %18

18:                                               ; preds = %37, %3
  %19 = load i32, i32* %8, align 4
  %20 = getelementptr inbounds [2 x %struct.of_dvs_setting], [2 x %struct.of_dvs_setting]* %9, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(%struct.of_dvs_setting* %20)
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [2 x %struct.of_dvs_setting], [2 x %struct.of_dvs_setting]* %9, i64 0, i64 %25
  %27 = load %struct.device_node*, %struct.device_node** %4, align 8
  %28 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %29 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %30 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @set_dvs_levels(%struct.of_dvs_setting* %26, %struct.device_node* %27, %struct.regulator_desc* %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %40

36:                                               ; preds = %23
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %8, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %8, align 4
  br label %18

40:                                               ; preds = %35, %18
  %41 = load i32, i32* %7, align 4
  ret i32 %41
}

declare dso_local i32 @ARRAY_SIZE(%struct.of_dvs_setting*) #1

declare dso_local i32 @set_dvs_levels(%struct.of_dvs_setting*, %struct.device_node*, %struct.regulator_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
