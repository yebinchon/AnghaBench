; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_sleep_on_immediatly.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_sleep_on_immediatly.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i64, i32, i32, i32, i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@DASD_FLAG_LOCK_STOLEN = common dso_local global i32 0, align 4
@DASD_CQR_ALLOW_SLOCK = common dso_local global i32 0, align 4
@DASD_CQR_FAILED = common dso_local global i64 0, align 8
@EPERM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@dasd_wakeup_cb = common dso_local global i32 0, align 4
@DASD_SLEEPON_START_TAG = common dso_local global i32 0, align 4
@DASD_CQR_QUEUED = common dso_local global i64 0, align 8
@generic_waitq = common dso_local global i32 0, align 4
@DASD_CQR_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_sleep_on_immediatly(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 6
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %4, align 8
  %9 = load i32, i32* @DASD_FLAG_LOCK_STOLEN, align 4
  %10 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %11 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %10, i32 0, i32 3
  %12 = call i64 @test_bit(i32 %9, i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load i32, i32* @DASD_CQR_ALLOW_SLOCK, align 4
  %16 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %16, i32 0, i32 5
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %14
  %21 = load i64, i64* @DASD_CQR_FAILED, align 8
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %23 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %22, i32 0, i32 0
  store i64 %21, i64* %23, align 8
  %24 = load i32, i32* @EPERM, align 4
  %25 = sub nsw i32 0, %24
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %27 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* @EIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %108

30:                                               ; preds = %14, %1
  %31 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @get_ccwdev_lock(i32 %33)
  %35 = call i32 @spin_lock_irq(i32 %34)
  %36 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %37 = call i32 @_dasd_term_running_cqr(%struct.dasd_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %30
  %41 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %42 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @get_ccwdev_lock(i32 %43)
  %45 = call i32 @spin_unlock_irq(i32 %44)
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %108

47:                                               ; preds = %30
  %48 = load i32, i32* @dasd_wakeup_cb, align 4
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %50 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @DASD_SLEEPON_START_TAG, align 4
  %52 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %53 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %52, i32 0, i32 3
  store i32 %51, i32* %53, align 8
  %54 = load i64, i64* @DASD_CQR_QUEUED, align 8
  %55 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %56 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 2
  %59 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %60 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @list_add(i32* %58, i32 %62)
  %64 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %65 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %64)
  %66 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %67 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @get_ccwdev_lock(i32 %68)
  %70 = call i32 @spin_unlock_irq(i32 %69)
  %71 = load i32, i32* @generic_waitq, align 4
  %72 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %73 = call i32 @_wait_for_wakeup(%struct.dasd_ccw_req* %72)
  %74 = call i32 @wait_event(i32 %71, i32 %73)
  %75 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %76 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @DASD_CQR_DONE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %47
  store i32 0, i32* %5, align 4
  br label %94

81:                                               ; preds = %47
  %82 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %83 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %88 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %5, align 4
  br label %93

90:                                               ; preds = %81
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %90, %86
  br label %94

94:                                               ; preds = %93, %80
  %95 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %96 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %95)
  %97 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %98 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %94
  %102 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %103 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @dasd_schedule_block_bh(i64 %104)
  br label %106

106:                                              ; preds = %101, %94
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %106, %40, %20
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @_dasd_term_running_cqr(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @list_add(i32*, i32) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @_wait_for_wakeup(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dasd_schedule_block_bh(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
