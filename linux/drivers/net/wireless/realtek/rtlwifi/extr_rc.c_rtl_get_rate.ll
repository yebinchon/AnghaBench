; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c_rtl_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_rc.c_rtl_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_rate_control = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.ieee80211_tx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* @rtl_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_get_rate(i8* %0, %struct.ieee80211_sta* %1, i8* %2, %struct.ieee80211_tx_rate_control* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.ieee80211_tx_info*, align 8
  %12 = alloca %struct.ieee80211_tx_rate*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %8, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.rtl_priv*
  store %struct.rtl_priv* %19, %struct.rtl_priv** %9, align 8
  %20 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %21 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %20, i32 0, i32 0
  %22 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %22, %struct.sk_buff** %10, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %23)
  store %struct.ieee80211_tx_info* %24, %struct.ieee80211_tx_info** %11, align 8
  %25 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %11, align 8
  %26 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %27, align 8
  store %struct.ieee80211_tx_rate* %28, %struct.ieee80211_tx_rate** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = call i32 @rtl_get_fc(%struct.sk_buff* %29)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @ieee80211_is_data(i32 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %17, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %37 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %38 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %39 = load i32, i32* %17, align 4
  %40 = call i32 @_rtl_rc_get_highest_rix(%struct.rtl_priv* %36, %struct.ieee80211_sta* %37, %struct.sk_buff* %38, i32 %39)
  store i32 %40, i32* %16, align 4
  store i32 1, i32* %14, align 4
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %42 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %43 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %44 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %43, i64 0
  %45 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = call i32 @_rtl_rc_rate_set_series(%struct.rtl_priv* %41, %struct.ieee80211_sta* %42, %struct.ieee80211_tx_rate* %44, %struct.ieee80211_tx_rate_control* %45, i32 %46, i32 %47, i32 1, i32 %48)
  %50 = load i32, i32* %17, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %74, label %52

52:                                               ; preds = %4
  store i32 1, i32* %15, align 4
  br label %53

53:                                               ; preds = %70, %52
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 4
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %58 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %59 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %12, align 8
  %60 = load i32, i32* %15, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %59, i64 %61
  %63 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %64 = load i32, i32* %15, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = sub nsw i32 %65, %66
  %68 = load i32, i32* %17, align 4
  %69 = call i32 @_rtl_rc_rate_set_series(%struct.rtl_priv* %57, %struct.ieee80211_sta* %58, %struct.ieee80211_tx_rate* %62, %struct.ieee80211_tx_rate_control* %63, i32 %64, i32 %67, i32 1, i32 %68)
  br label %70

70:                                               ; preds = %56
  %71 = load i32, i32* %15, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %15, align 4
  br label %53

73:                                               ; preds = %53
  br label %74

74:                                               ; preds = %73, %4
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rtl_get_fc(%struct.sk_buff*) #1

declare dso_local i32 @ieee80211_is_data(i32) #1

declare dso_local i32 @_rtl_rc_get_highest_rix(%struct.rtl_priv*, %struct.ieee80211_sta*, %struct.sk_buff*, i32) #1

declare dso_local i32 @_rtl_rc_rate_set_series(%struct.rtl_priv*, %struct.ieee80211_sta*, %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate_control*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
