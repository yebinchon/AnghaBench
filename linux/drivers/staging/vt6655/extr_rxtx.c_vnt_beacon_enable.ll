; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_vnt_beacon_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_vnt_beacon_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i64 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_bss_conf = type { i32 }

@MAC_REG_TFTCTL = common dso_local global i64 0, align 8
@TFTCTL_TSFCNTRST = common dso_local global i32 0, align 4
@TFTCTL_TSFCNTREN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vnt_beacon_enable(%struct.vnt_private* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_bss_conf* %2) #0 {
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_bss_conf*, align 8
  store %struct.vnt_private* %0, %struct.vnt_private** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %6, align 8
  %7 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %8 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @MAC_REG_TFTCTL, align 8
  %11 = add nsw i64 %9, %10
  %12 = load i32, i32* @TFTCTL_TSFCNTRST, align 4
  %13 = call i32 @VNSvOutPortB(i64 %11, i32 %12)
  %14 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %15 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MAC_REG_TFTCTL, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* @TFTCTL_TSFCNTREN, align 4
  %20 = call i32 @VNSvOutPortB(i64 %18, i32 %19)
  %21 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %22 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @CARDvSetFirstNextTBTT(%struct.vnt_private* %21, i32 %24)
  %26 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %27 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @CARDbSetBeaconPeriod(%struct.vnt_private* %26, i32 %29)
  %31 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %32 = load %struct.ieee80211_vif*, %struct.ieee80211_vif** %5, align 8
  %33 = call i32 @vnt_beacon_make(%struct.vnt_private* %31, %struct.ieee80211_vif* %32)
  ret i32 %33
}

declare dso_local i32 @VNSvOutPortB(i64, i32) #1

declare dso_local i32 @CARDvSetFirstNextTBTT(%struct.vnt_private*, i32) #1

declare dso_local i32 @CARDbSetBeaconPeriod(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_beacon_make(%struct.vnt_private*, %struct.ieee80211_vif*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
