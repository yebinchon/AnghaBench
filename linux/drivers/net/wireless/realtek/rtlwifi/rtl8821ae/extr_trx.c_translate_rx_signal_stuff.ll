; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_translate_rx_signal_stuff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_trx.c_translate_rx_signal_stuff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rtl_stats = type { i32, i32, i32, i32, i32, i32 }
%struct.rx_fwinfo_8821ae = type { i32 }
%struct.rtl_mac = type { i32* }
%struct.rtl_efuse = type { i32* }
%struct.ieee80211_hdr = type { i32, i32*, i32*, i32* }
%struct.ieee80211_qos_hdr = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.sk_buff*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8821ae*)* @translate_rx_signal_stuff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @translate_rx_signal_stuff(%struct.ieee80211_hw* %0, %struct.sk_buff* %1, %struct.rtl_stats* %2, i32* %3, %struct.rx_fwinfo_8821ae* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtl_stats*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rx_fwinfo_8821ae*, align 8
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
  store %struct.rx_fwinfo_8821ae* %4, %struct.rx_fwinfo_8821ae** %10, align 8
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
  store i32* %41, i32** %14, align 8
  %42 = load i32*, i32** %14, align 8
  %43 = bitcast i32* %42 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %43, %struct.ieee80211_hdr** %13, align 8
  %44 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %45 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %17, align 4
  %47 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %48 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %47, i32 0, i32 3
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %15, align 8
  %50 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %51 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %50)
  store i32* %51, i32** %16, align 8
  %52 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %53 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %52, i32 0, i32 5
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %16, align 8
  %56 = call i32 @ether_addr_copy(i32 %54, i32* %55)
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @ieee80211_is_ctl(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %105, label %60

60:                                               ; preds = %5
  %61 = load %struct.rtl_mac*, %struct.rtl_mac** %11, align 8
  %62 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %17, align 4
  %65 = call i64 @ieee80211_has_tods(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %60
  %68 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %69 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %68, i32 0, i32 3
  %70 = load i32*, i32** %69, align 8
  br label %85

71:                                               ; preds = %60
  %72 = load i32, i32* %17, align 4
  %73 = call i64 @ieee80211_has_fromds(i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 2
  %78 = load i32*, i32** %77, align 8
  br label %83

79:                                               ; preds = %71
  %80 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %81 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  br label %83

83:                                               ; preds = %79, %75
  %84 = phi i32* [ %78, %75 ], [ %82, %79 ]
  br label %85

85:                                               ; preds = %83, %67
  %86 = phi i32* [ %70, %67 ], [ %84, %83 ]
  %87 = call i64 @ether_addr_equal(i32* %63, i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %91 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %105, label %94

94:                                               ; preds = %89
  %95 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %96 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %105, label %99

99:                                               ; preds = %94
  %100 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %101 = getelementptr inbounds %struct.rtl_stats, %struct.rtl_stats* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %99, %94, %89, %85, %5
  %106 = phi i1 [ false, %94 ], [ false, %89 ], [ false, %85 ], [ false, %5 ], [ %104, %99 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %18, align 4
  %108 = load i32, i32* %18, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %105
  %111 = load i32*, i32** %15, align 8
  %112 = load %struct.rtl_efuse*, %struct.rtl_efuse** %12, align 8
  %113 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @ether_addr_equal(i32* %111, i32* %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %110, %105
  %118 = phi i1 [ false, %105 ], [ %116, %110 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %19, align 4
  %120 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %121 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i64 @ieee80211_is_beacon(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %117
  store i32 1, i32* %20, align 4
  br label %127

126:                                              ; preds = %117
  store i32 0, i32* %20, align 4
  br label %127

127:                                              ; preds = %126, %125
  %128 = load i32, i32* %20, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %141

130:                                              ; preds = %127
  %131 = load i32, i32* %18, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %130
  %134 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %135 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %134)
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %133, %130, %127
  %142 = load i32, i32* %18, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %177

144:                                              ; preds = %141
  %145 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %146 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i64 @ieee80211_is_data_qos(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %177

150:                                              ; preds = %144
  %151 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %13, align 8
  %152 = call i32 @ieee80211_get_DA(%struct.ieee80211_hdr* %151)
  %153 = call i32 @is_multicast_ether_addr(i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %177, label %155

155:                                              ; preds = %150
  %156 = load i32*, i32** %14, align 8
  %157 = bitcast i32* %156 to %struct.ieee80211_qos_hdr*
  store %struct.ieee80211_qos_hdr* %157, %struct.ieee80211_qos_hdr** %21, align 8
  %158 = load %struct.ieee80211_qos_hdr*, %struct.ieee80211_qos_hdr** %21, align 8
  %159 = getelementptr inbounds %struct.ieee80211_qos_hdr, %struct.ieee80211_qos_hdr* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @le16_to_cpu(i32 %160)
  %162 = and i32 %161, 15
  store i32 %162, i32* %22, align 4
  %163 = load i32, i32* %22, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %176

165:                                              ; preds = %155
  %166 = load i32, i32* %22, align 4
  %167 = icmp ne i32 %166, 3
  br i1 %167, label %168, label %176

168:                                              ; preds = %165
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %170 = call %struct.TYPE_8__* @rtl_priv(%struct.ieee80211_hw* %169)
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %173, align 4
  br label %176

176:                                              ; preds = %168, %165, %155
  br label %177

177:                                              ; preds = %176, %150, %144, %141
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %179 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %180 = load i32*, i32** %9, align 8
  %181 = load %struct.rx_fwinfo_8821ae*, %struct.rx_fwinfo_8821ae** %10, align 8
  %182 = load i32, i32* %18, align 4
  %183 = load i32, i32* %19, align 4
  %184 = load i32, i32* %20, align 4
  %185 = call i32 @query_rxphystatus(%struct.ieee80211_hw* %178, %struct.rtl_stats* %179, i32* %180, %struct.rx_fwinfo_8821ae* %181, i32 %182, i32 %183, i32 %184)
  %186 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = load %struct.rtl_stats*, %struct.rtl_stats** %8, align 8
  %189 = call i32 @rtl_process_phyinfo(%struct.ieee80211_hw* %186, i32* %187, %struct.rtl_stats* %188)
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

declare dso_local i32 @query_rxphystatus(%struct.ieee80211_hw*, %struct.rtl_stats*, i32*, %struct.rx_fwinfo_8821ae*, i32, i32, i32) #1

declare dso_local i32 @rtl_process_phyinfo(%struct.ieee80211_hw*, i32*, %struct.rtl_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
