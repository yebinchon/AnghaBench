; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c__rtl88ee_translate_rx_signal_stuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8188ee/extr_trx.c__rtl88ee_translate_rx_signal_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rtl_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.rx_fwinfo_88e = type { i32 }
%struct.rtl_mac = type { i32* }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_hdr = type { i32, i32*, i32*, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_88e*)* @_rtl88ee_translate_rx_signal_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl88ee_translate_rx_signal_stuff(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.rtl_stats* %2, i32* %3, %struct.rx_fwinfo_88e* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtl_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rx_fwinfo_88e*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_efuse*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.rtl_stats* %2, %struct.rtl_stats** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.rx_fwinfo_88e* %4, %struct.rx_fwinfo_88e** %10, align 8
  %21 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %22 = call i32 @rtl_priv(%struct.ieee80211_hw* %21)
  %23 = call %struct.rtl_mac* @rtl_mac(i32 %22)
  store %struct.rtl_mac* %23, %struct.rtl_mac** %11, align 8
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %25 = call i32 @rtl_priv(%struct.ieee80211_hw* %24)
  %26 = call %struct.rtl_efuse* @rtl_efuse(i32 %25)
  store %struct.rtl_efuse* %26, %struct.rtl_efuse** %12, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %31 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %29, i64 %33
  %35 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %36 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %34, i64 %38
  store i32* %39, i32** %14, align 8
  %40 = load i32*, i32** %14, align 8
  %41 = bitcast i32* %40 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %41, %struct.ieee80211_hdr** %13, align 8
  %42 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %43 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %17, align 4
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %15, align 8
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %49 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %48)
  store i32* %49, i32** %16, align 8
  %50 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %51 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %16, align 8
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = call i32 @memcpy(i32 %52, i32* %53, i32 %54)
  %56 = load i32, i32* %17, align 4
  %57 = call i32 @ieee80211_is_ctl(i32 %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %104, label %59

59:                                               ; preds = %5
  %60 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %61 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = call i64 @ieee80211_has_tods(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %59
  %67 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %67, i32 0, i32 3
  %69 = load i32*, i32** %68, align 8
  br label %84

70:                                               ; preds = %59
  %71 = load i32, i32* %17, align 4
  %72 = call i64 @ieee80211_has_fromds(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %70
  %75 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  br label %82

78:                                               ; preds = %70
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  br label %82

82:                                               ; preds = %78, %74
  %83 = phi i32* [ %77, %74 ], [ %81, %78 ]
  br label %84

84:                                               ; preds = %82, %66
  %85 = phi i32* [ %69, %66 ], [ %83, %82 ]
  %86 = call i64 @ether_addr_equal(i32* %62, i32* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %104

88:                                               ; preds = %84
  %89 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %90 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %88
  %94 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %95 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %94, i32 0, i32 3
  %96 = load i32, i32* %95, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %104, label %98

98:                                               ; preds = %93
  %99 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %100 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  %103 = xor i1 %102, true
  br label %104

104:                                              ; preds = %98, %93, %88, %84, %5
  %105 = phi i1 [ false, %93 ], [ false, %88 ], [ false, %84 ], [ false, %5 ], [ %103, %98 ]
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %18, align 4
  %107 = load i32, i32* %18, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %104
  %110 = load i32*, i32** %15, align 8
  %111 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %112 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = call i64 @ether_addr_equal(i32* %110, i32* %113)
  %115 = icmp ne i64 %114, 0
  br label %116

116:                                              ; preds = %109, %104
  %117 = phi i1 [ false, %104 ], [ %115, %109 ]
  %118 = zext i1 %117 to i32
  store i32 %118, i32* %19, align 4
  %119 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %120 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = call i64 @ieee80211_is_beacon(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %116
  store i32 1, i32* %20, align 4
  br label %126

125:                                              ; preds = %116
  store i32 0, i32* %20, align 4
  br label %126

126:                                              ; preds = %125, %124
  %127 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %128 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %129 = load i32*, i32** %9, align 8
  %130 = load %struct.rx_fwinfo_88e*, %struct.rx_fwinfo_88e** %10, align 8
  %131 = load i32, i32* %18, align 4
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %20, align 4
  %134 = call i32 @_rtl88ee_query_rxphystatus(%struct.ieee80211_hw* %127, %struct.rtl_stats* %128, i32* %129, %struct.rx_fwinfo_88e* %130, i32 %131, i32 %132, i32 %133)
  %135 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %136 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %137 = call i32 @_rtl88ee_smart_antenna(%struct.ieee80211_hw* %135, %struct.rtl_stats* %136)
  %138 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %139 = load i32*, i32** %14, align 8
  %140 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %141 = call i32 @rtl_process_phyinfo(%struct.ieee80211_hw* %138, i32* %139, %struct.rtl_stats* %140)
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(i32) #1

declare dso_local i32 @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(i32) #1

declare dso_local i32* @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i64 @ieee80211_has_tods(i32) #1

declare dso_local i64 @ieee80211_has_fromds(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @_rtl88ee_query_rxphystatus(%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_88e*, i32, i32, i32) #1

declare dso_local i32 @_rtl88ee_smart_antenna(%struct.ieee80211_hw*, %struct.rtl_stats*) #1

declare dso_local i32 @rtl_process_phyinfo(%struct.ieee80211_hw*, i32*, %struct.rtl_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
