; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl92cu_tx_fill_cmddesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_trx.c_rtl92cu_tx_fill_cmddesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rtl_priv = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@QSLT_BEACON = common dso_local global i32 0, align 4
@RTL_TX_HEADER_SIZE = common dso_local global i32 0, align 4
@DESC_RATE1M = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"H2C Tx Cmd Content\00", align 1
@RTL_TX_DESC_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92cu_tx_fill_cmddesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %18, i32* %12, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %22, %struct.ieee80211_hdr** %13, align 8
  %23 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %24 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %14, align 4
  %26 = load i32*, i32** %7, align 8
  store i32* %26, i32** %15, align 8
  %27 = load i32*, i32** %15, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %30 = call i32 @memset(i8* %28, i32 0, i32 %29)
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i32*, i32** %15, align 8
  %35 = load i32, i32* @RTL_TX_HEADER_SIZE, align 4
  %36 = call i32 @set_tx_desc_offset(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %5
  %38 = load i32*, i32** %15, align 8
  %39 = load i32, i32* @DESC_RATE1M, align 4
  %40 = call i32 @set_tx_desc_tx_rate(i32* %38, i32 %39)
  %41 = load i32*, i32** %15, align 8
  %42 = call i32 @set_tx_desc_seq(i32* %41, i32 0)
  %43 = load i32*, i32** %15, align 8
  %44 = call i32 @set_tx_desc_linip(i32* %43, i32 0)
  %45 = load i32*, i32** %15, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 @set_tx_desc_queue_sel(i32* %45, i32 %46)
  %48 = load i32*, i32** %15, align 8
  %49 = call i32 @set_tx_desc_first_seg(i32* %48, i32 1)
  %50 = load i32*, i32** %15, align 8
  %51 = call i32 @set_tx_desc_last_seg(i32* %50, i32 1)
  %52 = load i32*, i32** %15, align 8
  %53 = call i32 @set_tx_desc_rate_id(i32* %52, i32 7)
  %54 = load i32*, i32** %15, align 8
  %55 = call i32 @set_tx_desc_macid(i32* %54, i32 0)
  %56 = load i32*, i32** %15, align 8
  %57 = call i32 @set_tx_desc_own(i32* %56, i32 1)
  %58 = load i32*, i32** %15, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %60 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = trunc i64 %61 to i32
  %63 = call i32 @set_tx_desc_pkt_size(i32* %58, i32 %62)
  %64 = load i32*, i32** %15, align 8
  %65 = call i32 @set_tx_desc_first_seg(i32* %64, i32 1)
  %66 = load i32*, i32** %15, align 8
  %67 = call i32 @set_tx_desc_last_seg(i32* %66, i32 1)
  %68 = load i32*, i32** %15, align 8
  %69 = call i32 @set_tx_desc_offset(i32* %68, i32 32)
  %70 = load i32*, i32** %15, align 8
  %71 = call i32 @set_tx_desc_use_rate(i32* %70, i32 1)
  %72 = load i32, i32* %14, align 4
  %73 = call i32 @ieee80211_is_data_qos(i32 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %37
  %76 = load i32*, i32** %15, align 8
  %77 = call i32 @set_tx_desc_hwseq_en(i32* %76, i32 1)
  %78 = load i32*, i32** %15, align 8
  %79 = call i32 @set_tx_desc_pkt_id(i32* %78, i32 8)
  br label %80

80:                                               ; preds = %75, %37
  %81 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %82 = load i32, i32* @COMP_CMD, align 4
  %83 = load i32, i32* @DBG_LOUD, align 4
  %84 = load i32*, i32** %15, align 8
  %85 = load i32, i32* @RTL_TX_DESC_SIZE, align 4
  %86 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %81, i32 %82, i32 %83, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32* %84, i32 %85)
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_seq(i32*, i32) #1

declare dso_local i32 @set_tx_desc_linip(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_rate_id(i32*, i32) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i32) #1

declare dso_local i32 @set_tx_desc_own(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_use_rate(i32*, i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_id(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
