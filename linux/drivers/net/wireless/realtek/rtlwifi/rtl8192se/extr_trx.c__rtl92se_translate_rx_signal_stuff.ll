; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c__rtl92se_translate_rx_signal_stuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_trx.c__rtl92se_translate_rx_signal_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rtl_stats = type { i32, i32, i32, i32, i32 }
%struct.rx_fwinfo = type { i32 }
%struct.rtl_mac = type { i32* }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32 }

@IEEE80211_FTYPE_CTL = common dso_local global i64 0, align 8
@IEEE80211_FCTL_TODS = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo*)* @_rtl92se_translate_rx_signal_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92se_translate_rx_signal_stuff(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.rtl_stats* %2, i32* %3, %struct.rx_fwinfo* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtl_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rx_fwinfo*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_efuse*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.rtl_stats* %2, %struct.rtl_stats** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.rx_fwinfo* %4, %struct.rx_fwinfo** %10, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %23 = call i32 @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_mac* @rtl_mac(i32 %23)
  store %struct.rtl_mac* %24, %struct.rtl_mac** %11, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %26 = call i32 @rtl_priv(%struct.ieee80211_hw* %25)
  %27 = call %struct.rtl_efuse* @rtl_efuse(i32 %26)
  store %struct.rtl_efuse* %27, %struct.rtl_efuse** %12, align 8
  store i32 0, i32* %21, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %32 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %30, i64 %34
  %36 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %37 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %14, align 8
  %41 = load i32*, i32** %14, align 8
  %42 = bitcast i32* %41 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %42, %struct.ieee80211_hdr** %13, align 8
  %43 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %16, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i64 @le16_to_cpu(i32 %46)
  store i64 %47, i64* %18, align 8
  %48 = load i32, i32* %16, align 4
  %49 = call i64 @WLAN_FC_GET_TYPE(i32 %48)
  store i64 %49, i64* %17, align 8
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %51 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %50, i32 0, i32 2
  %52 = load i32*, i32** %51, align 8
  store i32* %52, i32** %15, align 8
  %53 = load i64, i64* @IEEE80211_FTYPE_CTL, align 8
  %54 = load i64, i64* %17, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %103

56:                                               ; preds = %5
  %57 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %58 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i64, i64* %18, align 8
  %61 = load i64, i64* @IEEE80211_FCTL_TODS, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 2
  %67 = load i32*, i32** %66, align 8
  br label %83

68:                                               ; preds = %56
  %69 = load i64, i64* %18, align 8
  %70 = load i64, i64* @IEEE80211_FCTL_FROMDS, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %68
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  br label %81

77:                                               ; preds = %68
  %78 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %79 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  br label %81

81:                                               ; preds = %77, %73
  %82 = phi i32* [ %76, %73 ], [ %80, %77 ]
  br label %83

83:                                               ; preds = %81, %64
  %84 = phi i32* [ %67, %64 ], [ %82, %81 ]
  %85 = call i64 @ether_addr_equal(i32* %59, i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %103

87:                                               ; preds = %83
  %88 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %89 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %94 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %92
  %98 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %99 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  br label %103

103:                                              ; preds = %97, %92, %87, %83, %5
  %104 = phi i1 [ false, %92 ], [ false, %87 ], [ false, %83 ], [ false, %5 ], [ %102, %97 ]
  %105 = zext i1 %104 to i32
  store i32 %105, i32* %19, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load i32*, i32** %15, align 8
  %110 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %111 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = call i64 @ether_addr_equal(i32* %109, i32* %112)
  %114 = icmp ne i64 %113, 0
  br label %115

115:                                              ; preds = %108, %103
  %116 = phi i1 [ false, %103 ], [ %114, %108 ]
  %117 = zext i1 %116 to i32
  store i32 %117, i32* %20, align 4
  %118 = load i32, i32* %16, align 4
  %119 = call i64 @ieee80211_is_beacon(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %115
  store i32 1, i32* %21, align 4
  br label %122

122:                                              ; preds = %121, %115
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %124 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %125 = load i32*, i32** %9, align 8
  %126 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %10, align 8
  %127 = load i32, i32* %19, align 4
  %128 = load i32, i32* %20, align 4
  %129 = load i32, i32* %21, align 4
  %130 = call i32 @_rtl92se_query_rxphystatus(%struct.ieee80211_hw* %123, %struct.rtl_stats* %124, i32* %125, %struct.rx_fwinfo* %126, i32 %127, i32 %128, i32 %129)
  %131 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %132 = load i32*, i32** %14, align 8
  %133 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %134 = call i32 @rtl_process_phyinfo(%struct.ieee80211_hw* %131, i32* %132, %struct.rtl_stats* %133)
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @_rtl92se_query_rxphystatus(%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo*, i32, i32, i32) #1

declare dso_local i32 @rtl_process_phyinfo(%struct.ieee80211_hw*, i32*, %struct.rtl_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
