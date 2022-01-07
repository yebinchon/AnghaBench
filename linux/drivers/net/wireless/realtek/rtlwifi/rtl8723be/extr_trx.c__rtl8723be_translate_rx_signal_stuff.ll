; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_trx.c__rtl8723be_translate_rx_signal_stuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8723be/extr_trx.c__rtl8723be_translate_rx_signal_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rtl_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.rx_fwinfo_8723be = type { i32 }
%struct.rtl_mac = type { i32* }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_hdr = type { i32, i32*, i32*, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i64 0, align 8
@IEEE80211_FCTL_TODS = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8723be*)* @_rtl8723be_translate_rx_signal_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl8723be_translate_rx_signal_stuff(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.rtl_stats* %2, i32* %3, %struct.rx_fwinfo_8723be* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtl_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rx_fwinfo_8723be*, align 8
  %11 = alloca %struct.rtl_mac*, align 8
  %12 = alloca %struct.rtl_efuse*, align 8
  %13 = alloca %struct.ieee80211_hdr*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.rtl_stats* %2, %struct.rtl_stats** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.rx_fwinfo_8723be* %4, %struct.rx_fwinfo_8723be** %10, align 8
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %23 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %22)
  %24 = call %struct.rtl_mac* @rtl_mac(%struct.TYPE_8__* %23)
  store %struct.rtl_mac* %24, %struct.rtl_mac** %11, align 8
  %25 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %26 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %25)
  %27 = call %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_8__* %26)
  store %struct.rtl_efuse* %27, %struct.rtl_efuse** %12, align 8
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
  %44 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i64 @le16_to_cpu(i32 %45)
  store i64 %46, i64* %17, align 8
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i64 @WLAN_FC_GET_TYPE(i32 %49)
  store i64 %50, i64* %18, align 8
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %52 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  store i32* %53, i32** %15, align 8
  %54 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %55 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %54)
  store i32* %55, i32** %16, align 8
  %56 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %57 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load i32*, i32** %16, align 8
  %60 = load i32, i32* @ETH_ALEN, align 4
  %61 = call i32 @memcpy(i32 %58, i32* %59, i32 %60)
  %62 = load i64, i64* @IEEE80211_FTYPE_CTL, align 8
  %63 = load i64, i64* %18, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %112

65:                                               ; preds = %5
  %66 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %67 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load i64, i64* %17, align 8
  %70 = load i64, i64* @IEEE80211_FCTL_TODS, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %65
  %74 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %75 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %74, i32 0, i32 3
  %76 = load i32*, i32** %75, align 8
  br label %92

77:                                               ; preds = %65
  %78 = load i64, i64* %17, align 8
  %79 = load i64, i64* @IEEE80211_FCTL_FROMDS, align 8
  %80 = and i64 %78, %79
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %77
  %83 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %84 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %83, i32 0, i32 2
  %85 = load i32*, i32** %84, align 8
  br label %90

86:                                               ; preds = %77
  %87 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %88 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = phi i32* [ %85, %82 ], [ %89, %86 ]
  br label %92

92:                                               ; preds = %90, %73
  %93 = phi i32* [ %76, %73 ], [ %91, %90 ]
  %94 = call i64 @ether_addr_equal(i32* %68, i32* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %112

96:                                               ; preds = %92
  %97 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %98 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %97, i32 0, i32 4
  %99 = load i32, i32* %98, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %112, label %101

101:                                              ; preds = %96
  %102 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %103 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %112, label %106

106:                                              ; preds = %101
  %107 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %108 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  %111 = xor i1 %110, true
  br label %112

112:                                              ; preds = %106, %101, %96, %92, %5
  %113 = phi i1 [ false, %101 ], [ false, %96 ], [ false, %92 ], [ false, %5 ], [ %111, %106 ]
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %19, align 4
  %115 = load i32, i32* %19, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %112
  %118 = load i32*, i32** %15, align 8
  %119 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %120 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %119, i32 0, i32 0
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @ether_addr_equal(i32* %118, i32* %121)
  %123 = icmp ne i64 %122, 0
  br label %124

124:                                              ; preds = %117, %112
  %125 = phi i1 [ false, %112 ], [ %123, %117 ]
  %126 = zext i1 %125 to i32
  store i32 %126, i32* %20, align 4
  %127 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %128 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @ieee80211_is_beacon(i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %124
  store i32 1, i32* %21, align 4
  br label %134

133:                                              ; preds = %124
  store i32 0, i32* %21, align 4
  br label %134

134:                                              ; preds = %133, %132
  %135 = load i32, i32* %21, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %134
  %138 = load i32, i32* %19, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %137
  %141 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %142 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %141)
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %140, %137, %134
  %149 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %150 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %151 = load i32*, i32** %9, align 8
  %152 = load %struct.rx_fwinfo_8723be*, %struct.rx_fwinfo_8723be** %10, align 8
  %153 = load i32, i32* %19, align 4
  %154 = load i32, i32* %20, align 4
  %155 = load i32, i32* %21, align 4
  %156 = call i32 @_rtl8723be_query_rxphystatus(%struct.ieee80211_hw* %149, %struct.rtl_stats* %150, i32* %151, %struct.rx_fwinfo_8723be* %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %158 = load i32*, i32** %14, align 8
  %159 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %160 = call i32 @rtl_process_phyinfo(%struct.ieee80211_hw* %157, i32* %158, %struct.rtl_stats* %159)
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_8__*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i32) #1

declare dso_local i32* @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i32 @_rtl8723be_query_rxphystatus(%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8723be*, i32, i32, i32) #1

declare dso_local i32 @rtl_process_phyinfo(%struct.ieee80211_hw*, i32*, %struct.rtl_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
