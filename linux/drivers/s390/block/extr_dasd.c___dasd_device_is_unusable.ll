; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_device_is_unusable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c___dasd_device_is_unusable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_device = type { i32, i32 }
%struct.dasd_ccw_req = type { i32 }

@DASD_STOPPED_DC_WAIT = common dso_local global i32 0, align 4
@DASD_UNRESUMED_PM = common dso_local global i32 0, align 4
@DASD_STOPPED_NOSPC = common dso_local global i32 0, align 4
@DASD_FLAG_OFFLINE = common dso_local global i32 0, align 4
@DASD_FLAG_SAFE_OFFLINE_RUNNING = common dso_local global i32 0, align 4
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_device*, %struct.dasd_ccw_req*)* @__dasd_device_is_unusable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__dasd_device_is_unusable(%struct.dasd_device* %0, %struct.dasd_ccw_req* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dasd_device*, align 8
  %5 = alloca %struct.dasd_ccw_req*, align 8
  %6 = alloca i32, align 4
  store %struct.dasd_device* %0, %struct.dasd_device** %4, align 8
  store %struct.dasd_ccw_req* %1, %struct.dasd_ccw_req** %5, align 8
  %7 = load i32, i32* @DASD_STOPPED_DC_WAIT, align 4
  %8 = load i32, i32* @DASD_UNRESUMED_PM, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @DASD_STOPPED_NOSPC, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* @DASD_FLAG_OFFLINE, align 4
  %14 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %15 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %14, i32 0, i32 1
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load i32, i32* @DASD_FLAG_SAFE_OFFLINE_RUNNING, align 4
  %20 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %21 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %20, i32 0, i32 1
  %22 = call i64 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %47

25:                                               ; preds = %18, %2
  %26 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %25
  %31 = load %struct.dasd_device*, %struct.dasd_device** %4, align 8
  %32 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %47

38:                                               ; preds = %30
  %39 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %5, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 0
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store i32 1, i32* %3, align 4
  br label %47

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %25
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %44, %37, %24
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i64 @test_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
