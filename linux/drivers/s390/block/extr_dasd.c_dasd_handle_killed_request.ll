; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_handle_killed_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_handle_killed_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccw_device = type { i32 }
%struct.dasd_ccw_req = type { i64, i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DASD_CQR_IN_IO = common dso_local global i64 0, align 8
@DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"invalid status in handle_killed_request: %02x\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"unable to get device from cdev\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"invalid device in request\00", align 1
@DASD_CQR_QUEUED = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ccw_device*, i64)* @dasd_handle_killed_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_handle_killed_request(%struct.ccw_device* %0, i64 %1) #0 {
  %3 = alloca %struct.ccw_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca %struct.dasd_device*, align 8
  store %struct.ccw_device* %0, %struct.ccw_device** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %77

10:                                               ; preds = %2
  %11 = load i64, i64* %4, align 8
  %12 = inttoptr i64 %11 to %struct.dasd_ccw_req*
  store %struct.dasd_ccw_req* %12, %struct.dasd_ccw_req** %5, align 8
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @DASD_CQR_IN_IO, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %10
  %19 = load i32, i32* @DBF_DEBUG, align 4
  %20 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @DBF_EVENT_DEVID(i32 %19, %struct.ccw_device* %20, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %77

26:                                               ; preds = %10
  %27 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %28 = call %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device* %27)
  store %struct.dasd_device* %28, %struct.dasd_device** %6, align 8
  %29 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %30 = call i64 @IS_ERR(%struct.dasd_device* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %26
  %33 = load i32, i32* @DBF_DEBUG, align 4
  %34 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %35 = call i32 @DBF_EVENT_DEVID(i32 %33, %struct.ccw_device* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %77

36:                                               ; preds = %26
  %37 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %38 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %37, i32 0, i32 2
  %39 = load %struct.dasd_device*, %struct.dasd_device** %38, align 8
  %40 = icmp ne %struct.dasd_device* %39, null
  br i1 %40, label %41, label %60

41:                                               ; preds = %36
  %42 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 2
  %45 = load %struct.dasd_device*, %struct.dasd_device** %44, align 8
  %46 = icmp ne %struct.dasd_device* %42, %45
  br i1 %46, label %60, label %47

47:                                               ; preds = %41
  %48 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %49 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %48, i32 0, i32 2
  %50 = load %struct.dasd_device*, %struct.dasd_device** %49, align 8
  %51 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %50, i32 0, i32 0
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %56 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %55, i32 0, i32 1
  %57 = bitcast i32* %56 to i8*
  %58 = call i64 @strncmp(i32 %54, i8* %57, i32 4)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %47, %41, %36
  %61 = load i32, i32* @DBF_DEBUG, align 4
  %62 = load %struct.ccw_device*, %struct.ccw_device** %3, align 8
  %63 = call i32 @DBF_EVENT_DEVID(i32 %61, %struct.ccw_device* %62, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %65 = call i32 @dasd_put_device(%struct.dasd_device* %64)
  br label %77

66:                                               ; preds = %47
  %67 = load i8*, i8** @DASD_CQR_QUEUED, align 8
  %68 = ptrtoint i8* %67 to i64
  %69 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %70 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  %71 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %72 = call i32 @dasd_device_clear_timer(%struct.dasd_device* %71)
  %73 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %74 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %73)
  %75 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  %76 = call i32 @dasd_put_device(%struct.dasd_device* %75)
  br label %77

77:                                               ; preds = %66, %60, %32, %18, %9
  ret void
}

declare dso_local i32 @DBF_EVENT_DEVID(i32, %struct.ccw_device*, i8*, i8*) #1

declare dso_local %struct.dasd_device* @dasd_device_from_cdev_locked(%struct.ccw_device*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_device*) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @dasd_put_device(%struct.dasd_device*) #1

declare dso_local i32 @dasd_device_clear_timer(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
