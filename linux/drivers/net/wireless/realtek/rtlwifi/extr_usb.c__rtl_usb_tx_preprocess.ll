; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_tx_preprocess.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__rtl_usb_tx_preprocess.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_sta = type { i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rtl_priv = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32*, i32*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, i32, %struct.rtl_tcb_desc*)* }
%struct.ieee80211_hdr = type { i32, i32* }
%struct.ieee80211_tx_info = type { i32 }
%struct.rtl_tcb_desc = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.rtl_tx_desc = type { i32 }

@COMP_SEND = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"MAC80211_LINKING\0A\00", align 1
@IEEE80211_FCTL_PM = common dso_local global i32 0, align 4
@LED_CTL_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_sta*, %struct.sk_buff*, i32)* @_rtl_usb_tx_preprocess to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl_usb_tx_preprocess(%struct.ieee80211_hw* %0, %struct.ieee80211_sta* %1, %struct.sk_buff* %2, i32 %3) #0 {
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rtl_priv*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.rtl_tx_desc*, align 8
  %12 = alloca %struct.rtl_tcb_desc, align 4
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %16)
  store %struct.rtl_priv* %17, %struct.rtl_priv** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %18)
  store %struct.ieee80211_tx_info* %19, %struct.ieee80211_tx_info** %10, align 8
  store %struct.rtl_tx_desc* null, %struct.rtl_tx_desc** %11, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %23, %struct.ieee80211_hdr** %13, align 8
  %24 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %25 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %14, align 4
  %27 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %28 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  store i32* %29, i32** %15, align 8
  %30 = call i32 @memset(%struct.rtl_tcb_desc* %12, i32 0, i32 4)
  %31 = load i32, i32* %14, align 4
  %32 = call i64 @ieee80211_is_auth(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %4
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %36 = load i32, i32* @COMP_SEND, align 4
  %37 = load i32, i32* @DBG_DMESG, align 4
  %38 = call i32 @RT_TRACE(%struct.rtl_priv* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %34, %4
  %40 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %41 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %65

45:                                               ; preds = %39
  %46 = load i32, i32* %14, align 4
  %47 = call i64 @ieee80211_is_data(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = call i32 @ieee80211_is_nullfunc(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %49
  %54 = load i32, i32* %14, align 4
  %55 = call i32 @ieee80211_has_pm(i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %64, label %57

57:                                               ; preds = %53
  %58 = load i32, i32* @IEEE80211_FCTL_PM, align 4
  %59 = call i32 @cpu_to_le16(i32 %58)
  %60 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %61 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %57, %53, %49, %45
  br label %65

65:                                               ; preds = %64, %39
  %66 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %67 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %68 = call i32 @rtl_action_proc(%struct.ieee80211_hw* %66, %struct.sk_buff* %67, i32 1)
  %69 = load i32*, i32** %15, align 8
  %70 = call i64 @is_multicast_ether_addr(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %77 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %80, %75
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %78, align 8
  br label %110

83:                                               ; preds = %65
  %84 = load i32*, i32** %15, align 8
  %85 = call i64 @is_broadcast_ether_addr(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %83
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %92 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = sext i32 %94 to i64
  %96 = add nsw i64 %95, %90
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %93, align 4
  br label %109

98:                                               ; preds = %83
  %99 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %103 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %101
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %104, align 8
  br label %109

109:                                              ; preds = %98, %87
  br label %110

110:                                              ; preds = %109, %72
  %111 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %112 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 1
  %117 = load i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32*, i32*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, i32, %struct.rtl_tcb_desc*)*, i32 (%struct.ieee80211_hw*, %struct.ieee80211_hdr*, i32*, i32*, %struct.ieee80211_tx_info*, %struct.ieee80211_sta*, %struct.sk_buff*, i32, %struct.rtl_tcb_desc*)** %116, align 8
  %118 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %119 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %120 = load %struct.rtl_tx_desc*, %struct.rtl_tx_desc** %11, align 8
  %121 = bitcast %struct.rtl_tx_desc* %120 to i32*
  %122 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %123 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %6, align 8
  %124 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = call i32 %117(%struct.ieee80211_hw* %118, %struct.ieee80211_hdr* %119, i32* %121, i32* null, %struct.ieee80211_tx_info* %122, %struct.ieee80211_sta* %123, %struct.sk_buff* %124, i32 %125, %struct.rtl_tcb_desc* %12)
  %127 = load i32, i32* %14, align 4
  %128 = call i64 @ieee80211_is_data(i32 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %110
  %131 = load %struct.rtl_priv*, %struct.rtl_priv** %9, align 8
  %132 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %132, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %136, align 8
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %139 = load i32, i32* @LED_CTL_TX, align 4
  %140 = call i32 %137(%struct.ieee80211_hw* %138, i32 %139)
  br label %141

141:                                              ; preds = %130, %110
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.rtl_tcb_desc*, i32, i32) #1

declare dso_local i64 @ieee80211_is_auth(i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i32 @ieee80211_is_nullfunc(i32) #1

declare dso_local i32 @ieee80211_has_pm(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @rtl_action_proc(%struct.ieee80211_hw*, %struct.sk_buff*, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @is_broadcast_ether_addr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
