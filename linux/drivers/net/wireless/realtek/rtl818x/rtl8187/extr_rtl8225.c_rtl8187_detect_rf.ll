; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8187_detect_rf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8187/extr_rtl8225.c_rtl8187_detect_rf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl818x_rf_ops = type { i32 }
%struct.ieee80211_hw = type { %struct.rtl8187_priv* }
%struct.rtl8187_priv = type { i32 }

@rtl8225_ops = common dso_local global %struct.rtl818x_rf_ops zeroinitializer, align 4
@rtl8225z2_ops = common dso_local global %struct.rtl818x_rf_ops zeroinitializer, align 4
@rtl8225z2_b_ops = common dso_local global %struct.rtl818x_rf_ops zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rtl818x_rf_ops* @rtl8187_detect_rf(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.rtl818x_rf_ops*, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtl8187_priv*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 0
  %9 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %8, align 8
  store %struct.rtl8187_priv* %9, %struct.rtl8187_priv** %6, align 8
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %6, align 8
  %11 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %30, label %14

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %16 = call i32 @rtl8225_write(%struct.ieee80211_hw* %15, i32 0, i32 439)
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @rtl8225_read(%struct.ieee80211_hw* %17, i32 8)
  store i32 %18, i32* %4, align 4
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %20 = call i32 @rtl8225_read(%struct.ieee80211_hw* %19, i32 9)
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %22 = call i32 @rtl8225_write(%struct.ieee80211_hw* %21, i32 0, i32 183)
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 1416
  br i1 %24, label %28, label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 1792
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %14
  store %struct.rtl818x_rf_ops* @rtl8225_ops, %struct.rtl818x_rf_ops** %2, align 8
  br label %31

29:                                               ; preds = %25
  store %struct.rtl818x_rf_ops* @rtl8225z2_ops, %struct.rtl818x_rf_ops** %2, align 8
  br label %31

30:                                               ; preds = %1
  store %struct.rtl818x_rf_ops* @rtl8225z2_b_ops, %struct.rtl818x_rf_ops** %2, align 8
  br label %31

31:                                               ; preds = %30, %29, %28
  %32 = load %struct.rtl818x_rf_ops*, %struct.rtl818x_rf_ops** %2, align 8
  ret %struct.rtl818x_rf_ops* %32
}

declare dso_local i32 @rtl8225_write(%struct.ieee80211_hw*, i32, i32) #1

declare dso_local i32 @rtl8225_read(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
