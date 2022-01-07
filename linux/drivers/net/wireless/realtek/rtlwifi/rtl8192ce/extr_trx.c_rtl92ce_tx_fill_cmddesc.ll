; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c_rtl92ce_tx_fill_cmddesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_trx.c_rtl92ce_tx_fill_cmddesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@QSLT_BEACON = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@USB_HWDESC_HEADER_LEN = common dso_local global i32 0, align 4
@DESC_RATE1M = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"H2C Tx Cmd Content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_tx_fill_cmddesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_pci*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.ieee80211_hdr*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %11, align 8
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %21 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %20)
  %22 = call %struct.rtl_pci* @rtl_pcidev(i32 %21)
  store %struct.rtl_pci* %22, %struct.rtl_pci** %12, align 8
  %23 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %23, i32* %13, align 4
  %24 = load i32*, i32** %7, align 8
  store i32* %24, i32** %14, align 8
  %25 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %26 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %35 = call i32 @pci_map_single(i32 %27, i64 %30, i64 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %39, %struct.ieee80211_hdr** %16, align 8
  %40 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %16, align 8
  %41 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %17, align 4
  %43 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %44 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %15, align 4
  %47 = call i64 @pci_dma_mapping_error(i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %5
  %50 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %51 = load i32, i32* @COMP_SEND, align 4
  %52 = load i32, i32* @DBG_TRACE, align 4
  %53 = call i32 @RT_TRACE(%struct.rtl_priv* %50, i32 %51, i32 %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %123

54:                                               ; preds = %5
  %55 = load i32*, i32** %14, align 8
  %56 = load i32, i32* @TX_DESC_SIZE, align 4
  %57 = call i32 @clear_pci_tx_desc_content(i32* %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load i32*, i32** %14, align 8
  %62 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %63 = call i32 @set_tx_desc_offset(i32* %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load i32*, i32** %14, align 8
  %66 = load i32, i32* @DESC_RATE1M, align 4
  %67 = call i32 @set_tx_desc_tx_rate(i32* %65, i32 %66)
  %68 = load i32*, i32** %14, align 8
  %69 = call i32 @set_tx_desc_seq(i32* %68, i32 0)
  %70 = load i32*, i32** %14, align 8
  %71 = call i32 @set_tx_desc_linip(i32* %70, i32 0)
  %72 = load i32*, i32** %14, align 8
  %73 = load i32, i32* %13, align 4
  %74 = call i32 @set_tx_desc_queue_sel(i32* %72, i32 %73)
  %75 = load i32*, i32** %14, align 8
  %76 = call i32 @set_tx_desc_first_seg(i32* %75, i32 1)
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @set_tx_desc_last_seg(i32* %77, i32 1)
  %79 = load i32*, i32** %14, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = call i32 @set_tx_desc_tx_buffer_size(i32* %79, i32 %83)
  %85 = load i32*, i32** %14, align 8
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @set_tx_desc_tx_buffer_address(i32* %85, i32 %86)
  %88 = load i32*, i32** %14, align 8
  %89 = call i32 @set_tx_desc_rate_id(i32* %88, i32 7)
  %90 = load i32*, i32** %14, align 8
  %91 = call i32 @set_tx_desc_macid(i32* %90, i32 0)
  %92 = load i32*, i32** %14, align 8
  %93 = call i32 @set_tx_desc_own(i32* %92, i32 1)
  %94 = load i32*, i32** %14, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @set_tx_desc_pkt_size(i32* %94, i32 %98)
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @set_tx_desc_first_seg(i32* %100, i32 1)
  %102 = load i32*, i32** %14, align 8
  %103 = call i32 @set_tx_desc_last_seg(i32* %102, i32 1)
  %104 = load i32*, i32** %14, align 8
  %105 = call i32 @set_tx_desc_offset(i32* %104, i32 32)
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @set_tx_desc_use_rate(i32* %106, i32 1)
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @ieee80211_is_data_qos(i32 %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %116, label %111

111:                                              ; preds = %64
  %112 = load i32*, i32** %14, align 8
  %113 = call i32 @set_tx_desc_hwseq_en(i32* %112, i32 1)
  %114 = load i32*, i32** %14, align 8
  %115 = call i32 @set_tx_desc_pkt_id(i32* %114, i32 8)
  br label %116

116:                                              ; preds = %111, %64
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %118 = load i32, i32* @COMP_CMD, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = load i32*, i32** %14, align 8
  %121 = load i32, i32* @TX_DESC_SIZE, align 4
  %122 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %116, %49
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @clear_pci_tx_desc_content(i32*, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_seq(i32*, i32) #1

declare dso_local i32 @set_tx_desc_linip(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

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
