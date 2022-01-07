; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_conf_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_dev.c_rtl8180_conf_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i64, %struct.TYPE_2__*, %struct.ieee80211_tx_queue_params* }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32 }

@RTL818X_CHIP_FAMILY_RTL8180 = common dso_local global i64 0, align 8
@RTL818X_CHIP_FAMILY_RTL8187SE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i64, %struct.ieee80211_tx_queue_params*)* @rtl8180_conf_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8180_conf_tx(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i64 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_vif*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %10 = alloca %struct.rtl8180_priv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %7, align 8
  store i64 %2, i64* %8, align 8
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %9, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 0
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %14, align 8
  store %struct.rtl8180_priv* %15, %struct.rtl8180_priv** %10, align 8
  %16 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  %17 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8180, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %60

22:                                               ; preds = %4
  %23 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fls(i32 %25)
  store i32 %26, i32* %11, align 4
  %27 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %28 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @fls(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  %32 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RTL818X_CHIP_FAMILY_RTL8187SE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %22
  %37 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  %38 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %37, i32 0, i32 2
  %39 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %39, i64 %40
  %42 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %9, align 8
  %43 = bitcast %struct.ieee80211_tx_queue_params* %41 to i8*
  %44 = bitcast %struct.ieee80211_tx_queue_params* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %43, i8* align 4 %44, i64 8, i1 false)
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %46 = load i64, i64* %8, align 8
  %47 = call i32 @rtl8187se_conf_ac_parm(%struct.ieee80211_hw* %45, i64 %46)
  br label %59

48:                                               ; preds = %22
  %49 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  %50 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %10, align 8
  %51 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 %54, 4
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @rtl818x_iowrite8(%struct.rtl8180_priv* %49, i32* %53, i32 %57)
  br label %59

59:                                               ; preds = %48, %36
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %59, %21
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local i32 @fls(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rtl8187se_conf_ac_parm(%struct.ieee80211_hw*, i64) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8180_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
