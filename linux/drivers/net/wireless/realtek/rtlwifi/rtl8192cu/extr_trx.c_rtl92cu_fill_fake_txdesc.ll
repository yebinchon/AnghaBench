; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl92cu_fill_fake_txdesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl92cu_fill_fake_txdesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }

@RTL_TX_HEADER_SIZE = common dso_local global i32 0, align 4
@QSLT_MGNT = common dso_local global i32 0, align 4
@DESC_RATE1M = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_fill_fake_txdesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load i32*, i32** %6, align 8
  store i32* %10, i32** %9, align 8
  %11 = load i32*, i32** %9, align 8
  %12 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %13 = call i32 @memset(i32* %11, i32 0, i32 %12)
  %14 = load i32*, i32** %9, align 8
  %15 = call i32 @set_tx_desc_first_seg(i32* %14, i32 1)
  %16 = load i32*, i32** %9, align 8
  %17 = call i32 @set_tx_desc_last_seg(i32* %16, i32 1)
  %18 = load i32*, i32** %9, align 8
  %19 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %20 = call i32 @set_tx_desc_offset(i32* %18, i32 %19)
  %21 = load i32*, i32** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @set_tx_desc_pkt_size(i32* %21, i32 %22)
  %24 = load i32*, i32** %9, align 8
  %25 = load i32, i32* @QSLT_MGNT, align 4
  %26 = call i32 @set_tx_desc_queue_sel(i32* %24, i32 %25)
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = call i32 @set_tx_desc_nav_use_hdr(i32* %30, i32 1)
  br label %38

32:                                               ; preds = %4
  %33 = load i32*, i32** %9, align 8
  %34 = call i32 @set_tx_desc_hwseq_en(i32* %33, i32 1)
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 @BIT(i32 3)
  %37 = call i32 @set_tx_desc_pkt_id(i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %32, %29
  %39 = load i32*, i32** %9, align 8
  %40 = call i32 @set_tx_desc_use_rate(i32* %39, i32 1)
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @set_tx_desc_own(i32* %41, i32 1)
  %43 = load i32*, i32** %9, align 8
  %44 = load i32, i32* @DESC_RATE1M, align 4
  %45 = call i32 @set_tx_desc_tx_rate(i32* %43, i32 %44)
  %46 = load i32*, i32** %9, align 8
  %47 = call i32 @_rtl_tx_desc_checksum(i32* %46)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_nav_use_hdr(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_id(i32*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @set_tx_desc_use_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_own(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @_rtl_tx_desc_checksum(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
