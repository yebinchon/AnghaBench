; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fill_rsvd_page_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_fill_rsvd_page_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info* }
%struct.rtw_chip_info = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rtw_tx_pkt_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, %struct.sk_buff*)* @rtw_fill_rsvd_page_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_fill_rsvd_page_desc(%struct.rtw_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rtw_tx_pkt_info, align 4
  %6 = alloca %struct.rtw_chip_info*, align 8
  %7 = alloca %struct.rtw_tx_pkt_info*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 0
  %10 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  store %struct.rtw_chip_info* %10, %struct.rtw_chip_info** %6, align 8
  %11 = call i32 @memset(%struct.rtw_tx_pkt_info* %5, i32 0, i32 4)
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @rtw_rsvd_page_pkt_info_update(%struct.rtw_dev* %12, %struct.rtw_tx_pkt_info* %5, %struct.sk_buff* %13)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %17 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.rtw_tx_pkt_info* @skb_push(%struct.sk_buff* %15, i32 %18)
  store %struct.rtw_tx_pkt_info* %19, %struct.rtw_tx_pkt_info** %7, align 8
  %20 = load %struct.rtw_tx_pkt_info*, %struct.rtw_tx_pkt_info** %7, align 8
  %21 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %6, align 8
  %22 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(%struct.rtw_tx_pkt_info* %20, i32 0, i32 %23)
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = call i32 @rtw_tx_fill_tx_desc(%struct.rtw_tx_pkt_info* %5, %struct.sk_buff* %25)
  ret void
}

declare dso_local i32 @memset(%struct.rtw_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @rtw_rsvd_page_pkt_info_update(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.sk_buff*) #1

declare dso_local %struct.rtw_tx_pkt_info* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @rtw_tx_fill_tx_desc(%struct.rtw_tx_pkt_info*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
