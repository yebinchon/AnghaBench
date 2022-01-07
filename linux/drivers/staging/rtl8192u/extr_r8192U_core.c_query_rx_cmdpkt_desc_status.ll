; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_query_rx_cmdpkt_desc_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_query_rx_cmdpkt_desc_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.ieee80211_rx_stats = type { i32, i64, i64, i64, i64, i64, i64, i32* }
%struct.rx_desc_819x_usb = type { i64 }

@scrclng = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ieee80211_rx_stats*)* @query_rx_cmdpkt_desc_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_rx_cmdpkt_desc_status(%struct.sk_buff* %0, %struct.ieee80211_rx_stats* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_rx_stats*, align 8
  %5 = alloca %struct.rx_desc_819x_usb*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.rx_desc_819x_usb*
  store %struct.rx_desc_819x_usb* %9, %struct.rx_desc_819x_usb** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to i32*
  %14 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %14, i32 0, i32 7
  store i32* %13, i32** %15, align 8
  %16 = load %struct.rx_desc_819x_usb*, %struct.rx_desc_819x_usb** %5, align 8
  %17 = getelementptr inbounds %struct.rx_desc_819x_usb, %struct.rx_desc_819x_usb* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %19, i32 0, i32 4
  store i64 %18, i64* %20, align 8
  %21 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %22 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  %23 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %23, i32 0, i32 5
  store i64 0, i64* %24, align 8
  %25 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %26 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @scrclng, align 8
  %29 = sub nsw i64 %27, %28
  %30 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %31 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %30, i32 0, i32 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %33 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %38 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %39, i32 0, i32 0
  store i32 1, i32* %40, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
