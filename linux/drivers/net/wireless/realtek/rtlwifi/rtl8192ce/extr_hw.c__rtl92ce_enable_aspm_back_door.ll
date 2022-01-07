; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_enable_aspm_back_door.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c__rtl92ce_enable_aspm_back_door.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_ps_ctl = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl92ce_enable_aspm_back_door to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ce_enable_aspm_back_door(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %5 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %6 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %5)
  store %struct.rtl_priv* %6, %struct.rtl_priv** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  %9 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %8)
  store %struct.rtl_ps_ctl* %9, %struct.rtl_ps_ctl** %4, align 8
  %10 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %11 = call i32 @rtl_write_byte(%struct.rtl_priv* %10, i32 843, i32 147)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = call i32 @rtl_write_word(%struct.rtl_priv* %12, i32 848, i32 34572)
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = call i32 @rtl_write_byte(%struct.rtl_priv* %14, i32 850, i32 1)
  %16 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %17 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %22 = call i32 @rtl_write_byte(%struct.rtl_priv* %21, i32 841, i32 27)
  br label %26

23:                                               ; preds = %1
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = call i32 @rtl_write_byte(%struct.rtl_priv* %24, i32 841, i32 3)
  br label %26

26:                                               ; preds = %23, %20
  %27 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %28 = call i32 @rtl_write_word(%struct.rtl_priv* %27, i32 848, i32 10008)
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %30 = call i32 @rtl_write_byte(%struct.rtl_priv* %29, i32 850, i32 1)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
