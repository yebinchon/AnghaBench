; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reset_ccw_to_base_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/block/extr_dasd_eckd.c_dasd_eckd_reset_ccw_to_base_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dasd_ccw_req = type { i32, %struct.PFX_eckd_data*, %struct.tcw* }
%struct.PFX_eckd_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.tcw = type { i64 }
%struct.ccw1 = type { i64 }
%struct.tccb = type { i32* }
%struct.dcw = type { i32* }

@DASD_ECKD_CCW_PFX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dasd_eckd_reset_ccw_to_base_io(%struct.dasd_ccw_req* %0) #0 {
  %2 = alloca %struct.dasd_ccw_req*, align 8
  %3 = alloca %struct.ccw1*, align 8
  %4 = alloca %struct.PFX_eckd_data*, align 8
  %5 = alloca %struct.tcw*, align 8
  %6 = alloca %struct.tccb*, align 8
  %7 = alloca %struct.dcw*, align 8
  store %struct.dasd_ccw_req* %0, %struct.dasd_ccw_req** %2, align 8
  %8 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %9 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %34

12:                                               ; preds = %1
  %13 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %14 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %13, i32 0, i32 2
  %15 = load %struct.tcw*, %struct.tcw** %14, align 8
  store %struct.tcw* %15, %struct.tcw** %5, align 8
  %16 = load %struct.tcw*, %struct.tcw** %5, align 8
  %17 = call %struct.tccb* @tcw_get_tccb(%struct.tcw* %16)
  store %struct.tccb* %17, %struct.tccb** %6, align 8
  %18 = load %struct.tccb*, %struct.tccb** %6, align 8
  %19 = getelementptr inbounds %struct.tccb, %struct.tccb* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = bitcast i32* %21 to %struct.dcw*
  store %struct.dcw* %22, %struct.dcw** %7, align 8
  %23 = load %struct.dcw*, %struct.dcw** %7, align 8
  %24 = getelementptr inbounds %struct.dcw, %struct.dcw* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = bitcast i32* %26 to %struct.PFX_eckd_data*
  store %struct.PFX_eckd_data* %27, %struct.PFX_eckd_data** %4, align 8
  %28 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %29 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %32 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %55

34:                                               ; preds = %1
  %35 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %36 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %35, i32 0, i32 2
  %37 = load %struct.tcw*, %struct.tcw** %36, align 8
  %38 = bitcast %struct.tcw* %37 to %struct.ccw1*
  store %struct.ccw1* %38, %struct.ccw1** %3, align 8
  %39 = load %struct.dasd_ccw_req*, %struct.dasd_ccw_req** %2, align 8
  %40 = getelementptr inbounds %struct.dasd_ccw_req, %struct.dasd_ccw_req* %39, i32 0, i32 1
  %41 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %40, align 8
  store %struct.PFX_eckd_data* %41, %struct.PFX_eckd_data** %4, align 8
  %42 = load %struct.ccw1*, %struct.ccw1** %3, align 8
  %43 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @DASD_ECKD_CCW_PFX, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %34
  %48 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %49 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  store i64 0, i64* %50, align 8
  %51 = load %struct.PFX_eckd_data*, %struct.PFX_eckd_data** %4, align 8
  %52 = getelementptr inbounds %struct.PFX_eckd_data, %struct.PFX_eckd_data* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %47, %34
  br label %55

55:                                               ; preds = %54, %12
  ret void
}

declare dso_local %struct.tccb* @tcw_get_tccb(%struct.tcw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
