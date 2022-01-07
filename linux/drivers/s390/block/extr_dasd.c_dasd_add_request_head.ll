; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_add_request_head.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_add_request_head.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { i32, i32 }

@DASD_CQR_QUEUED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_add_request_head(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 2
  %7 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  store %struct.dasd_device* %7, %struct.dasd_device** %3, align 8
  %8 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %9 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_ccwdev_lock(i32 %10)
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load i32, i32* @DASD_CQR_QUEUED, align 4
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %16 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 0
  %19 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %20 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %19, i32 0, i32 1
  %21 = call i32 @list_add(i32* %18, i32* %20)
  %22 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %23 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %22)
  %24 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %25 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_ccwdev_lock(i32 %26)
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32 %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
