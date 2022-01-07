; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_grf5101.c_grf5101_rf_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtl818x/rtl8180/extr_grf5101.c_grf5101_rf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rtl8180_priv* }
%struct.rtl8180_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @grf5101_rf_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @grf5101_rf_stop(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl8180_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %5, i32 0, i32 0
  %7 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %6, align 8
  store %struct.rtl8180_priv* %7, %struct.rtl8180_priv** %3, align 8
  %8 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %9 = getelementptr inbounds %struct.rtl8180_priv, %struct.rtl8180_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = and i32 %11, 1048575
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = or i32 %13, 1066401792
  store i32 %14, i32* %4, align 4
  %15 = load %struct.rtl8180_priv*, %struct.rtl8180_priv** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @rtl8180_set_anaparam(%struct.rtl8180_priv* %15, i32 %16)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @write_grf5101(%struct.ieee80211_hw* %18, i32 7, i32 0)
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %21 = call i32 @write_grf5101(%struct.ieee80211_hw* %20, i32 31, i32 69)
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %23 = call i32 @write_grf5101(%struct.ieee80211_hw* %22, i32 31, i32 5)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @write_grf5101(%struct.ieee80211_hw* %24, i32 0, i32 2276)
  ret void
}

declare dso_local i32 @rtl8180_set_anaparam(%struct.rtl8180_priv*, i32) #1

declare dso_local i32 @write_grf5101(%struct.ieee80211_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
