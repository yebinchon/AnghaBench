; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_recv_decache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_recv_decache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.stainfo_rxcache = type { i64* }

@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_notice_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"recv_decache, (tid>15)! seq_ctrl = 0x%x, tid = 0x%x\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"recv_decache, seq_ctrl = 0x%x, tid = 0x%x, tid_rxseq = 0x%x\0A\00", align 1
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_decache(%union.recv_frame* %0, i32 %1, %struct.stainfo_rxcache* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %union.recv_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.stainfo_rxcache*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %union.recv_frame* %0, %union.recv_frame** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.stainfo_rxcache* %2, %struct.stainfo_rxcache** %7, align 8
  %10 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %11 = bitcast %union.recv_frame* %10 to %struct.TYPE_5__*
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %17 = bitcast %union.recv_frame* %16 to %struct.TYPE_5__*
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 65535
  %23 = shl i32 %22, 4
  %24 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_5__*
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  %31 = or i32 %23, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %44

35:                                               ; preds = %3
  %36 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %37 = load i32, i32* @_drv_notice_, align 4
  %38 = load i64, i64* %9, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = call i32 @RT_TRACE(i32 %36, i32 %37, i8* %41)
  %43 = load i32, i32* @_FAIL, align 4
  store i32 %43, i32* %4, align 4
  br label %78

44:                                               ; preds = %3
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.stainfo_rxcache*, %struct.stainfo_rxcache** %7, align 8
  %47 = getelementptr inbounds %struct.stainfo_rxcache, %struct.stainfo_rxcache* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp eq i64 %45, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %44
  %55 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %56 = load i32, i32* @_drv_notice_, align 4
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.stainfo_rxcache*, %struct.stainfo_rxcache** %7, align 8
  %60 = getelementptr inbounds %struct.stainfo_rxcache, %struct.stainfo_rxcache* %59, i32 0, i32 0
  %61 = load i64*, i64** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @RT_TRACE(i32 %55, i32 %56, i8* %66)
  %68 = load i32, i32* @_FAIL, align 4
  store i32 %68, i32* %4, align 4
  br label %78

69:                                               ; preds = %44
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.stainfo_rxcache*, %struct.stainfo_rxcache** %7, align 8
  %72 = getelementptr inbounds %struct.stainfo_rxcache, %struct.stainfo_rxcache* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = load i32, i32* %8, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i64, i64* %73, i64 %75
  store i64 %70, i64* %76, align 8
  %77 = load i32, i32* @_SUCCESS, align 4
  store i32 %77, i32* %4, align 4
  br label %78

78:                                               ; preds = %69, %54, %35
  %79 = load i32, i32* %4, align 4
  ret i32 %79
}

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
