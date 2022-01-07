; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c__dasd_requeue_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c__dasd_requeue_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.TYPE_2__*, i64, %struct.dasd_block* }
%struct.TYPE_2__ = type { i32 }
%struct.dasd_block = type { i32 }
%struct.request = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @_dasd_requeue_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_dasd_requeue_request(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca %struct.dasd_block*, align 8
  %5 = alloca %struct.request*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  %6 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %7 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %6, i32 0, i32 2
  %8 = load %struct.dasd_block*, %struct.dasd_block** %7, align 8
  store %struct.dasd_block* %8, %struct.dasd_block** %4, align 8
  %9 = load %struct.dasd_block*, %struct.dasd_block** %4, align 8
  %10 = icmp ne %struct.dasd_block* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %16 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @spin_lock_irq(i32* %18)
  %20 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %21 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.request*
  store %struct.request* %23, %struct.request** %5, align 8
  %24 = load %struct.request*, %struct.request** %5, align 8
  %25 = call i32 @blk_mq_requeue_request(%struct.request* %24, i32 0)
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %27 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = call i32 @spin_unlock_irq(i32* %29)
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %14, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @blk_mq_requeue_request(%struct.request*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
