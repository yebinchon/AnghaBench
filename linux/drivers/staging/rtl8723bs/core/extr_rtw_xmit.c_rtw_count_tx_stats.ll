; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_count_tx_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_rtw_count_tx_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_priv, %struct.xmit_priv }
%struct.mlme_priv = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.xmit_priv = type { i32, i32 }
%struct.xmit_frame = type { i32, i32, %struct.TYPE_4__ }
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
  %11 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.sta_info* null, %struct.sta_info** %7, align 8
  store %struct.stainfo_stats* null, %struct.stainfo_stats** %8, align 8
  %12 = load %struct.adapter*, %struct.adapter** %4, align 8
  %13 = getelementptr inbounds %struct.adapter, %struct.adapter* %12, i32 0, i32 1
  store %struct.xmit_priv* %13, %struct.xmit_priv** %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  store %struct.mlme_priv* %15, %struct.mlme_priv** %10, align 8
  store i32 1, i32* %11, align 4
  %16 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %17 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 15
  %20 = load i32, i32* @DATA_FRAMETAG, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %62

22:                                               ; preds = %3
  %23 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %24 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %28 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, %26
  store i32 %31, i32* %29, align 4
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %34 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, %32
  store i32 %36, i32* %34, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load %struct.xmit_priv*, %struct.xmit_priv** %9, align 8
  %39 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, %37
  store i32 %41, i32* %39, align 4
  %42 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %43 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.sta_info*, %struct.sta_info** %44, align 8
  store %struct.sta_info* %45, %struct.sta_info** %7, align 8
  %46 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %47 = icmp ne %struct.sta_info* %46, null
  br i1 %47, label %48, label %61

48:                                               ; preds = %22
  %49 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %50 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %49, i32 0, i32 0
  store %struct.stainfo_stats* %50, %struct.stainfo_stats** %8, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load %struct.stainfo_stats*, %struct.stainfo_stats** %8, align 8
  %53 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, %51
  store i32 %55, i32* %53, align 4
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.stainfo_stats*, %struct.stainfo_stats** %8, align 8
  %58 = getelementptr inbounds %struct.stainfo_stats, %struct.stainfo_stats* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, %56
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %48, %22
  br label %62

62:                                               ; preds = %61, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
