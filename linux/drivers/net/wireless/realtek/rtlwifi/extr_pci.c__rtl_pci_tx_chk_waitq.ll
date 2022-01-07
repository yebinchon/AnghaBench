; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_tx_chk_waitq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_pci.c__rtl_pci_tx_chk_waitq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_16__*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__*, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32 (%struct.ieee80211_hw*, i32*, %struct.sk_buff*, %struct.rtl_tcb_desc*)* }
%struct.sk_buff = type { i32 }
%struct.rtl_tcb_desc = type { i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i32 }
%struct.rtl_mac = type { i32*, i32 }
%struct.rtl_pci = type { %struct.rtl8192_tx_ring* }
%struct.rtl8192_tx_ring = type { i64, i32 }
%struct.ieee80211_tx_info = type { i32 }
%struct.rtl_hal = type { i64 }

@ac_to_hwq = common dso_local global i64* null, align 8
@ERFON = common dso_local global i64 0, align 8
@IEEE80211_TX_CTL_AMPDU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*)* @_rtl_pci_tx_chk_waitq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_pci_tx_chk_waitq(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.rtl_priv*, align 8
  %4 = alloca %struct.rtl_mac*, align 8
  %5 = alloca %struct.rtl_pci*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.rtl_hal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.rtl8192_tx_ring*, align 8
  %12 = alloca %struct.rtl_tcb_desc, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %14 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %13)
  store %struct.rtl_priv* %14, %struct.rtl_priv** %3, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %16 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %15)
  %17 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %16)
  store %struct.rtl_mac* %17, %struct.rtl_mac** %4, align 8
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %19 = call i32 @rtl_pcipriv(%struct.ieee80211_hw* %18)
  %20 = call %struct.rtl_pci* @rtl_pcidev(i32 %19)
  store %struct.rtl_pci* %20, %struct.rtl_pci** %5, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  store %struct.ieee80211_tx_info* null, %struct.ieee80211_tx_info** %7, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %22 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_hal* @rtl_hal(%struct.rtl_priv* %22)
  store %struct.rtl_hal* %23, %struct.rtl_hal** %8, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 6
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %1
  br label %155

30:                                               ; preds = %1
  %31 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %32 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %31, i32 0, i32 5
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %30
  %37 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %38 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %55, label %42

42:                                               ; preds = %36
  %43 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %44 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %43, i32 0, i32 3
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %44, align 8
  %46 = icmp ne %struct.TYPE_13__* %45, null
  br i1 %46, label %47, label %56

47:                                               ; preds = %42
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 3
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %47, %36
  br label %155

56:                                               ; preds = %47, %42, %30
  store i32 7, i32* %9, align 4
  br label %57

57:                                               ; preds = %152, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp sge i32 %58, 0
  br i1 %59, label %60, label %155

60:                                               ; preds = %57
  %61 = load i64*, i64** @ac_to_hwq, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i64 @rtl_tid_to_ac(i32 %62)
  %64 = getelementptr inbounds i64, i64* %61, i64 %63
  %65 = load i64, i64* %64, align 8
  store i64 %65, i64* %10, align 8
  %66 = load %struct.rtl_pci*, %struct.rtl_pci** %5, align 8
  %67 = getelementptr inbounds %struct.rtl_pci, %struct.rtl_pci* %66, i32 0, i32 0
  %68 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %67, align 8
  %69 = load i64, i64* %10, align 8
  %70 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %68, i64 %69
  store %struct.rtl8192_tx_ring* %70, %struct.rtl8192_tx_ring** %11, align 8
  br label %71

71:                                               ; preds = %142, %60
  %72 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %73 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %83, label %76

76:                                               ; preds = %71
  %77 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %78 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %77, i32 0, i32 2
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @ERFON, align 8
  %82 = icmp eq i64 %80, %81
  br label %83

83:                                               ; preds = %76, %71
  %84 = phi i1 [ false, %71 ], [ %82, %76 ]
  br i1 %84, label %85, label %151

85:                                               ; preds = %83
  %86 = call i32 @memset(%struct.rtl_tcb_desc* %12, i32 0, i32 4)
  %87 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %88 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %88, i32 0, i32 0
  %90 = call i32 @spin_lock(i32* %89)
  %91 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %92 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = call i32 @skb_queue_empty(i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %119, label %99

99:                                               ; preds = %85
  %100 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %101 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.rtl8192_tx_ring*, %struct.rtl8192_tx_ring** %11, align 8
  %104 = getelementptr inbounds %struct.rtl8192_tx_ring, %struct.rtl8192_tx_ring* %103, i32 0, i32 1
  %105 = call i64 @skb_queue_len(i32* %104)
  %106 = sub nsw i64 %102, %105
  %107 = load %struct.rtl_hal*, %struct.rtl_hal** %8, align 8
  %108 = getelementptr inbounds %struct.rtl_hal, %struct.rtl_hal* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = icmp sgt i64 %106, %109
  br i1 %110, label %111, label %119

111:                                              ; preds = %99
  %112 = load %struct.rtl_mac*, %struct.rtl_mac** %4, align 8
  %113 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = call %struct.sk_buff* @skb_dequeue(i32* %117)
  store %struct.sk_buff* %118, %struct.sk_buff** %6, align 8
  br label %124

119:                                              ; preds = %99, %85
  %120 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %121 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  %123 = call i32 @spin_unlock(i32* %122)
  br label %151

124:                                              ; preds = %111
  %125 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %126 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock(i32* %127)
  %129 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %130 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %129)
  store %struct.ieee80211_tx_info* %130, %struct.ieee80211_tx_info** %7, align 8
  %131 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %132 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @IEEE80211_TX_CTL_AMPDU, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %124
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @_rtl_update_earlymode_info(%struct.ieee80211_hw* %138, %struct.sk_buff* %139, %struct.rtl_tcb_desc* %12, i32 %140)
  br label %142

142:                                              ; preds = %137, %124
  %143 = load %struct.rtl_priv*, %struct.rtl_priv** %3, align 8
  %144 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %143, i32 0, i32 0
  %145 = load %struct.TYPE_16__*, %struct.TYPE_16__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %145, i32 0, i32 0
  %147 = load i32 (%struct.ieee80211_hw*, i32*, %struct.sk_buff*, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, i32*, %struct.sk_buff*, %struct.rtl_tcb_desc*)** %146, align 8
  %148 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = call i32 %147(%struct.ieee80211_hw* %148, i32* null, %struct.sk_buff* %149, %struct.rtl_tcb_desc* %12)
  br label %71

151:                                              ; preds = %119, %83
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %9, align 4
  %154 = add nsw i32 %153, -1
  store i32 %154, i32* %9, align 4
  br label %57

155:                                              ; preds = %29, %55, %57
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_pci* @rtl_pcidev(i32) #1

declare dso_local i32 @rtl_pcipriv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_hal* @rtl_hal(%struct.rtl_priv*) #1

declare dso_local i64 @rtl_tid_to_ac(i32) #1

declare dso_local i32 @memset(%struct.rtl_tcb_desc*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @skb_queue_empty(i32*) #1

declare dso_local i64 @skb_queue_len(i32*) #1

declare dso_local %struct.sk_buff* @skb_dequeue(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @_rtl_update_earlymode_info(%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rtl_tcb_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
