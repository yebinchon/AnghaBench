; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq2415x_charger.c_bq2415x_sysfs_set_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.power_supply = type { i32 }
%struct.bq2415x_device = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"auto\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"off\00", align 1
@BQ2415X_TIMER_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @bq2415x_sysfs_set_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bq2415x_sysfs_set_timer(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.power_supply*, align 8
  %11 = alloca %struct.bq2415x_device*, align 8
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.power_supply* @dev_get_drvdata(%struct.device* %13)
  store %struct.power_supply* %14, %struct.power_supply** %10, align 8
  %15 = load %struct.power_supply*, %struct.power_supply** %10, align 8
  %16 = call %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply* %15)
  store %struct.bq2415x_device* %16, %struct.bq2415x_device** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load i8*, i8** %8, align 8
  %18 = call i64 @strncmp(i8* %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %22 = call i32 @bq2415x_set_autotimer(%struct.bq2415x_device* %21, i32 1)
  br label %35

23:                                               ; preds = %4
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @strncmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 3)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %29 = call i32 @bq2415x_set_autotimer(%struct.bq2415x_device* %28, i32 0)
  br label %34

30:                                               ; preds = %23
  %31 = load %struct.bq2415x_device*, %struct.bq2415x_device** %11, align 8
  %32 = load i32, i32* @BQ2415X_TIMER_RESET, align 4
  %33 = call i32 @bq2415x_exec_command(%struct.bq2415x_device* %31, i32 %32)
  store i32 %33, i32* %12, align 4
  br label %34

34:                                               ; preds = %30, %27
  br label %35

35:                                               ; preds = %34, %20
  %36 = load i32, i32* %12, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %35
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %43

40:                                               ; preds = %35
  %41 = load i64, i64* %9, align 8
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %5, align 4
  br label %43

43:                                               ; preds = %40, %38
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local %struct.power_supply* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.bq2415x_device* @power_supply_get_drvdata(%struct.power_supply*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @bq2415x_set_autotimer(%struct.bq2415x_device*, i32) #1

declare dso_local i32 @bq2415x_exec_command(%struct.bq2415x_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
