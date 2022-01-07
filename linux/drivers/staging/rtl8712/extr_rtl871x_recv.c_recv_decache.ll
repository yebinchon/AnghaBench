; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_recv_decache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_recv_decache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.stainfo_rxcache = type { i64* }

@_FAIL = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.recv_frame*, i32, %struct.stainfo_rxcache*)* @recv_decache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_decache(%union.recv_frame* %0, i32 %1, %struct.stainfo_rxcache* %2) #0 {
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
  %11 = bitcast %union.recv_frame* %10 to %struct.TYPE_6__*
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %8, align 4
  %16 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %17 = bitcast %union.recv_frame* %16 to %struct.TYPE_6__*
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 65535
  %23 = shl i32 %22, 4
  %24 = load %union.recv_frame*, %union.recv_frame** %5, align 8
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 15
  %31 = or i32 %23, %30
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %9, align 8
  %33 = load i32, i32* %8, align 4
  %34 = icmp sgt i32 %33, 15
  br i1 %34, label %35, label %37

35:                                               ; preds = %3
  %36 = load i32, i32* @_FAIL, align 4
  store i32 %36, i32* %4, align 4
  br label %58

37:                                               ; preds = %3
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.stainfo_rxcache*, %struct.stainfo_rxcache** %7, align 8
  %40 = getelementptr inbounds %struct.stainfo_rxcache, %struct.stainfo_rxcache* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64, i64* %41, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %38, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = load i32, i32* @_FAIL, align 4
  store i32 %48, i32* %4, align 4
  br label %58

49:                                               ; preds = %37
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.stainfo_rxcache*, %struct.stainfo_rxcache** %7, align 8
  %52 = getelementptr inbounds %struct.stainfo_rxcache, %struct.stainfo_rxcache* %51, i32 0, i32 0
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %8, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %50, i64* %56, align 8
  %57 = load i32, i32* @_SUCCESS, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %49, %47, %35
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
