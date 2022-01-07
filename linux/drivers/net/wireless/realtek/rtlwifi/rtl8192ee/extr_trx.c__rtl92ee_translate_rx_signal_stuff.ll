; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c__rtl92ee_translate_rx_signal_stuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_trx.c__rtl92ee_translate_rx_signal_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rtl_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.rx_fwinfo = type { i32 }
%struct.rtl_mac = type { i32* }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_hdr = type { i32, i32*, i32*, i32* }
%struct.ieee80211_qos_hdr = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo*)* @_rtl92ee_translate_rx_signal_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92ee_translate_rx_signal_stuff(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.rtl_stats* %2, i32* %3, %struct.rx_fwinfo* %4) #0 {
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
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.ieee80211_qos_hdr*, align 8
  %22 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.rtl_stats* %2, %struct.rtl_stats** %8, align 8
  store i32* %3, i32** %9, align 8
  store %struct.rx_fwinfo* %4, %struct.rx_fwinfo** %10, align 8
  %23 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %24 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %23)
  %25 = call %struct.rtl_mac* @rtl_mac(%struct.TYPE_8__* %24)
  store %struct.rtl_mac* %25, %struct.rtl_mac** %11, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %27 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_8__* %27)
  store %struct.rtl_efuse* %28, %struct.rtl_efuse** %12, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %33 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  %37 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %38 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  %42 = getelementptr inbounds i32, i32* %41, i64 24
  store i32* %42, i32** %14, align 8
  %43 = load i32*, i32** %14, align 8
  %44 = bitcast i32* %43 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %44, %struct.ieee80211_hdr** %13, align 8
  %45 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %46 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %17, align 4
  %48 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %49 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %48, i32 0, i32 3
  %50 = load i32*, i32** %49, align 8
  store i32* %50, i32** %15, align 8
  %51 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %52 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %51)
  store i32* %52, i32** %16, align 8
  %53 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %54 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = call i32 @ether_addr_copy(i32 %55, i32* %56)
  %58 = load i32, i32* %17, align 4
  %59 = call i32 @ieee80211_is_ctl(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %106, label %61

61:                                               ; preds = %5
  %62 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %63 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = call i64 @ieee80211_has_tods(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %61
  %69 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %70 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %69, i32 0, i32 3
  %71 = load i32*, i32** %70, align 8
  br label %86

72:                                               ; preds = %61
  %73 = load i32, i32* %17, align 4
  %74 = call i64 @ieee80211_has_fromds(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %78 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %77, i32 0, i32 2
  %79 = load i32*, i32** %78, align 8
  br label %84

80:                                               ; preds = %72
  %81 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %82 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  br label %84

84:                                               ; preds = %80, %76
  %85 = phi i32* [ %79, %76 ], [ %83, %80 ]
  br label %86

86:                                               ; preds = %84, %68
  %87 = phi i32* [ %71, %68 ], [ %85, %84 ]
  %88 = call i64 @ether_addr_equal(i32* %64, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %86
  %91 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %92 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %106, label %95

95:                                               ; preds = %90
  %96 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %97 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %95
  %101 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %102 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %103, 0
  %105 = xor i1 %104, true
  br label %106

106:                                              ; preds = %100, %95, %90, %86, %5
  %107 = phi i1 [ false, %95 ], [ false, %90 ], [ false, %86 ], [ false, %5 ], [ %105, %100 ]
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %118

111:                                              ; preds = %106
  %112 = load i32*, i32** %15, align 8
  %113 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %114 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = call i64 @ether_addr_equal(i32* %112, i32* %115)
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %111, %106
  %119 = phi i1 [ false, %106 ], [ %117, %111 ]
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %17, align 4
  %122 = call i64 @ieee80211_is_beacon(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 1, i32* %20, align 4
  br label %126

125:                                              ; preds = %118
  store i32 0, i32* %20, align 4
  br label %126

126:                                              ; preds = %125, %124
  %127 = load i32, i32* %20, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load i32, i32* %18, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %134 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %133)
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %132, %129, %126
  %141 = load i32, i32* %18, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %176

143:                                              ; preds = %140
  %144 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %145 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = call i64 @ieee80211_is_data_qos(i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %176

149:                                              ; preds = %143
  %150 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %151 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %150)
  %152 = call i32 @is_multicast_ether_addr(i32 %151)
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %176, label %154

154:                                              ; preds = %149
  %155 = load i32*, i32** %14, align 8
  %156 = bitcast i32* %155 to %struct.ieee80211_qos_hdr*
  store %struct.ieee80211_qos_hdr* %156, %struct.ieee80211_qos_hdr** %21, align 8
  %157 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %21, align 8
  %158 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @le16_to_cpu(i32 %159)
  %161 = and i32 %160, 15
  store i32 %161, i32* %22, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %175

164:                                              ; preds = %154
  %165 = load i32, i32* %22, align 4
  %166 = icmp ne i32 %165, 3
  br i1 %166, label %167, label %175

167:                                              ; preds = %164
  %168 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %169 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %168)
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %167, %164, %154
  br label %176

176:                                              ; preds = %175, %149, %143, %140
  %177 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %178 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %179 = load i32*, i32** %9, align 8
  %180 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %10, align 8
  %181 = load i32, i32* %18, align 4
  %182 = load i32, i32* %19, align 4
  %183 = load i32, i32* %20, align 4
  %184 = call i32 @_rtl92ee_query_rxphystatus(%struct.ieee80211_hw* %177, %struct.rtl_stats* %178, i32* %179, %struct.rx_fwinfo* %180, i32 %181, i32 %182, i32 %183)
  %185 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %186 = load i32*, i32** %14, align 8
  %187 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %188 = call i32 @rtl_process_phyinfo(%struct.ieee80211_hw* %185, i32* %186, %struct.rtl_stats* %187)
  ret void
}

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.TYPE_8__*) #1

declare dso_local %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.TYPE_8__*) #1

declare dso_local i32* @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i64 @ieee80211_has_tods(i32) #1

declare dso_local i64 @ieee80211_has_fromds(i32) #1

declare dso_local i64 @ieee80211_is_beacon(i32) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_rtl92ee_query_rxphystatus(%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo*, i32, i32, i32) #1

declare dso_local i32 @rtl_process_phyinfo(%struct.ieee80211_hw*, i32*, %struct.rtl_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
