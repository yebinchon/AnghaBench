; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_cancel_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_cancel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.dasd_device* }
%struct.dasd_device = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dasd_cancel_req(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 0
  %8 = load %struct.dasd_device*, %struct.dasd_device** %7, align 8
  store %struct.dasd_device* %8, %struct.dasd_device** %3, align 8
  %9 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %10 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @get_ccwdev_lock(i32 %11)
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32 %12, i64 %13)
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %16 = call i32 @__dasd_cancel_req(%struct.dasd_ccw_req* %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %18 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @get_ccwdev_lock(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @spin_unlock_irqrestore(i32 %20, i64 %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @__dasd_cancel_req(%struct.dasd_ccw_req*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
