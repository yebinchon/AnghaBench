; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_tx_fill_cmddesc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c_rtl92se_tx_fill_cmddesc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i64, i32, i64 }
%struct.rtl_priv = type { i32 }
%struct.rtl_pci = type { i32 }
%struct.rtl_hal = type { i32 }
%struct.rtl_tcb_desc = type { i64, i32 }

@PCI_DMA_TODEVICE = common dso_local global i32 0, align 4
@COMP_SEND = common dso_local global i32 0, align 4
@DBG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"DMA mapping error\0A\00", align 1
@TX_CMDDESC_SIZE_RTL8192S = common dso_local global i32 0, align 4
@DESC_PACKET_TYPE_INIT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92se_tx_fill_cmddesc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, %struct.sk_buff* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca %struct.rtl_pci*, align 8
  %13 = alloca %struct.rtl_hal*, align 8
  %14 = alloca %struct.rtl_tcb_desc*, align 8
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
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %22)
  store %struct.rtl_hal* %23, %struct.rtl_hal** %13, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rtl_tcb_desc*
  store %struct.rtl_tcb_desc* %27, %struct.rtl_tcb_desc** %14, align 8
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %32 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %35 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @PCI_DMA_TODEVICE, align 4
  %38 = call i32 @pci_map_single(i32 %30, i32 %33, i64 %36, i32 %37)
  store i32 %38, i32* %15, align 4
  %39 = load %struct.rtl_pci*, %struct.rtl_pci** %12, align 8
  %40 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %15, align 4
  %43 = call i64 @pci_dma_mapping_error(i32 %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %5
  %46 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %47 = load i32, i32* @COMP_SEND, align 4
  %48 = load i32, i32* @DBG_TRACE, align 4
  %49 = call i32 @RT_TRACE(%struct.rtl_priv* %46, i32 %47, i32 %48, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %121

50:                                               ; preds = %5
  %51 = load i32*, i32** %7, align 8
  %52 = load i32, i32* @TX_CMDDESC_SIZE_RTL8192S, align 4
  %53 = call i32 @CLEAR_PCI_TX_DESC_CONTENT(i32* %51, i32 %52)
  %54 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %14, align 8
  %55 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @DESC_PACKET_TYPE_INIT, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %87

59:                                               ; preds = %50
  %60 = load i32*, i32** %7, align 8
  %61 = load %struct.rtl_tcb_desc*, %struct.rtl_tcb_desc** %14, align 8
  %62 = getelementptr inbounds %struct.rtl_tcb_desc, %struct.rtl_tcb_desc* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @SET_TX_DESC_LINIP(i32* %60, i32 %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @SET_TX_DESC_FIRST_SEG(i32* %65, i32 1)
  %67 = load i32*, i32** %7, align 8
  %68 = call i32 @SET_TX_DESC_LAST_SEG(i32* %67, i32 1)
  %69 = load i32*, i32** %7, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @SET_TX_DESC_PKT_SIZE(i32* %69, i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32* %75, i32 %79)
  %81 = load i32*, i32** %7, align 8
  %82 = load i32, i32* %15, align 4
  %83 = call i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32* %81, i32 %82)
  %84 = call i32 (...) @wmb()
  %85 = load i32*, i32** %7, align 8
  %86 = call i32 @SET_TX_DESC_OWN(i32* %85, i32 1)
  br label %121

87:                                               ; preds = %50
  %88 = load i32*, i32** %7, align 8
  %89 = call i32 @SET_TX_DESC_FIRST_SEG(i32* %88, i32 1)
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 @SET_TX_DESC_LAST_SEG(i32* %90, i32 1)
  %92 = load i32*, i32** %7, align 8
  %93 = call i32 @SET_TX_DESC_OFFSET(i32* %92, i32 32)
  %94 = load i32*, i32** %7, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %96 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = call i32 @SET_TX_DESC_PKT_SIZE(i32* %94, i32 %98)
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 @SET_TX_DESC_QUEUE_SEL(i32* %100, i32 19)
  %102 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %103 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.rtl_hal*, %struct.rtl_hal** %13, align 8
  %106 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @SET_BITS_TO_LE_4BYTE(i32 %104, i32 24, i32 7, i32 %107)
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %111 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = trunc i64 %112 to i32
  %114 = call i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32* %109, i32 %113)
  %115 = load i32*, i32** %7, align 8
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32* %115, i32 %116)
  %118 = call i32 (...) @wmb()
  %119 = load i32*, i32** %7, align 8
  %120 = call i32 @SET_TX_DESC_OWN(i32* %119, i32 1)
  br label %121

121:                                              ; preds = %45, %87, %59
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i32 @pci_map_single(i32, i32, i64, i32) #1

declare dso_local i64 @pci_dma_mapping_error(i32, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @CLEAR_PCI_TX_DESC_CONTENT(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LINIP(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_FIRST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_LAST_SEG(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_PKT_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_SIZE(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_TX_BUFFER_ADDRESS(i32*, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @SET_TX_DESC_OWN(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_OFFSET(i32*, i32) #1

declare dso_local i32 @SET_TX_DESC_QUEUE_SEL(i32*, i32) #1

declare dso_local i32 @SET_BITS_TO_LE_4BYTE(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
