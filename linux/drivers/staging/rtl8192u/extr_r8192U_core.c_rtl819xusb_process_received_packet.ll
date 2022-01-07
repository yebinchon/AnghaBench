; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl819xusb_process_received_packet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_rtl819xusb_process_received_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_9__*, i32, i32*)* }
%struct.net_device = type { i32 }
%struct.ieee80211_rx_stats = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@Adapter = common dso_local global %struct.TYPE_9__* null, align 8
@HW_VAR_RF_STATE = common dso_local global i32 0, align 4
@eRfOff = common dso_local global i64 0, align 8
@pRfd = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ieee80211_rx_stats*)* @rtl819xusb_process_received_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl819xusb_process_received_packet(%struct.net_device* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ieee80211_rx_stats*, align 8
  %5 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %5, align 8
  %8 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %9 = call i64 @get_rxpacket_shiftbytes_819xusb(%struct.ieee80211_rx_stats* %8)
  %10 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  %14 = add nsw i64 %13, %9
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %11, align 4
  %16 = load %struct.r8192_priv*, %struct.r8192_priv** %5, align 8
  %17 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %18, align 4
  %21 = load %struct.net_device*, %struct.net_device** %3, align 8
  %22 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %23 = call i64 @rtl819xusb_rx_command_packet(%struct.net_device* %21, %struct.ieee80211_rx_stats* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  br label %26

26:                                               ; preds = %25, %2
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @get_rxpacket_shiftbytes_819xusb(%struct.ieee80211_rx_stats*) #1

declare dso_local i64 @rtl819xusb_rx_command_packet(%struct.net_device*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
