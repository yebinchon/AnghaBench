; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_bd718x7-regulator.c_buck1_set_hw_dvs_levels.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_bd718x7-regulator.c_buck1_set_hw_dvs_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.regulator_desc = type { i32 }
%struct.regulator_config = type { i32 }
%struct.of_dvs_setting = type { i8*, i32 }

@.str = private unnamed_addr constant [21 x i8] c"rohm,dvs-run-voltage\00", align 1
@BD718XX_REG_BUCK1_VOLT_RUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"rohm,dvs-idle-voltage\00", align 1
@BD718XX_REG_BUCK1_VOLT_IDLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"rohm,dvs-suspend-voltage\00", align 1
@BD718XX_REG_BUCK1_VOLT_SUSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device_node*, %struct.regulator_desc*, %struct.regulator_config*)* @buck1_set_hw_dvs_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @buck1_set_hw_dvs_levels(%struct.device_node* %0, %struct.regulator_desc* %1, %struct.regulator_config* %2) #0 {
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca %struct.regulator_desc*, align 8
  %6 = alloca %struct.regulator_config*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [3 x %struct.of_dvs_setting], align 16
  store %struct.device_node* %0, %struct.device_node** %4, align 8
  store %struct.regulator_desc* %1, %struct.regulator_desc** %5, align 8
  store %struct.regulator_config* %2, %struct.regulator_config** %6, align 8
  %10 = getelementptr inbounds [3 x %struct.of_dvs_setting], [3 x %struct.of_dvs_setting]* %9, i64 0, i64 0
  %11 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %10, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %11, align 16
  %12 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %10, i32 0, i32 1
  %13 = load i32, i32* @BD718XX_REG_BUCK1_VOLT_RUN, align 4
  store i32 %13, i32* %12, align 8
  %14 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %10, i64 1
  %15 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i8** %15, align 16
  %16 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %14, i32 0, i32 1
  %17 = load i32, i32* @BD718XX_REG_BUCK1_VOLT_IDLE, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %14, i64 1
  %19 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %18, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %19, align 16
  %20 = getelementptr inbounds %struct.of_dvs_setting, %struct.of_dvs_setting* %18, i32 0, i32 1
  %21 = load i32, i32* @BD718XX_REG_BUCK1_VOLT_SUSP, align 4
  store i32 %21, i32* %20, align 8
  store i32 0, i32* %8, align 4
  br label %22

22:                                               ; preds = %41, %3
  %23 = load i32, i32* %8, align 4
  %24 = getelementptr inbounds [3 x %struct.of_dvs_setting], [3 x %struct.of_dvs_setting]* %9, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(%struct.of_dvs_setting* %24)
  %26 = icmp slt i32 %23, %25
  br i1 %26, label %27, label %44

27:                                               ; preds = %22
  %28 = load i32, i32* %8, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [3 x %struct.of_dvs_setting], [3 x %struct.of_dvs_setting]* %9, i64 0, i64 %29
  %31 = load %struct.device_node*, %struct.device_node** %4, align 8
  %32 = load %struct.regulator_desc*, %struct.regulator_desc** %5, align 8
  %33 = load %struct.regulator_config*, %struct.regulator_config** %6, align 8
  %34 = getelementptr inbounds %struct.regulator_config, %struct.regulator_config* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @set_dvs_levels(%struct.of_dvs_setting* %30, %struct.device_node* %31, %struct.regulator_desc* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  br label %44

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %22

44:                                               ; preds = %39, %22
  %45 = load i32, i32* %7, align 4
  ret i32 %45
}

declare dso_local i32 @ARRAY_SIZE(%struct.of_dvs_setting*) #1

declare dso_local i32 @set_dvs_levels(%struct.of_dvs_setting*, %struct.device_node*, %struct.regulator_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
