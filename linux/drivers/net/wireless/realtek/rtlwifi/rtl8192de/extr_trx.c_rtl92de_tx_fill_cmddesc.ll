; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c_rtl92de_tx_fill_cmddesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_trx.c_rtl92de_tx_fill_cmddesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_ps_ctl = type { i64 }
%struct.rtl_hal = type { i64 }
%struct.ieee80211_hdr = type { i32 }

@QSLT_BEACON = common dso_local global i32 0, align 4
@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@TX_DESC_SIZE = common dso_local global i32 0, align 4
@USB_HWDESC_HEADER_LEN = common dso_local global i32 0, align 4
@BAND_ON_5G = common dso_local global i64 0, align 8
@DESC_RATE6M = common dso_local global i32 0, align 4
@DESC_RATE1M = common dso_local global i32 0, align 4
@COMP_CMD = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"H2C Tx Cmd Content\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92de_tx_fill_cmddesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_pci*, align 8
  %13 = alloca %struct.rtl_ps_ctl*, align 8
  %14 = alloca %struct.rtl_hal*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.ieee80211_hdr*, align 8
  %18 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.sk_buff* %4, %struct.sk_buff** %10, align 8
  %19 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %20 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %19)
  store %struct.rtl_priv* %20, %struct.rtl_priv** %11, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_pci* @rtl_pcidev(i32 %22)
  store %struct.rtl_pci* %23, %struct.rtl_pci** %12, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %25 = call %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv* %24)
  store %struct.rtl_ps_ctl* %25, %struct.rtl_ps_ctl** %13, align 8
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %27 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %26)
  store %struct.rtl_hal* %27, %struct.rtl_hal** %14, align 8
  %28 = load i32, i32* @QSLT_BEACON, align 4
  store i32 %28, i32* %15, align 4
  %29 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %30 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %39 = call i32 @pci_map_single(i32 %31, i64 %34, i64 %37, i32 %38)
  store i32 %39, i32* %16, align 4
  %40 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %43, %struct.ieee80211_hdr** %17, align 8
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %17, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %18, align 4
  %47 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %48 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %16, align 4
  %51 = call i64 @pci_dma_mapping_error(i32 %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %5
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %55 = load i32, i32* @COMP_SEND, align 4
  %56 = load i32, i32* @DBG_TRACE, align 4
  %57 = call i32 @RT_TRACE(%struct.rtl_priv* %54, i32 %55, i32 %56, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %144

58:                                               ; preds = %5
  %59 = load i32*, i32** %7, align 8
  %60 = load i32, i32* @TX_DESC_SIZE, align 4
  %61 = call i32 @CLEAR_PCI_TX_DESC_CONTENT(i32* %59, i32 %60)
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load i32*, i32** %7, align 8
  %66 = load i32, i32* @USB_HWDESC_HEADER_LEN, align 4
  %67 = call i32 @SET_TX_DESC_OFFSET(i32* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %58
  %69 = load %struct.rtl_hal*, %struct.rtl_hal** %14, align 8
  %70 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @BAND_ON_5G, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %78

74:                                               ; preds = %68
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* @DESC_RATE6M, align 4
  %77 = call i32 @SET_TX_DESC_TX_RATE(i32* %75, i32 %76)
  br label %82

78:                                               ; preds = %68
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @DESC_RATE1M, align 4
  %81 = call i32 @SET_TX_DESC_TX_RATE(i32* %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  %83 = load i32*, i32** %7, align 8
  %84 = call i32 @SET_TX_DESC_SEQ(i32* %83, i32 0)
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @SET_TX_DESC_LINIP(i32* %85, i32 0)
  %87 = load i32*, i32** %7, align 8
  %88 = load i32, i32* %15, align 4
  %89 = call i32 @SET_TX_DESC_QUEUE_SEL(i32* %87, i32 %88)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @SET_TX_DESC_FIRST_SEG(i32* %90, i32 1)
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @SET_TX_DESC_LAST_SEG(i32* %92, i32 1)
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32* %94, i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = load i32, i32* %16, align 4
  %102 = call i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32* %100, i32 %101)
  %103 = load i32*, i32** %7, align 8
  %104 = call i32 @SET_TX_DESC_RATE_ID(i32* %103, i32 7)
  %105 = load i32*, i32** %7, align 8
  %106 = call i32 @SET_TX_DESC_MACID(i32* %105, i32 0)
  %107 = load i32*, i32** %7, align 8
  %108 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %109 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = trunc i64 %110 to i32
  %112 = call i32 @SET_TX_DESC_PKT_SIZE(i32* %107, i32 %111)
  %113 = load i32*, i32** %7, align 8
  %114 = call i32 @SET_TX_DESC_FIRST_SEG(i32* %113, i32 1)
  %115 = load i32*, i32** %7, align 8
  %116 = call i32 @SET_TX_DESC_LAST_SEG(i32* %115, i32 1)
  %117 = load i32*, i32** %7, align 8
  %118 = call i32 @SET_TX_DESC_OFFSET(i32* %117, i32 32)
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @SET_TX_DESC_USE_RATE(i32* %119, i32 1)
  %121 = load i32, i32* %18, align 4
  %122 = call i32 @ieee80211_is_data_qos(i32 %121)
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %134, label %124

124:                                              ; preds = %82
  %125 = load %struct.rtl_ps_ctl*, %struct.rtl_ps_ctl** %13, align 8
  %126 = getelementptr inbounds %struct.rtl_ps_ctl, %struct.rtl_ps_ctl* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %124
  %130 = load i32*, i32** %7, align 8
  %131 = call i32 @SET_TX_DESC_HWSEQ_EN(i32* %130, i32 1)
  %132 = load i32*, i32** %7, align 8
  %133 = call i32 @SET_TX_DESC_PKT_ID(i32* %132, i32 8)
  br label %134

134:                                              ; preds = %129, %124, %82
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %136 = load i32, i32* @COMP_CMD, align 4
  %137 = load i32, i32* @DBG_LOUD, align 4
  %138 = load i32*, i32** %7, align 8
  %139 = load i32, i32* @TX_DESC_SIZE, align 4
  %140 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %135, i32 %136, i32 %137, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32* %138, i32 %139)
  %141 = call i32 (...) @wmb()
  %142 = load i32*, i32** %7, align 8
  %143 = call i32 @SET_TX_DESC_OWN(i32* %142, i32 1)
  br label %144

144:                                              ; preds = %134, %53
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_ps_ctl* @rtl_psc(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @pci_map_single(i32, i64, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @CLEAR_PCI_TX_DESC_CONTENT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_OFFSET(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_RATE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_SEQ(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LINIP(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_QUEUE_SEL(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_FIRST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LAST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_RATE_ID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_MACID(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_USE_RATE(i32*, i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @SET_TX_DESC_HWSEQ_EN(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_ID(i32*, i32) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @SET_TX_DESC_OWN(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
