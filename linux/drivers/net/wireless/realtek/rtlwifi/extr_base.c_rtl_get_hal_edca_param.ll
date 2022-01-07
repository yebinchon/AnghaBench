; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_get_hal_edca_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_base.c_rtl_get_hal_edca_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_tx_queue_params = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl_get_hal_edca_param(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32 %2, %struct.ieee80211_tx_queue_params* %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_vif*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_tx_queue_params*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ieee80211_tx_queue_params* %3, %struct.ieee80211_tx_queue_params** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 10, i32* %10, align 4
  store i32 20, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %22 [
    i32 133, label %13
    i32 129, label %13
    i32 128, label %13
    i32 131, label %13
    i32 132, label %13
    i32 130, label %14
  ]

13:                                               ; preds = %4, %4, %4, %4, %4
  store i32 16, i32* %10, align 4
  store i32 9, i32* %11, align 4
  br label %23

14:                                               ; preds = %4
  %15 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %6, align 8
  %16 = getelementptr inbounds %struct.ieee80211_vif, %struct.ieee80211_vif* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 9, i32 20
  store i32 %21, i32* %11, align 4
  br label %23

22:                                               ; preds = %4
  br label %23

23:                                               ; preds = %22, %14, %13
  %24 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %25 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, 2047
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %9, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %9, align 4
  %31 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @fls(i32 %33)
  %35 = and i32 %34, 15
  %36 = shl i32 %35, 12
  %37 = load i32, i32* %9, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %9, align 4
  %39 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %40 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fls(i32 %41)
  %43 = and i32 %42, 15
  %44 = shl i32 %43, 8
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %9, align 4
  %47 = load %struct.ieee80211_tx_queue_params*, %struct.ieee80211_tx_queue_params** %8, align 8
  %48 = getelementptr inbounds %struct.ieee80211_tx_queue_params, %struct.ieee80211_tx_queue_params* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 15
  %51 = load i32, i32* %11, align 4
  %52 = mul nsw i32 %50, %51
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %9, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  ret i32 %57
}

declare dso_local i32 @fls(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
