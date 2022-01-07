; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_space_exhaust.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_space_exhaust.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i64 }
%struct.dasd_ccw_req = type { i64, i32 }

@DASD_EER_NOSPC = common dso_local global i32 0, align 4
@DASD_STATE_BASIC = common dso_local global i64 0, align 8
@DASD_CQR_IN_IO = common dso_local global i64 0, align 8
@DASD_CQR_CLEAR_PENDING = common dso_local global i64 0, align 8
@DASD_CQR_QUEUED = common dso_local global i64 0, align 8
@DASD_STOPPED_NOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_generic_space_exhaust(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1) #0 {
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %3, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %4, align 8
  %5 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %6 = load i32, i32* @DASD_EER_NOSPC, align 4
  %7 = call i32 @dasd_eer_write(%struct.dasd_device* %5, i32* null, i32 %6)
  %8 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @DASD_STATE_BASIC, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %42

14:                                               ; preds = %2
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %16 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @DASD_CQR_IN_IO, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %22 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @DASD_CQR_CLEAR_PENDING, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %20, %14
  %27 = load i64, i64* @DASD_CQR_QUEUED, align 8
  %28 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %29 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %31 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 8
  br label %34

34:                                               ; preds = %26, %20
  %35 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %36 = load i32, i32* @DASD_STOPPED_NOSPC, align 4
  %37 = call i32 @dasd_device_set_stop_bits(%struct.dasd_device* %35, i32 %36)
  %38 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %39 = call i32 @dasd_device_clear_timer(%struct.dasd_device* %38)
  %40 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %41 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %40)
  br label %42

42:                                               ; preds = %34, %13
  ret void
}

declare dso_local i32 @dasd_eer_write(%struct.dasd_device*, i32*, i32) #1

declare dso_local i32 @dasd_device_set_stop_bits(%struct.dasd_device*, i32) #1

declare dso_local i32 @dasd_device_clear_timer(%struct.dasd_device*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
