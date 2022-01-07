; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_switch_ephy_parameter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_phy.c_rtl92s_phy_switch_ephy_parameter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_ps_ctl = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92s_phy_switch_ephy_parameter(%struct.ieee80211_hw* %0) #0 {
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
  %11 = call i32 @rtl_write_dword(%struct.rtl_priv* %10, i32 1344, i32 474129)
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %13 = call i32 @rtl_write_dword(%struct.rtl_priv* %12, i32 1352, i32 147580)
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %15 = call i32 @rtl_write_word(%struct.rtl_priv* %14, i32 1360, i32 4096)
  %16 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %17 = call i32 @rtl_write_byte(%struct.rtl_priv* %16, i32 1364, i32 32)
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @_rtl92s_phy_check_ephy_switchready(%struct.ieee80211_hw* %18)
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %21 = call i32 @rtl_write_word(%struct.rtl_priv* %20, i32 1360, i32 41195)
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %23 = call i32 @rtl_write_byte(%struct.rtl_priv* %22, i32 1364, i32 62)
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %25 = call i32 @_rtl92s_phy_check_ephy_switchready(%struct.ieee80211_hw* %24)
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %27 = call i32 @rtl_write_word(%struct.rtl_priv* %26, i32 1360, i32 65408)
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %29 = call i32 @rtl_write_byte(%struct.rtl_priv* %28, i32 1364, i32 57)
  %30 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %31 = call i32 @_rtl92s_phy_check_ephy_switchready(%struct.ieee80211_hw* %30)
  %32 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %1
  %37 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %38 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %43 = call i32 @rtl_write_byte(%struct.rtl_priv* %42, i32 1376, i32 64)
  br label %47

44:                                               ; preds = %36, %1
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %46 = call i32 @rtl_write_byte(%struct.rtl_priv* %45, i32 1376, i32 0)
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @_rtl92s_phy_check_ephy_switchready(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
