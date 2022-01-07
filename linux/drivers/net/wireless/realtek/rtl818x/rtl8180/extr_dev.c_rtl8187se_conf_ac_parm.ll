; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_conf_ac_parm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8187se_conf_ac_parm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32, %struct.TYPE_2__*, %struct.ieee80211_tx_queue_params* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.ieee80211_tx_queue_params = type { i32, i64, i32, i32 }

@AC_PARAM_TXOP_LIMIT_SHIFT = common dso_local global i64 0, align 8
@AC_PARAM_ECW_MAX_SHIFT = common dso_local global i64 0, align 8
@AC_PARAM_ECW_MIN_SHIFT = common dso_local global i64 0, align 8
@AC_PARAM_AIFS_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64)* @rtl8187se_conf_ac_parm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl8187se_conf_ac_parm(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %6 = alloca %struct.rtl8180_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %13, align 8
  store %struct.rtl8180_priv* %14, %struct.rtl8180_priv** %6, align 8
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %16 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %15, i32 0, i32 2
  %17 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %17, i64 %18
  store %struct.ieee80211_tx_queue_params* %19, %struct.ieee80211_tx_queue_params** %5, align 8
  %20 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @fls(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @fls(i32 %26)
  store i64 %27, i64* %11, align 8
  %28 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %32 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = add nsw i32 10, %34
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %8, align 8
  %37 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %9, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* @AC_PARAM_TXOP_LIMIT_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @AC_PARAM_ECW_MAX_SHIFT, align 8
  %45 = shl i64 %43, %44
  %46 = or i64 %42, %45
  %47 = load i64, i64* %10, align 8
  %48 = load i64, i64* @AC_PARAM_ECW_MIN_SHIFT, align 8
  %49 = shl i64 %47, %48
  %50 = or i64 %46, %49
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @AC_PARAM_AIFS_SHIFT, align 8
  %53 = shl i64 %51, %52
  %54 = or i64 %50, %53
  store i64 %54, i64* %7, align 8
  %55 = load i64, i64* %4, align 8
  switch i64 %55, label %88 [
    i64 130, label %56
    i64 131, label %64
    i64 129, label %72
    i64 128, label %80
  ]

56:                                               ; preds = %2
  %57 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %58 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %59 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 3
  %62 = load i64, i64* %7, align 8
  %63 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %57, i32* %61, i64 %62)
  br label %88

64:                                               ; preds = %2
  %65 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %66 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %67 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 2
  %70 = load i64, i64* %7, align 8
  %71 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %65, i32* %69, i64 %70)
  br label %88

72:                                               ; preds = %2
  %73 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %74 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %75 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i64, i64* %7, align 8
  %79 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %73, i32* %77, i64 %78)
  br label %88

80:                                               ; preds = %2
  %81 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %82 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  %83 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i64, i64* %7, align 8
  %87 = call i32 @rtl818x_iowrite32(%struct.rtl8180_priv* %81, i32* %85, i64 %86)
  br label %88

88:                                               ; preds = %2, %80, %72, %64, %56
  ret void
}

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @rtl818x_iowrite32(%struct.rtl8180_priv*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
