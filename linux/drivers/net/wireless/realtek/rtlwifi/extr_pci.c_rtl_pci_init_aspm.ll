; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_init_aspm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c_rtl_pci_init_aspm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_ps_ctl = type { i32 }

@RT_RF_PS_LEVEL_ALWAYS_ASPM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @rtl_pci_init_aspm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_pci_init_aspm(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_ps_ctl*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = call i32 @rtl_priv(%struct.ieee80211_hw* %4)
  %6 = call %struct.rtl_ps_ctl* @rtl_psc(i32 %5)
  store %struct.rtl_ps_ctl* %6, %struct.rtl_ps_ctl** %3, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %8 = call i32 @_rtl_pci_update_default_setting(%struct.ieee80211_hw* %7)
  %9 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %3, align 8
  %10 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @RT_RF_PS_LEVEL_ALWAYS_ASPM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %17 = call i32 @rtl_pci_enable_aspm(%struct.ieee80211_hw* %16)
  %18 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %3, align 8
  %19 = load i32, i32* @RT_RF_PS_LEVEL_ALWAYS_ASPM, align 4
  %20 = call i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl* %18, i32 %19)
  br label %21

21:                                               ; preds = %15, %1
  ret void
}

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @_rtl_pci_update_default_setting(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_pci_enable_aspm(%struct.ieee80211_hw*) #1

declare dso_local i32 @RT_SET_PS_LEVEL(%struct.rtl_ps_ctl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
