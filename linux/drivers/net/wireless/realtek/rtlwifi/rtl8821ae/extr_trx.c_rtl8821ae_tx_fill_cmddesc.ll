; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_tx_fill_cmddesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_rtl8821ae_tx_fill_cmddesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i32 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32 }

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
@.str.1 = private unnamed_addr constant [20 x i8] c"H2C Tx Cmd Content\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_tx_fill_cmddesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
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
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %11, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_pci* @rtl_pcidev(i32 %19)
  store %struct.rtl_pci* %20, %struct.rtl_pci** %12, align 8
  %21 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %21, i32* %13, align 4
  %22 = load i32*, i32** %7, align 8
  store i32* %22, i32** %14, align 8
  %23 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %24 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %33 = call i32 @pci_map_single(i32 %25, i32 %28, i64 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %35 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = call i64 @pci_dma_mapping_error(i32 %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %5
  %41 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %42 = load i32, i32* @COMP_SEND, align 4
  %43 = load i32, i32* @DBG_TRACE, align 4
  %44 = call i32 @RT_TRACE(%struct.rtl_priv* %41, i32 %42, i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %94

45:                                               ; preds = %5
  %46 = load i32*, i32** %14, align 8
  %47 = load i32, i32* @TX_DESC_SIZE, align 4
  %48 = call i32 @clear_pci_tx_desc_content(i32* %46, i32 %47)
  %49 = load i32*, i32** %14, align 8
  %50 = call i32 @set_tx_desc_first_seg(i32* %49, i32 1)
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @set_tx_desc_last_seg(i32* %51, i32 1)
  %53 = load i32*, i32** %14, align 8
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i32 @set_tx_desc_pkt_size(i32* %53, i32 %57)
  %59 = load i32*, i32** %14, align 8
  %60 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %61 = call i32 @set_tx_desc_offset(i32* %59, i32 %60)
  %62 = load i32*, i32** %14, align 8
  %63 = call i32 @set_tx_desc_use_rate(i32* %62, i32 1)
  %64 = load i32*, i32** %14, align 8
  %65 = load i32, i32* @DESC_RATE1M, align 4
  %66 = call i32 @set_tx_desc_tx_rate(i32* %64, i32 %65)
  %67 = load i32*, i32** %14, align 8
  %68 = call i32 @set_tx_desc_disable_fb(i32* %67, i32 1)
  %69 = load i32*, i32** %14, align 8
  %70 = call i32 @set_tx_desc_data_bw(i32* %69, i32 0)
  %71 = load i32*, i32** %14, align 8
  %72 = call i32 @set_tx_desc_hwseq_en(i32* %71, i32 1)
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @set_tx_desc_queue_sel(i32* %73, i32 %74)
  %76 = load i32*, i32** %14, align 8
  %77 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @set_tx_desc_tx_buffer_size(i32* %76, i64 %79)
  %81 = load i32*, i32** %14, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @set_tx_desc_tx_buffer_address(i32* %81, i32 %82)
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @set_tx_desc_macid(i32* %84, i32 0)
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @set_tx_desc_own(i32* %86, i32 1)
  %88 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %89 = load i32, i32* @COMP_CMD, align 4
  %90 = load i32, i32* @DBG_LOUD, align 4
  %91 = load i32*, i32** %7, align 8
  %92 = load i32, i32* @TX_DESC_SIZE, align 4
  %93 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %45, %40
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @clear_pci_tx_desc_content(i32*, i32) #1

declare dso_local i32 @set_tx_desc_first_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_last_seg(i32*, i32) #1

declare dso_local i32 @set_tx_desc_pkt_size(i32*, i32) #1

declare dso_local i32 @set_tx_desc_offset(i32*, i32) #1

declare dso_local i32 @set_tx_desc_use_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_rate(i32*, i32) #1

declare dso_local i32 @set_tx_desc_disable_fb(i32*, i32) #1

declare dso_local i32 @set_tx_desc_data_bw(i32*, i32) #1

declare dso_local i32 @set_tx_desc_hwseq_en(i32*, i32) #1

declare dso_local i32 @set_tx_desc_queue_sel(i32*, i32) #1

declare dso_local i32 @set_tx_desc_tx_buffer_size(i32*, i64) #1

declare dso_local i32 @set_tx_desc_tx_buffer_address(i32*, i32) #1

declare dso_local i32 @set_tx_desc_macid(i32*, i32) #1

declare dso_local i32 @set_tx_desc_own(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
