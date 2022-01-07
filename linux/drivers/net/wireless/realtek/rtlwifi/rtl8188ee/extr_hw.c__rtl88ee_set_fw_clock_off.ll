; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_set_fw_clock_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_hw.c__rtl88ee_set_fw_clock_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.rtl_hal = type { i64, i32, i32, i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i32 }

@HW_VAR_RF_STATE = common dso_local global i32 0, align 4
@ERFOFF = common dso_local global i32 0, align 4
@RTL_PCI_MAX_TX_QUEUE_COUNT = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@FW_PS_STATE_RF_OFF_LOW_PWR_88E = common dso_local global i64 0, align 8
@REG_HISR = common dso_local global i32 0, align 4
@HW_VAR_SET_RPWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i64)* @_rtl88ee_set_fw_clock_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_set_fw_clock_off(%struct.ieee80211_hw* %0, i64 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_hal*, align 8
  %7 = alloca %struct.rtl_pci*, align 8
  %8 = alloca %struct.rtl8192_tx_ring*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i64 %1, i64* %4, align 8
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %13 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %12)
  store %struct.rtl_priv* %13, %struct.rtl_priv** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %14)
  %16 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %15)
  store %struct.rtl_hal* %16, %struct.rtl_hal** %6, align 8
  %17 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %18 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %17)
  %19 = call %struct.rtl_pci* @rtl_pcidev(i32 %18)
  store %struct.rtl_pci* %19, %struct.rtl_pci** %7, align 8
  store i32 0, i32* %10, align 4
  %20 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %21 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %155

25:                                               ; preds = %2
  %26 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %27 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %155

32:                                               ; preds = %25
  %33 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %34 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  br label %155

38:                                               ; preds = %32
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 2
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 1
  %45 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %44, align 8
  %46 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %47 = load i32, i32* @HW_VAR_RF_STATE, align 4
  %48 = bitcast i32* %9 to i64*
  %49 = call i32 %45(%struct.ieee80211_hw* %46, i32 %47, i64* %48)
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @ERFOFF, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %60, label %53

53:                                               ; preds = %38
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @ERFOFF, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %53, %38
  br label %155

61:                                               ; preds = %53
  store i64 0, i64* %11, align 8
  br label %62

62:                                               ; preds = %78, %61
  %63 = load i64, i64* %11, align 8
  %64 = load i64, i64* @RTL_PCI_MAX_TX_QUEUE_COUNT, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %81

66:                                               ; preds = %62
  %67 = load %struct.rtl_pci*, %struct.rtl_pci** %7, align 8
  %68 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %67, i32 0, i32 0
  %69 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %68, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %69, i64 %70
  store %struct.rtl8192_tx_ring* %71, %struct.rtl8192_tx_ring** %8, align 8
  %72 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %8, align 8
  %73 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %72, i32 0, i32 0
  %74 = call i64 @skb_queue_len(i32* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %66
  store i32 1, i32* %10, align 4
  br label %81

77:                                               ; preds = %66
  br label %78

78:                                               ; preds = %77
  %79 = load i64, i64* %11, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %62

81:                                               ; preds = %76, %62
  %82 = load i32, i32* %10, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %81
  %85 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %86 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i64, i64* @jiffies, align 8
  %89 = call i64 @MSECS(i32 10)
  %90 = add nsw i64 %88, %89
  %91 = call i32 @mod_timer(i32* %87, i64 %90)
  br label %155

92:                                               ; preds = %81
  %93 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %94 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = call i64 @FW_PS_STATE(i64 %95)
  %97 = load i64, i64* @FW_PS_STATE_RF_OFF_LOW_PWR_88E, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %155

99:                                               ; preds = %92
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %101 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = call i32 @spin_lock_bh(i32* %102)
  %104 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %105 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %142, label %108

108:                                              ; preds = %99
  %109 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %110 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %109, i32 0, i32 1
  store i32 1, i32* %110, align 8
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 1
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = call i32 @spin_unlock_bh(i32* %113)
  %115 = load i64, i64* %4, align 8
  %116 = call i64 @FW_PS_STATE(i64 %115)
  %117 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %118 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %120 = load i32, i32* @REG_HISR, align 4
  %121 = call i32 @rtl_write_word(%struct.rtl_priv* %119, i32 %120, i32 256)
  %122 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %123 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %122, i32 0, i32 2
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i32 0, i32 0
  %128 = load i32 (%struct.ieee80211_hw*, i32, i64*)*, i32 (%struct.ieee80211_hw*, i32, i64*)** %127, align 8
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %130 = load i32, i32* @HW_VAR_SET_RPWM, align 4
  %131 = call i32 %128(%struct.ieee80211_hw* %129, i32 %130, i64* %4)
  %132 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %133 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = call i32 @spin_lock_bh(i32* %134)
  %136 = load %struct.rtl_hal*, %struct.rtl_hal** %6, align 8
  %137 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %136, i32 0, i32 1
  store i32 0, i32* %137, align 8
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = call i32 @spin_unlock_bh(i32* %140)
  br label %154

142:                                              ; preds = %99
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = call i32 @spin_unlock_bh(i32* %145)
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %148 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 0
  %150 = load i64, i64* @jiffies, align 8
  %151 = call i64 @MSECS(i32 10)
  %152 = add nsw i64 %150, %151
  %153 = call i32 @mod_timer(i32* %149, i64 %152)
  br label %154

154:                                              ; preds = %142, %108
  br label %155

155:                                              ; preds = %24, %31, %37, %60, %84, %154, %92
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @MSECS(i32) #1

declare dso_local i64 @FW_PS_STATE(i64) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @rtl_write_word(%struct.rtl_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
