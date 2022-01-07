; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_rx_monitor_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_mac.c_mt7601u_rx_monitor_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32, i32 }
%struct.mt7601u_rxwi = type { i32 }

@MT_RXWI_RATE_PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mt7601u_dev*, %struct.mt7601u_rxwi*, i32, i32)* @mt7601u_rx_monitor_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mt7601u_rx_monitor_beacon(%struct.mt7601u_dev* %0, %struct.mt7601u_rxwi* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mt7601u_dev*, align 8
  %6 = alloca %struct.mt7601u_rxwi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %5, align 8
  store %struct.mt7601u_rxwi* %1, %struct.mt7601u_rxwi** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.mt7601u_rxwi*, %struct.mt7601u_rxwi** %6, align 8
  %10 = getelementptr inbounds %struct.mt7601u_rxwi, %struct.mt7601u_rxwi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %13 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @MT_RXWI_RATE_PHY, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @FIELD_GET(i32 %14, i32 %15)
  %17 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %18 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %17, i32 0, i32 1
  store i32 %16, i32* %18, align 4
  %19 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %5, align 8
  %20 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %8, align 4
  %22 = sub nsw i32 0, %21
  %23 = call i32 @ewma_rssi_add(i32* %20, i32 %22)
  ret void
}

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @ewma_rssi_add(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
