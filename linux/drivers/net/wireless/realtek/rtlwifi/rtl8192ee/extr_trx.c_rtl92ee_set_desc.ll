; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_set_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_set_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32, i32, i32 }

@BEACON_QUEUE = common dso_local global i32 0, align 4
@MAX_RECEIVE_BUFFER_SIZE = common dso_local global i64 0, align 8
@RX_DESC_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"rtl8192ee: ERR rxdesc :%d not processed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_set_desc(%struct.ieee80211_hw* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.rtl_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.rtl_pci*, align 8
  %16 = alloca %struct.rtl8192_tx_ring*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %11, align 8
  %20 = load i32*, i32** %10, align 8
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32*, i32** %7, align 8
  store i32* %29, i32** %14, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %79

32:                                               ; preds = %5
  %33 = load i32, i32* %9, align 4
  switch i32 %33, label %78 [
    i32 128, label %34
    i32 131, label %39
  ]

34:                                               ; preds = %32
  %35 = load i32*, i32** %14, align 8
  %36 = load i32*, i32** %10, align 8
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @set_tx_desc_next_desc_address(i32* %35, i32 %37)
  br label %78

39:                                               ; preds = %32
  %40 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %41 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %40)
  %42 = call %struct.rtl_pci* @rtl_pcidev(i32 %41)
  store %struct.rtl_pci* %42, %struct.rtl_pci** %15, align 8
  %43 = load %struct.rtl_pci*, %struct.rtl_pci** %15, align 8
  %44 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %43, i32 0, i32 0
  %45 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %45, i64 %47
  store %struct.rtl8192_tx_ring* %48, %struct.rtl8192_tx_ring** %16, align 8
  %49 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %50 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @BEACON_QUEUE, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %39
  %56 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %57 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %56, i32 0, i32 1
  store i32 0, i32* %57, align 4
  %58 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %59 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %58, i32 0, i32 2
  store i32 0, i32* %59, align 4
  %60 = load i32*, i32** %14, align 8
  %61 = call i32 @set_tx_buff_desc_own(i32* %60, i32 1)
  br label %112

62:                                               ; preds = %39
  %63 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %64 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* %17, align 4
  %68 = srem i32 %66, %67
  %69 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %70 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtl_priv*, %struct.rtl_priv** %11, align 8
  %72 = load i32, i32* %12, align 4
  %73 = call i32 @get_desc_addr_fr_q_idx(i32 %72)
  %74 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %16, align 8
  %75 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @rtl_write_word(%struct.rtl_priv* %71, i32 %73, i32 %76)
  br label %78

78:                                               ; preds = %32, %62, %34
  br label %112

79:                                               ; preds = %5
  %80 = load i32, i32* %9, align 4
  switch i32 %80, label %108 [
    i32 129, label %81
    i32 130, label %105
  ]

81:                                               ; preds = %79
  %82 = load i32*, i32** %14, align 8
  %83 = call i32 @set_rx_buffer_desc_ls(i32* %82, i32 0)
  %84 = load i32*, i32** %14, align 8
  %85 = call i32 @set_rx_buffer_desc_fs(i32* %84, i32 0)
  %86 = load i32*, i32** %14, align 8
  %87 = call i32 @set_rx_buffer_desc_total_length(i32* %86, i32 0)
  %88 = load i32*, i32** %14, align 8
  %89 = load i64, i64* @MAX_RECEIVE_BUFFER_SIZE, align 8
  %90 = load i64, i64* @RX_DESC_SIZE, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @set_rx_buffer_desc_data_length(i32* %88, i64 %91)
  %93 = load i32*, i32** %14, align 8
  %94 = load i32*, i32** %10, align 8
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @DMA_BIT_MASK(i32 32)
  %97 = and i32 %95, %96
  %98 = call i32 @set_rx_buffer_physical_low(i32* %93, i32 %97)
  %99 = load i32*, i32** %14, align 8
  %100 = load i32*, i32** %10, align 8
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 32
  %103 = load i32, i32* %13, align 4
  %104 = call i32 @set_rx_buffer_physical_high(i32* %99, i32 %102, i32 %103)
  br label %111

105:                                              ; preds = %79
  %106 = load i32*, i32** %14, align 8
  %107 = call i32 @set_rx_desc_eor(i32* %106, i32 1)
  br label %111

108:                                              ; preds = %79
  %109 = load i32, i32* %9, align 4
  %110 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %109)
  br label %111

111:                                              ; preds = %108, %105, %81
  br label %112

112:                                              ; preds = %55, %111, %78
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_tx_desc_next_desc_address(i32*, i32) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i32 @set_tx_buff_desc_own(i32*, i32) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @get_desc_addr_fr_q_idx(i32) #1

declare dso_local i32 @set_rx_buffer_desc_ls(i32*, i32) #1

declare dso_local i32 @set_rx_buffer_desc_fs(i32*, i32) #1

declare dso_local i32 @set_rx_buffer_desc_total_length(i32*, i32) #1

declare dso_local i32 @set_rx_buffer_desc_data_length(i32*, i64) #1

declare dso_local i32 @set_rx_buffer_physical_low(i32*, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @set_rx_buffer_physical_high(i32*, i32, i32) #1

declare dso_local i32 @set_rx_desc_eor(i32*, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
