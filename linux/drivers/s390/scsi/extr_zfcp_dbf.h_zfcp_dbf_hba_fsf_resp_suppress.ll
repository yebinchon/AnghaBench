; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_resp_suppress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_dbf.h_zfcp_dbf_hba_fsf_resp_suppress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.fsf_qtcb* }
%struct.fsf_qtcb = type { %struct.TYPE_9__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.fcp_resp }
%struct.fcp_resp = type { i64, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }

@FSF_IO_COMMAND = common dso_local global i64 0, align 8
@FSF_FCP_RSP_AVAILABLE = common dso_local global i64 0, align 8
@FCP_RESID_UNDER = common dso_local global i64 0, align 8
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*)* @zfcp_dbf_hba_fsf_resp_suppress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_dbf_hba_fsf_resp_suppress(%struct.zfcp_fsf_req* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zfcp_fsf_req*, align 8
  %4 = alloca %struct.fsf_qtcb*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.fcp_resp*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %3, align 8
  %9 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %3, align 8
  %10 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %9, i32 0, i32 0
  %11 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %10, align 8
  store %struct.fsf_qtcb* %11, %struct.fsf_qtcb** %4, align 8
  %12 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %13 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %17 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FSF_IO_COMMAND, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

23:                                               ; preds = %1
  %24 = load %struct.fsf_qtcb*, %struct.fsf_qtcb** %4, align 8
  %25 = getelementptr inbounds %struct.fsf_qtcb, %struct.fsf_qtcb* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  store %struct.fcp_resp* %29, %struct.fcp_resp** %6, align 8
  %30 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %31 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  store i64 %32, i64* %7, align 8
  %33 = load %struct.fcp_resp*, %struct.fcp_resp** %6, align 8
  %34 = getelementptr inbounds %struct.fcp_resp, %struct.fcp_resp* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %8, align 8
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* @FSF_FCP_RSP_AVAILABLE, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %23
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* @FCP_RESID_UNDER, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %39
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @SAM_STAT_GOOD, align 8
  %46 = icmp eq i64 %44, %45
  br label %47

47:                                               ; preds = %43, %39, %23
  %48 = phi i1 [ false, %39 ], [ false, %23 ], [ %46, %43 ]
  %49 = zext i1 %48 to i32
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %22
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
