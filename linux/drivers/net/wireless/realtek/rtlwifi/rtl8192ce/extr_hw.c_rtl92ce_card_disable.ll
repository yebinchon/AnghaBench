; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_card_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_card_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.ieee80211_hw*, i32)* }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_pci = type { i64 }
%struct.rtl_mac = type { i32 }

@MAC80211_NOLINK = common dso_local global i32 0, align 4
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i32 0, align 4
@RF_CHANGE_BY_PS = common dso_local global i64 0, align 8
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@RT_RF_OFF_LEVL_HALT_NIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_card_disable(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_ps_ctl*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %9 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %8)
  store %struct.rtl_priv* %9, %struct.rtl_priv** %3, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %11 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %10)
  %12 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %11)
  store %struct.rtl_ps_ctl* %12, %struct.rtl_ps_ctl** %4, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %13)
  %15 = call %struct.rtl_pci* @rtl_pcidev(i32 %14)
  store %struct.rtl_pci* %15, %struct.rtl_pci** %5, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  %18 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %17)
  store %struct.rtl_mac* %18, %struct.rtl_mac** %6, align 8
  %19 = load i32, i32* @MAC80211_NOLINK, align 4
  %20 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* @NL80211_IFTYPE_UNSPECIFIED, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @_rtl92ce_set_media_status(%struct.ieee80211_hw* %23, i32 %24)
  %26 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %32 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @RF_CHANGE_BY_PS, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %47

36:                                               ; preds = %30, %1
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 1
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %42, align 8
  %44 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %45 = load i32, i32* @LED_CTL_POWER_OFF, align 4
  %46 = call i32 %43(%struct.ieee80211_hw* %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %30
  %48 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %4, align 8
  %49 = load i32, i32* @RT_RF_OFF_LEVL_HALT_NIC, align 4
  %50 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %48, i32 %49)
  %51 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %52 = call i32 @_rtl92ce_poweroff_adapter(%struct.ieee80211_hw* %51)
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %54 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 0, i32* %55, align 8
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @_rtl92ce_set_media_status(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

declare dso_local i32 @_rtl92ce_poweroff_adapter(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
