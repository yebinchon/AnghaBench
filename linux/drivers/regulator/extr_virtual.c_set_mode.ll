; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_virtual.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.virtual_consumer_data = type { i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"fast\0A\00", align 1
@REGULATOR_MODE_FAST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"normal\0A\00", align 1
@REGULATOR_MODE_NORMAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"idle\0A\00", align 1
@REGULATOR_MODE_IDLE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [9 x i8] c"standby\0A\00", align 1
@REGULATOR_MODE_STANDBY = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Configuring invalid mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Failed to configure mode: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @set_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.virtual_consumer_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.virtual_consumer_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.virtual_consumer_data* %14, %struct.virtual_consumer_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @sysfs_streq(i8* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* @REGULATOR_MODE_FAST, align 4
  store i32 %19, i32* %11, align 4
  br label %45

20:                                               ; preds = %4
  %21 = load i8*, i8** %8, align 8
  %22 = call i64 @sysfs_streq(i8* %21, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i32, i32* @REGULATOR_MODE_NORMAL, align 4
  store i32 %25, i32* %11, align 4
  br label %44

26:                                               ; preds = %20
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @sysfs_streq(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %26
  %31 = load i32, i32* @REGULATOR_MODE_IDLE, align 4
  store i32 %31, i32* %11, align 4
  br label %43

32:                                               ; preds = %26
  %33 = load i8*, i8** %8, align 8
  %34 = call i64 @sysfs_streq(i8* %33, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @REGULATOR_MODE_STANDBY, align 4
  store i32 %37, i32* %11, align 4
  br label %42

38:                                               ; preds = %32
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %39, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %5, align 8
  br label %69

42:                                               ; preds = %36
  br label %43

43:                                               ; preds = %42, %30
  br label %44

44:                                               ; preds = %43, %24
  br label %45

45:                                               ; preds = %44, %18
  %46 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %47 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %46, i32 0, i32 1
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %50 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @regulator_set_mode(i32 %51, i32 %52)
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %59 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 4
  br label %64

60:                                               ; preds = %45
  %61 = load %struct.device*, %struct.device** %6, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %61, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %60, %56
  %65 = load %struct.virtual_consumer_data*, %struct.virtual_consumer_data** %10, align 8
  %66 = getelementptr inbounds %struct.virtual_consumer_data, %struct.virtual_consumer_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i64, i64* %9, align 8
  store i64 %68, i64* %5, align 8
  br label %69

69:                                               ; preds = %64, %38
  %70 = load i64, i64* %5, align 8
  ret i64 %70
}

declare dso_local %struct.virtual_consumer_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_set_mode(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
