; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_count_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_xmit.c_rtw_count_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.xmit_priv }
%struct.mlme_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xmit_priv = type { i32 }
%struct.xmit_frame = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.sta_info* }
%struct.sta_info = type { %struct.stainfo_stats }
%struct.stainfo_stats = type { i32, i32 }

@DATA_FRAMETAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_count_tx_stats(%struct.adapter* %0, %struct.xmit_frame* %1, i32 %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca %struct.stainfo_stats*, align 8
  %9 = alloca %struct.xmit_priv*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  store %struct.stainfo_stats* null, %struct.stainfo_stats** %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %4, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  store %struct.xmit_priv* %12, %struct.xmit_priv** %9, align 8
  %13 = load %struct.adapter*, %struct.adapter** %4, align 8
  %14 = getelementptr inbounds %struct.adapter, %struct.adapter* %13, i32 0, i32 0
  store %struct.mlme_priv* %14, %struct.mlme_priv** %10, align 8
  %15 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %16 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = and i32 %17, 15
  %19 = load i32, i32* @DATA_FRAMETAG, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %61

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %24 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %28 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %31 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = add nsw i64 %34, %29
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %32, align 4
  %37 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %38 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.sta_info*, %struct.sta_info** %39, align 8
  store %struct.sta_info* %40, %struct.sta_info** %7, align 8
  %41 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %42 = icmp ne %struct.sta_info* %41, null
  br i1 %42, label %43, label %60

43:                                               ; preds = %21
  %44 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %45 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %44, i32 0, i32 0
  store %struct.stainfo_stats* %45, %struct.stainfo_stats** %8, align 8
  %46 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %47 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.stainfo_stats*, %struct.stainfo_stats** %8, align 8
  %50 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.stainfo_stats*, %struct.stainfo_stats** %8, align 8
  %57 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %43, %21
  br label %61

61:                                               ; preds = %60, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
