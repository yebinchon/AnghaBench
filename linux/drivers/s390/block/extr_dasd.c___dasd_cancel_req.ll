; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_cancel_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_cancel_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { {}* }

@DASD_CQR_CLEARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Cancelling request %p failed with rc=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_ccw_req*)* @__dasd_cancel_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dasd_cancel_req(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  %4 = alloca i32, align 4
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %5 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %6 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %5, i32 0, i32 2
  %7 = load %struct.dasd_device*, %struct.dasd_device** %6, align 8
  store %struct.dasd_device* %7, %struct.dasd_device** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %39 [
    i32 128, label %11
    i32 129, label %15
  ]

11:                                               ; preds = %1
  %12 = load i32, i32* @DASD_CQR_CLEARED, align 4
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 8
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %17 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = bitcast {}** %19 to i32 (%struct.dasd_ccw_req*)**
  %21 = load i32 (%struct.dasd_ccw_req*)*, i32 (%struct.dasd_ccw_req*)** %20, align 8
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %23 = call i32 %21(%struct.dasd_ccw_req* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %15
  %27 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.dasd_ccw_req* %31, i32 %32)
  br label %38

34:                                               ; preds = %15
  %35 = call i32 (...) @get_tod_clock()
  %36 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %37 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  br label %38

38:                                               ; preds = %34, %26
  br label %40

39:                                               ; preds = %1
  br label %40

40:                                               ; preds = %39, %38, %11
  %41 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %42 = call i32 @dasd_schedule_device_bh(%struct.dasd_device* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @dev_err(i32*, i8*, %struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @get_tod_clock(...) #1

declare dso_local i32 @dasd_schedule_device_bh(%struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
