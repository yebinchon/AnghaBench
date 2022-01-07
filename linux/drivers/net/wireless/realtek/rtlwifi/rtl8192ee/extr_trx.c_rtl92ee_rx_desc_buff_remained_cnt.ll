; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_rx_desc_buff_remained_cnt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c_rtl92ee_rx_desc_buff_remained_cnt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_pci = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.rtl_priv = type { i32 }

@rtl92ee_rx_desc_buff_remained_cnt.start_rx = internal global i32 0, align 4
@REG_RXQ_TXBD_IDX = common dso_local global i32 0, align 4
@COMP_RXDESC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"!!!write point is 0x%x, reg 0x3B4 value is 0x%x\0A\00", align 1
@RTL_PCI_MAX_RX_COUNT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtl92ee_rx_desc_buff_remained_cnt(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rtl_pci*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %13 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %12)
  %14 = call %struct.rtl_pci* @rtl_pcidev(i32 %13)
  store %struct.rtl_pci* %14, %struct.rtl_pci** %6, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  store %struct.rtl_priv* %16, %struct.rtl_priv** %7, align 8
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %18 = load i32, i32* @REG_RXQ_TXBD_IDX, align 4
  %19 = call i32 @rtl_read_dword(%struct.rtl_priv* %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = ashr i32 %20, 16
  %22 = and i32 %21, 2047
  %23 = sext i32 %22 to i64
  store i64 %23, i64* %8, align 8
  %24 = load i32, i32* %11, align 4
  %25 = and i32 %24, 2047
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %9, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %29 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i64, i64* %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %27, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %2
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %38 = load i32, i32* @COMP_RXDESC, align 4
  %39 = load i32, i32* @DBG_DMESG, align 4
  %40 = load i64, i64* %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = call i32 @RT_TRACE(%struct.rtl_priv* %37, i32 %38, i32 %39, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %40, i32 %41)
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %44 = load i32, i32* @REG_RXQ_TXBD_IDX, align 4
  %45 = call i32 @rtl_read_dword(%struct.rtl_priv* %43, i32 %44)
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = ashr i32 %46, 16
  %48 = and i32 %47, 2047
  %49 = sext i32 %48 to i64
  store i64 %49, i64* %8, align 8
  %50 = load i32, i32* %11, align 4
  %51 = and i32 %50, 2047
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %9, align 8
  br label %53

53:                                               ; preds = %36, %2
  %54 = load i64, i64* %8, align 8
  %55 = icmp sgt i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 1, i32* @rtl92ee_rx_desc_buff_remained_cnt.start_rx, align 4
  br label %57

57:                                               ; preds = %56, %53
  %58 = load i32, i32* @rtl92ee_rx_desc_buff_remained_cnt.start_rx, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %57
  store i64 0, i64* %3, align 8
  br label %78

61:                                               ; preds = %57
  %62 = load i64, i64* %8, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load i32, i32* @RTL_PCI_MAX_RX_COUNT, align 4
  %65 = call i64 @calc_fifo_space(i64 %62, i64 %63, i32 %64)
  store i64 %65, i64* %10, align 8
  %66 = load i64, i64* %10, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  store i64 0, i64* %3, align 8
  br label %78

69:                                               ; preds = %61
  %70 = load i64, i64* %9, align 8
  %71 = load %struct.rtl_pci*, %struct.rtl_pci** %6, align 8
  %72 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load i64, i64* %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  store i64 %70, i64* %76, align 8
  %77 = load i64, i64* %10, align 8
  store i64 %77, i64* %3, align 8
  br label %78

78:                                               ; preds = %69, %68, %60
  %79 = load i64, i64* %3, align 8
  ret i64 %79
}

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_read_dword(%struct.rtl_priv*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, i64, i32) #1

declare dso_local i64 @calc_fifo_space(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
