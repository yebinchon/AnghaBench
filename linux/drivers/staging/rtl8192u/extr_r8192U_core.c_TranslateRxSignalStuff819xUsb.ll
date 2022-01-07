; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_TranslateRxSignalStuff819xUsb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_core.c_TranslateRxSignalStuff819xUsb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_stats = type { i32, i32, i32 }
%struct.sk_buff = type { i64, i64 }
%struct.rx_drvinfo_819x_usb = type { i32 }
%struct.rtl8192_rx_info = type { %struct.net_device* }
%struct.net_device = type { i32* }
%struct.r8192_priv = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.rtl_80211_hdr_3addr = type { i32*, i32*, i32*, i32 }

@TranslateRxSignalStuff819xUsb.previous_stats = internal global %struct.ieee80211_rx_stats zeroinitializer, align 4
@IEEE80211_FTYPE_CTL = common dso_local global i64 0, align 8
@IEEE80211_FCTL_TODS = common dso_local global i64 0, align 8
@IEEE80211_FCTL_FROMDS = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BEACON = common dso_local global i64 0, align 8
@IEEE80211_STYPE_BLOCKACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ieee80211_rx_stats*, %struct.rx_drvinfo_819x_usb*)* @TranslateRxSignalStuff819xUsb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TranslateRxSignalStuff819xUsb(%struct.sk_buff* %0, %struct.ieee80211_rx_stats* %1, %struct.rx_drvinfo_819x_usb* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ieee80211_rx_stats*, align 8
  %6 = alloca %struct.rx_drvinfo_819x_usb*, align 8
  %7 = alloca %struct.rtl8192_rx_info*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.r8192_priv*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rtl_80211_hdr_3addr*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.ieee80211_rx_stats* %1, %struct.ieee80211_rx_stats** %5, align 8
  store %struct.rx_drvinfo_819x_usb* %2, %struct.rx_drvinfo_819x_usb** %6, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.rtl8192_rx_info*
  store %struct.rtl8192_rx_info* %22, %struct.rtl8192_rx_info** %7, align 8
  %23 = load %struct.rtl8192_rx_info*, %struct.rtl8192_rx_info** %7, align 8
  %24 = getelementptr inbounds %struct.rtl8192_rx_info, %struct.rtl8192_rx_info* %23, i32 0, i32 0
  %25 = load %struct.net_device*, %struct.net_device** %24, align 8
  store %struct.net_device* %25, %struct.net_device** %8, align 8
  %26 = load %struct.net_device*, %struct.net_device** %8, align 8
  %27 = call i64 @ieee80211_priv(%struct.net_device* %26)
  %28 = inttoptr i64 %27 to %struct.r8192_priv*
  store %struct.r8192_priv* %28, %struct.r8192_priv** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %17, align 8
  %33 = load i32*, i32** %17, align 8
  %34 = bitcast i32* %33 to %struct.rtl_80211_hdr_3addr*
  store %struct.rtl_80211_hdr_3addr* %34, %struct.rtl_80211_hdr_3addr** %14, align 8
  %35 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %14, align 8
  %36 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i64 @le16_to_cpu(i32 %37)
  store i64 %38, i64* %15, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i64 @WLAN_FC_GET_TYPE(i64 %39)
  store i64 %40, i64* %16, align 8
  %41 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %14, align 8
  %42 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %18, align 8
  %44 = load i64, i64* %16, align 8
  %45 = load i64, i64* @IEEE80211_FTYPE_CTL, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %97

47:                                               ; preds = %3
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* @IEEE80211_FCTL_TODS, align 8
  %56 = and i64 %54, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %47
  %59 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %14, align 8
  %60 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  br label %77

62:                                               ; preds = %47
  %63 = load i64, i64* %15, align 8
  %64 = load i64, i64* @IEEE80211_FCTL_FROMDS, align 8
  %65 = and i64 %63, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %14, align 8
  %69 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  br label %75

71:                                               ; preds = %62
  %72 = load %struct.rtl_80211_hdr_3addr*, %struct.rtl_80211_hdr_3addr** %14, align 8
  %73 = getelementptr inbounds %struct.rtl_80211_hdr_3addr, %struct.rtl_80211_hdr_3addr* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i32* [ %70, %67 ], [ %74, %71 ]
  br label %77

77:                                               ; preds = %75, %58
  %78 = phi i32* [ %61, %58 ], [ %76, %75 ]
  %79 = call i32 @ether_addr_equal(i32* %53, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %97

81:                                               ; preds = %77
  %82 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %97, label %86

86:                                               ; preds = %81
  %87 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %88 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %86
  %92 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %93 = getelementptr inbounds %struct.ieee80211_rx_stats, %struct.ieee80211_rx_stats* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp ne i32 %94, 0
  %96 = xor i1 %95, true
  br label %97

97:                                               ; preds = %91, %86, %81, %77, %3
  %98 = phi i1 [ false, %86 ], [ false, %81 ], [ false, %77 ], [ false, %3 ], [ %96, %91 ]
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %10, align 4
  %100 = load i32, i32* %10, align 4
  %101 = load i32*, i32** %18, align 8
  %102 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %103 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %102, i32 0, i32 1
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32*, i32** %107, align 8
  %109 = call i32 @ether_addr_equal(i32* %101, i32* %108)
  %110 = and i32 %100, %109
  store i32 %110, i32* %11, align 4
  %111 = load i64, i64* %15, align 8
  %112 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %111)
  %113 = load i64, i64* @IEEE80211_STYPE_BEACON, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %116

115:                                              ; preds = %97
  store i32 1, i32* %12, align 4
  br label %116

116:                                              ; preds = %115, %97
  %117 = load i64, i64* %15, align 8
  %118 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %117)
  %119 = load i64, i64* @IEEE80211_STYPE_BLOCKACK, align 8
  %120 = icmp eq i64 %118, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %116
  %122 = load i32*, i32** %18, align 8
  %123 = load %struct.net_device*, %struct.net_device** %8, align 8
  %124 = getelementptr inbounds %struct.net_device, %struct.net_device* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @ether_addr_equal(i32* %122, i32* %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  store i32 1, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %121
  br label %130

130:                                              ; preds = %129, %116
  %131 = load i32, i32* %10, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %136, align 4
  br label %139

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %11, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %144 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %142, %139
  %149 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %150 = load i32*, i32** %17, align 8
  %151 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %152 = call i32 @rtl8192_process_phyinfo(%struct.r8192_priv* %149, i32* %150, %struct.ieee80211_rx_stats* @TranslateRxSignalStuff819xUsb.previous_stats, %struct.ieee80211_rx_stats* %151)
  %153 = load %struct.r8192_priv*, %struct.r8192_priv** %9, align 8
  %154 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %155 = load %struct.rx_drvinfo_819x_usb*, %struct.rx_drvinfo_819x_usb** %6, align 8
  %156 = load i32, i32* %10, align 4
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @rtl8192_query_rxphystatus(%struct.r8192_priv* %153, %struct.ieee80211_rx_stats* %154, %struct.rx_drvinfo_819x_usb* %155, %struct.ieee80211_rx_stats* @TranslateRxSignalStuff819xUsb.previous_stats, i32 %156, i32 %157, i32 %158, i32 %159)
  %161 = load %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats** %5, align 8
  %162 = call i32 @rtl8192_record_rxdesc_forlateruse(%struct.ieee80211_rx_stats* %161, %struct.ieee80211_rx_stats* @TranslateRxSignalStuff819xUsb.previous_stats)
  ret void
}

declare dso_local i64 @ieee80211_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i32 @ether_addr_equal(i32*, i32*) #1

declare dso_local i64 @WLAN_FC_GET_FRAMETYPE(i64) #1

declare dso_local i32 @rtl8192_process_phyinfo(%struct.r8192_priv*, i32*, %struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*) #1

declare dso_local i32 @rtl8192_query_rxphystatus(%struct.r8192_priv*, %struct.ieee80211_rx_stats*, %struct.rx_drvinfo_819x_usb*, %struct.ieee80211_rx_stats*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl8192_record_rxdesc_forlateruse(%struct.ieee80211_rx_stats*, %struct.ieee80211_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
