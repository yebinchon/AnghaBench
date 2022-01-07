; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_device.c_ccw_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.ccw_device = type { %struct.ccw_device_id }
%struct.ccw_device_id = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [13 x i8] c"CU_TYPE=%04X\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"CU_MODEL=%02X\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"DEV_TYPE=%04X\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"DEV_MODEL=%02X\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"MODALIAS=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @ccw_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccw_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.kobj_uevent_env*, align 8
  %6 = alloca %struct.ccw_device*, align 8
  %7 = alloca %struct.ccw_device_id*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [30 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %5, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.ccw_device* @to_ccwdev(%struct.device* %10)
  store %struct.ccw_device* %11, %struct.ccw_device** %6, align 8
  %12 = load %struct.ccw_device*, %struct.ccw_device** %6, align 8
  %13 = getelementptr inbounds %struct.ccw_device, %struct.ccw_device* %12, i32 0, i32 0
  store %struct.ccw_device_id* %13, %struct.ccw_device_id** %7, align 8
  %14 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %15 = load %struct.ccw_device_id*, %struct.ccw_device_id** %7, align 8
  %16 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %61

23:                                               ; preds = %2
  %24 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %25 = load %struct.ccw_device_id*, %struct.ccw_device_id** %7, align 8
  %26 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %24, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i8* %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %8, align 4
  store i32 %32, i32* %3, align 4
  br label %61

33:                                               ; preds = %23
  %34 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %35 = load %struct.ccw_device_id*, %struct.ccw_device_id** %7, align 8
  %36 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %34, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %33
  %44 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %45 = load %struct.ccw_device_id*, %struct.ccw_device_id** %7, align 8
  %46 = getelementptr inbounds %struct.ccw_device_id, %struct.ccw_device_id* %45, i32 0, i32 3
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %44, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %43
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %3, align 4
  br label %61

53:                                               ; preds = %43
  %54 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %55 = load %struct.ccw_device_id*, %struct.ccw_device_id** %7, align 8
  %56 = call i32 @snprint_alias(i8* %54, i32 30, %struct.ccw_device_id* %55, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0))
  %57 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %5, align 8
  %58 = getelementptr inbounds [30 x i8], [30 x i8]* %9, i64 0, i64 0
  %59 = call i32 @add_uevent_var(%struct.kobj_uevent_env* %57, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %53, %51, %41, %31, %21
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.ccw_device* @to_ccwdev(%struct.device*) #1

declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, i8*) #1

declare dso_local i32 @snprint_alias(i8*, i32, %struct.ccw_device_id*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
