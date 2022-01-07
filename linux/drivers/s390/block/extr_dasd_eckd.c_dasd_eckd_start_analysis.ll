; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_start_analysis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_start_analysis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_block = type { i32 }
%struct.dasd_ccw_req = type { i32, i64, i32, i32*, i32 }

@dasd_eckd_analysis_callback = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@DASD_CQR_FLAGS_USE_ERP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dasd_block*)* @dasd_eckd_start_analysis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dasd_eckd_start_analysis(%struct.dasd_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dasd_block*, align 8
  %4 = alloca %struct.dasd_ccw_req*, align 8
  store %struct.dasd_block* %0, %struct.dasd_block** %3, align 8
  %5 = load %struct.dasd_block*, %struct.dasd_block** %3, align 8
  %6 = getelementptr inbounds %struct.dasd_block, %struct.dasd_block* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(i32 %7)
  store %struct.dasd_ccw_req* %8, %struct.dasd_ccw_req** %4, align 8
  %9 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %10 = call i64 @IS_ERR(%struct.dasd_ccw_req* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %14 = call i32 @PTR_ERR(%struct.dasd_ccw_req* %13)
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load i32, i32* @dasd_eckd_analysis_callback, align 4
  %17 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %18 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %20 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %19, i32 0, i32 3
  store i32* null, i32** %20, align 8
  %21 = load i32, i32* @HZ, align 4
  %22 = mul nsw i32 5, %21
  %23 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %24 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i32, i32* @DASD_CQR_FLAGS_USE_ERP, align 4
  %26 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %27 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %26, i32 0, i32 2
  %28 = call i32 @clear_bit(i32 %25, i32* %27)
  %29 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %30 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %4, align 8
  %32 = call i32 @dasd_add_request_head(%struct.dasd_ccw_req* %31)
  %33 = load i32, i32* @EAGAIN, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %15, %12
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.dasd_ccw_req* @dasd_eckd_analysis_ccw(i32) #1

declare dso_local i64 @IS_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @PTR_ERR(%struct.dasd_ccw_req*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dasd_add_request_head(%struct.dasd_ccw_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
