; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_reservation.c_wusbhc_rsv_establish.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_reservation.c_wusbhc_rsv_establish.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { %struct.uwb_rsv*, i64, %struct.uwb_rc* }
%struct.uwb_rsv = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.uwb_dev_addr, i32 }
%struct.uwb_dev_addr = type { i64* }
%struct.uwb_rc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@wusbhc_rsv_complete_cb = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UWB_RSV_TARGET_DEVADDR = common dso_local global i32 0, align 4
@UWB_DRP_TYPE_PRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusbhc_rsv_establish(%struct.wusbhc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.uwb_rc*, align 8
  %5 = alloca %struct.uwb_rsv*, align 8
  %6 = alloca %struct.uwb_dev_addr, align 8
  %7 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  %8 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %9 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %8, i32 0, i32 2
  %10 = load %struct.uwb_rc*, %struct.uwb_rc** %9, align 8
  store %struct.uwb_rc* %10, %struct.uwb_rc** %4, align 8
  %11 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %12 = icmp eq %struct.uwb_rc* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = load %struct.uwb_rc*, %struct.uwb_rc** %4, align 8
  %18 = load i32, i32* @wusbhc_rsv_complete_cb, align 4
  %19 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %20 = call %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc* %17, i32 %18, %struct.wusbhc* %19)
  store %struct.uwb_rsv* %20, %struct.uwb_rsv** %5, align 8
  %21 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %22 = icmp eq %struct.uwb_rsv* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %69

26:                                               ; preds = %16
  %27 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %28 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %6, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 0
  store i64 %29, i64* %32, align 8
  %33 = getelementptr inbounds %struct.uwb_dev_addr, %struct.uwb_dev_addr* %6, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = getelementptr inbounds i64, i64* %34, i64 1
  store i64 0, i64* %35, align 8
  %36 = load i32, i32* @UWB_RSV_TARGET_DEVADDR, align 4
  %37 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %38 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 8
  %40 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %41 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast %struct.uwb_dev_addr* %42 to i8*
  %44 = bitcast %struct.uwb_dev_addr* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  %45 = load i32, i32* @UWB_DRP_TYPE_PRIVATE, align 4
  %46 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %47 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  %48 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %49 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %48, i32 0, i32 0
  store i32 256, i32* %49, align 8
  %50 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %51 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %50, i32 0, i32 1
  store i32 15, i32* %51, align 4
  %52 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %53 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %52, i32 0, i32 2
  store i32 1, i32* %53, align 8
  %54 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %55 = getelementptr inbounds %struct.uwb_rsv, %struct.uwb_rsv* %54, i32 0, i32 3
  store i32 1, i32* %55, align 4
  %56 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %57 = call i32 @uwb_rsv_establish(%struct.uwb_rsv* %56)
  store i32 %57, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %26
  %61 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %62 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %63 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %62, i32 0, i32 0
  store %struct.uwb_rsv* %61, %struct.uwb_rsv** %63, align 8
  br label %67

64:                                               ; preds = %26
  %65 = load %struct.uwb_rsv*, %struct.uwb_rsv** %5, align 8
  %66 = call i32 @uwb_rsv_destroy(%struct.uwb_rsv* %65)
  br label %67

67:                                               ; preds = %64, %60
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %67, %23, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local %struct.uwb_rsv* @uwb_rsv_create(%struct.uwb_rc*, i32, %struct.wusbhc*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @uwb_rsv_establish(%struct.uwb_rsv*) #1

declare dso_local i32 @uwb_rsv_destroy(%struct.uwb_rsv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
