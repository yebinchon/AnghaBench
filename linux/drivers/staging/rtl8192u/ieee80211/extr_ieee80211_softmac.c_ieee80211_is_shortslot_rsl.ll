; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_is_shortslot_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_is_shortslot_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_network = type { i16 }

@WLAN_CAPABILITY_SHORT_SLOT = common dso_local global i16 0, align 2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local signext i16 @ieee80211_is_shortslot(%struct.ieee80211_network* %0) #0 {
  %2 = alloca %struct.ieee80211_network*, align 8
  store %struct.ieee80211_network* %0, %struct.ieee80211_network** %2, align 8
  %3 = load %struct.ieee80211_network*, %struct.ieee80211_network** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_network, %struct.ieee80211_network* %3, i32 0, i32 0
  %5 = load i16, i16* %4, align 2
  %6 = sext i16 %5 to i32
  %7 = load i16, i16* @WLAN_CAPABILITY_SHORT_SLOT, align 2
  %8 = sext i16 %7 to i32
  %9 = and i32 %6, %8
  %10 = trunc i32 %9 to i16
  ret i16 %10
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
