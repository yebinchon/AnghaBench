; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_userspace-consumer.c_reg_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_userspace-consumer.c_reg_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.userspace_consumer_data = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Configuring invalid mode\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Failed to configure state: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @reg_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @reg_set_state(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.userspace_consumer_data*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.userspace_consumer_data* @dev_get_drvdata(%struct.device* %13)
  store %struct.userspace_consumer_data* %14, %struct.userspace_consumer_data** %10, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = call i64 @sysfs_streq(i8* %15, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %4
  %19 = load i8*, i8** %8, align 8
  %20 = call i64 @sysfs_streq(i8* %19, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %18, %4
  store i32 1, i32* %11, align 4
  br label %37

23:                                               ; preds = %18
  %24 = load i8*, i8** %8, align 8
  %25 = call i64 @sysfs_streq(i8* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i8*, i8** %8, align 8
  %29 = call i64 @sysfs_streq(i8* %28, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27, %23
  store i32 0, i32* %11, align 4
  br label %36

32:                                               ; preds = %27
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %35 = load i64, i64* %9, align 8
  store i64 %35, i64* %5, align 8
  br label %82

36:                                               ; preds = %31
  br label %37

37:                                               ; preds = %36, %22
  %38 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %39 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %43 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %41, %44
  br i1 %45, label %46, label %77

46:                                               ; preds = %37
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %46
  %50 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %51 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %54 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @regulator_bulk_enable(i32 %52, i32 %55)
  store i32 %56, i32* %12, align 4
  br label %65

57:                                               ; preds = %46
  %58 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %59 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %62 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @regulator_bulk_disable(i32 %60, i32 %63)
  store i32 %64, i32* %12, align 4
  br label %65

65:                                               ; preds = %57, %49
  %66 = load i32, i32* %12, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %11, align 4
  %70 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %71 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %76

72:                                               ; preds = %65
  %73 = load %struct.device*, %struct.device** %6, align 8
  %74 = load i32, i32* %12, align 4
  %75 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %73, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %74)
  br label %76

76:                                               ; preds = %72, %68
  br label %77

77:                                               ; preds = %76, %37
  %78 = load %struct.userspace_consumer_data*, %struct.userspace_consumer_data** %10, align 8
  %79 = getelementptr inbounds %struct.userspace_consumer_data, %struct.userspace_consumer_data* %78, i32 0, i32 1
  %80 = call i32 @mutex_unlock(i32* %79)
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %5, align 8
  br label %82

82:                                               ; preds = %77, %32
  %83 = load i64, i64* %5, align 8
  ret i64 %83
}

declare dso_local %struct.userspace_consumer_data* @dev_get_drvdata(%struct.device*) #1

declare dso_local i64 @sysfs_streq(i8*, i8*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @regulator_bulk_enable(i32, i32) #1

declare dso_local i32 @regulator_bulk_disable(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
