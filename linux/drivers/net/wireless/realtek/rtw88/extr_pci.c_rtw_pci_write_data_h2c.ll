; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_write_data_h2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_pci_write_data_h2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i32 }
%struct.rtw_tx_pkt_info = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@RTW_TX_QUEUE_H2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*, i32*, i64)* @rtw_pci_write_data_h2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_pci_write_data_h2c(%struct.rtw_dev* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.rtw_tx_pkt_info, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %10, align 8
  %19 = add nsw i64 %17, %18
  store i64 %19, i64* %11, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call %struct.sk_buff* @dev_alloc_skb(i64 %20)
  store %struct.sk_buff* %21, %struct.sk_buff** %8, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %45

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32 @skb_reserve(%struct.sk_buff* %28, i64 %29)
  %31 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @skb_put(%struct.sk_buff* %31, i64 %32)
  %34 = inttoptr i64 %33 to i32*
  %35 = load i32*, i32** %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @memcpy(i32* %34, i32* %35, i64 %36)
  %38 = call i32 @memset(%struct.rtw_tx_pkt_info* %9, i32 0, i32 8)
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds %struct.rtw_tx_pkt_info, %struct.rtw_tx_pkt_info* %9, i32 0, i32 0
  store i64 %39, i64* %40, align 8
  %41 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %42 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %43 = load i32, i32* @RTW_TX_QUEUE_H2C, align 4
  %44 = call i32 @rtw_pci_xmit(%struct.rtw_dev* %41, %struct.rtw_tx_pkt_info* %9, %struct.sk_buff* %42, i32 %43)
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %27, %24
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memset(%struct.rtw_tx_pkt_info*, i32, i32) #1

declare dso_local i32 @rtw_pci_xmit(%struct.rtw_dev*, %struct.rtw_tx_pkt_info*, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
