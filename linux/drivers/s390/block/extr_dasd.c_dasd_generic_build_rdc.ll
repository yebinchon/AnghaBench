; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_build_rdc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd.c_dasd_generic_build_rdc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, %struct.dasd_device*, %struct.dasd_device*, i64, %struct.ccw1* }
%struct.ccw1 = type { i32, i64, i64, i32 }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"An error occurred in the DASD device driver, reason=%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"13\00", align 1
@CCW_CMD_RDC = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dasd_ccw_req* (%struct.dasd_device*, i32, i32)* @dasd_generic_build_rdc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dasd_ccw_req* @dasd_generic_build_rdc(%struct.dasd_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dasd_ccw_req*, align 8
  %5 = alloca %struct.dasd_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dasd_ccw_req*, align 8
  %9 = alloca %struct.ccw1*, align 8
  store %struct.dasd_device* %0, %struct.dasd_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %13 = call %struct.dasd_ccw_req* @dasd_smalloc_request(i32 %10, i32 1, i32 %11, %struct.dasd_device* %12, i32* null)
  store %struct.dasd_ccw_req* %13, %struct.dasd_ccw_req** %8, align 8
  %14 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %15 = call i64 @IS_ERR(%struct.dasd_ccw_req* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %19 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = call i32 @dev_err(i32* %21, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  store %struct.dasd_ccw_req* %23, %struct.dasd_ccw_req** %4, align 8
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %26 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %25, i32 0, i32 7
  %27 = load %struct.ccw1*, %struct.ccw1** %26, align 8
  store %struct.ccw1* %27, %struct.ccw1** %9, align 8
  %28 = load i32, i32* @CCW_CMD_RDC, align 4
  %29 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 8
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %32 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %35 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %34, i32 0, i32 2
  store i64 %33, i64* %35, align 8
  %36 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %37 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.ccw1*, %struct.ccw1** %9, align 8
  %40 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %42 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %43 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %42, i32 0, i32 5
  store %struct.dasd_device* %41, %struct.dasd_device** %43, align 8
  %44 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  %45 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %46 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %45, i32 0, i32 4
  store %struct.dasd_device* %44, %struct.dasd_device** %46, align 8
  %47 = load i32, i32* @HZ, align 4
  %48 = mul nsw i32 10, %47
  %49 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %50 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %52 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %51, i32 0, i32 1
  store i32 256, i32* %52, align 4
  %53 = call i32 (...) @get_tod_clock()
  %54 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %55 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @DASD_CQR_FILLED, align 4
  %57 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  %58 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 8
  %59 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %8, align 8
  store %struct.dasd_ccw_req* %59, %struct.dasd_ccw_req** %4, align 8
  br label %60

60:                                               ; preds = %24, %17
  %61 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  ret %struct.dasd_ccw_req* %61
}

declare dso_local %struct.dasd_ccw_req* @dasd_smalloc_request(i32, i32, i32, %struct.dasd_device*, i32*) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
