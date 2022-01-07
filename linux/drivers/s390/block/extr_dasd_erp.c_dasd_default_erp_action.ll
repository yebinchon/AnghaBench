; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_erp.c_dasd_default_erp_action.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_erp.c_dasd_default_erp_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, i32, i32, i32, i32, %struct.dasd_device* }
%struct.dasd_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DBF_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"default ERP called (%i retries left)\00", align 1
@DASD_CQR_VERIFY_PATH = common dso_local global i32 0, align 4
@DASD_CQR_FILLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"%s: default ERP has run out of retries and failed\0A\00", align 1
@DASD_CQR_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.dasd_ccw_req* @dasd_default_erp_action(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.dasd_device*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %4 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %5 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %4, i32 0, i32 5
  %6 = load %struct.dasd_device*, %struct.dasd_device** %5, align 8
  store %struct.dasd_device* %6, %struct.dasd_device** %3, align 8
  %7 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %8 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %32

11:                                               ; preds = %1
  %12 = load i32, i32* @DBF_DEBUG, align 4
  %13 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %14 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %15 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @DBF_DEV_EVENT(i32 %12, %struct.dasd_device* %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @DASD_CQR_VERIFY_PATH, align 4
  %19 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %20 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %19, i32 0, i32 3
  %21 = call i32 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %11
  %24 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %25 = call i32 @dasd_path_get_opm(%struct.dasd_device* %24)
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %27 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  br label %28

28:                                               ; preds = %23, %11
  %29 = load i32, i32* @DASD_CQR_FILLED, align 4
  %30 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %31 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  br label %45

32:                                               ; preds = %1
  %33 = load %struct.dasd_device*, %struct.dasd_device** %3, align 8
  %34 = getelementptr inbounds %struct.dasd_device, %struct.dasd_device* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = call i32 @dev_name(i32* %36)
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @DASD_CQR_FAILED, align 4
  %40 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %41 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = call i32 (...) @get_tod_clock()
  %43 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %44 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %45

45:                                               ; preds = %32, %28
  %46 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  ret %struct.dasd_ccw_req* %46
}

declare dso_local i32 @DBF_DEV_EVENT(i32, %struct.dasd_device*, i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dasd_path_get_opm(%struct.dasd_device*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @get_tod_clock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
