; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_snss_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eer.c_dasd_eer_snss_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { %struct.dasd_device* }
%struct.dasd_device = type { i32, i32, %struct.dasd_ccw_req* }

@DASD_EER_STATECHANGE = common dso_local global i32 0, align 4
@DASD_FLAG_EER_IN_USE = common dso_local global i32 0, align 4
@DASD_FLAG_EER_SNSS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dasd_ccw_req*, i8*)* @dasd_eer_snss_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dasd_eer_snss_cb(%struct.dasd_ccw_req* %0, i8* %1) #0 {
  %3 = alloca %struct.dasd_ccw_req*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i64, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 0
  %9 = load %struct.dasd_device*, %struct.dasd_device** %8, align 8
  store %struct.dasd_device* %9, %struct.dasd_device** %5, align 8
  %10 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %11 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %12 = load i32, i32* @DASD_EER_STATECHANGE, align 4
  %13 = call i32 @dasd_eer_write(%struct.dasd_device* %10, %struct.dasd_ccw_req* %11, i32 %12)
  %14 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @get_ccwdev_lock(i32 %16)
  %18 = load i64, i64* %6, align 8
  %19 = call i32 @spin_lock_irqsave(i32 %17, i64 %18)
  %20 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 2
  %22 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %21, align 8
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %24 = icmp eq %struct.dasd_ccw_req* %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %2
  %26 = load i32, i32* @DASD_FLAG_EER_IN_USE, align 4
  %27 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %28 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %27, i32 0, i32 1
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load i32, i32* @DASD_FLAG_EER_SNSS, align 4
  %31 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 1
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %37 = call i32 @dasd_eer_snss(%struct.dasd_device* %36)
  br label %38

38:                                               ; preds = %35, %25
  store %struct.dasd_ccw_req* null, %struct.dasd_ccw_req** %3, align 8
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %41 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @get_ccwdev_lock(i32 %42)
  %44 = load i64, i64* %6, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32 %43, i64 %44)
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %47 = icmp ne %struct.dasd_ccw_req* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %3, align 8
  %50 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %51 = call i32 @dasd_sfree_request(%struct.dasd_ccw_req* %49, %struct.dasd_device* %50)
  br label %52

52:                                               ; preds = %48, %39
  ret void
}

declare dso_local i32 @dasd_eer_write(%struct.dasd_device*, %struct.dasd_ccw_req*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_eer_snss(%struct.dasd_device*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @dasd_sfree_request(%struct.dasd_ccw_req*, %struct.dasd_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
