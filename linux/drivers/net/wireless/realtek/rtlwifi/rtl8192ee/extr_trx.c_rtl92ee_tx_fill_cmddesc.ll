; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_tx_fill_cmddesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_tx_fill_cmddesc.c"
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
@DESC_RATE1M = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"H2C Tx Cmd Content\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_tx_fill_cmddesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_pci*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %18 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %17)
  store %struct.rtl_priv* %18, %struct.rtl_priv** %11, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %19)
  %21 = call %struct.rtl_pci* @rtl_pcidev(i32 %20)
  store %struct.rtl_pci* %21, %struct.rtl_pci** %12, align 8
  %22 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %22, i32* %13, align 4
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
  store i32 %33, i32* %14, align 4
  store i32 40, i32* %15, align 4
  %34 = load i32*, i32** %7, align 8
  store i32* %34, i32** %16, align 8
  %35 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %36 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %14, align 4
  %39 = call i64 @pci_dma_mapping_error(i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %5
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %43 = load i32, i32* @COMP_SEND, align 4
  %44 = load i32, i32* @DBG_TRACE, align 4
  %45 = call i32 @RT_TRACE(%struct.rtl_priv* %42, i32 %43, i32 %44, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %106

46:                                               ; preds = %5
  %47 = load i32*, i32** %16, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @clear_pci_tx_desc_content(i32* %47, i32 %48)
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %46
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* %15, align 4
  %55 = call i32 @set_tx_desc_offset(i32* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %46
  %57 = load i32*, i32** %16, align 8
  %58 = load i32, i32* @DESC_RATE1M, align 4
  %59 = call i32 @set_tx_desc_tx_rate(i32* %57, i32 %58)
  %60 = load i32*, i32** %16, align 8
  %61 = call i32 @set_tx_desc_seq(i32* %60, i32 0)
  %62 = load i32*, i32** %16, align 8
  %63 = call i32 @set_tx_desc_linip(i32* %62, i32 0)
  %64 = load i32*, i32** %16, align 8
  %65 = load i32, i32* %13, align 4
  %66 = call i32 @set_tx_desc_queue_sel(i32* %64, i32 %65)
  %67 = load i32*, i32** %16, align 8
  %68 = call i32 @set_tx_desc_first_seg(i32* %67, i32 1)
  %69 = load i32*, i32** %16, align 8
  %70 = call i32 @set_tx_desc_last_seg(i32* %69, i32 1)
  %71 = load i32*, i32** %16, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = trunc i64 %74 to i32
  %76 = call i32 @set_tx_desc_tx_buffer_size(i32* %71, i32 %75)
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %14, align 4
  %79 = call i32 @set_tx_desc_tx_buffer_address(i32* %77, i32 %78)
  %80 = load i32*, i32** %16, align 8
  %81 = call i32 @set_tx_desc_rate_id(i32* %80, i32 7)
  %82 = load i32*, i32** %16, align 8
  %83 = call i32 @set_tx_desc_macid(i32* %82, i32 0)
  %84 = load i32*, i32** %16, align 8
  %85 = call i32 @set_tx_desc_own(i32* %84, i32 1)
  %86 = load i32*, i32** %16, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %88 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = trunc i64 %89 to i32
  %91 = call i32 @set_tx_desc_pkt_size(i32* %86, i32 %90)
  %92 = load i32*, i32** %16, align 8
  %93 = call i32 @set_tx_desc_first_seg(i32* %92, i32 1)
  %94 = load i32*, i32** %16, align 8
  %95 = call i32 @set_tx_desc_last_seg(i32* %94, i32 1)
  %96 = load i32*, i32** %16, align 8
  %97 = call i32 @set_tx_desc_offset(i32* %96, i32 40)
  %98 = load i32*, i32** %16, align 8
  %99 = call i32 @set_tx_desc_use_rate(i32* %98, i32 1)
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %101 = load i32, i32* @COMP_CMD, align 4
  %102 = load i32, i32* @DBG_LOUD, align 4
  %103 = load i32*, i32** %16, align 8
  %104 = load i32, i32* %15, align 4
  %105 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %103, i32 %104)
  br label %106

106:                                              ; preds = %56, %41
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

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

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
