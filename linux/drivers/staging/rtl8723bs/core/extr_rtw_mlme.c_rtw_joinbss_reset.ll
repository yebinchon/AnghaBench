; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_joinbss_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_mlme.c_rtw_joinbss_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, %struct.mlme_priv }
%struct.TYPE_2__ = type { i32 }
%struct.mlme_priv = type { i64, i64, %struct.ht_priv }
%struct.ht_priv = type { i32, i64 }

@HW_VAR_RXDMA_AGG_PG_TH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_joinbss_reset(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlme_priv*, align 8
  %5 = alloca %struct.ht_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %6 = load %struct.adapter*, %struct.adapter** %2, align 8
  %7 = getelementptr inbounds %struct.adapter, %struct.adapter* %6, i32 0, i32 1
  store %struct.mlme_priv* %7, %struct.mlme_priv** %4, align 8
  %8 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %8, i32 0, i32 2
  store %struct.ht_priv* %9, %struct.ht_priv** %5, align 8
  %10 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %11 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %10, i32 0, i32 1
  store i64 0, i64* %11, align 8
  %12 = load %struct.mlme_priv*, %struct.mlme_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mlme_priv, %struct.mlme_priv* %12, i32 0, i32 0
  store i64 0, i64* %13, align 8
  %14 = load %struct.ht_priv*, %struct.ht_priv** %5, align 8
  %15 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.ht_priv*, %struct.ht_priv** %5, align 8
  %17 = getelementptr inbounds %struct.ht_priv, %struct.ht_priv* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load %struct.adapter*, %struct.adapter** %2, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load %struct.adapter*, %struct.adapter** %2, align 8
  %30 = load i32, i32* @HW_VAR_RXDMA_AGG_PG_TH, align 4
  %31 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %29, i32 %30, i32* %3)
  br label %36

32:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  %33 = load %struct.adapter*, %struct.adapter** %2, align 8
  %34 = load i32, i32* @HW_VAR_RXDMA_AGG_PG_TH, align 4
  %35 = call i32 @rtw_hal_set_hwreg(%struct.adapter* %33, i32 %34, i32* %3)
  br label %36

36:                                               ; preds = %32, %28
  ret void
}

declare dso_local i32 @rtw_hal_set_hwreg(%struct.adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
