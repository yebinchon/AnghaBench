; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_translate_rx_signal_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/rtl8192e/extr_r8192E_dev.c__rtl92e_translate_rx_signal_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_rx_stats = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rx_desc = type { i32 }
%struct.rx_fwinfo = type { i32 }
%struct.r8192_priv = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.rtllib_hdr_3addr = type { i32*, i32*, i32*, i32 }

@_rtl92e_translate_rx_signal_stats.previous_stats = internal global %struct.rtllib_rx_stats zeroinitializer, align 4
@RTLLIB_FTYPE_CTL = common dso_local global i64 0, align 8
@RTLLIB_FCTL_TODS = common dso_local global i64 0, align 8
@RTLLIB_FCTL_FROMDS = common dso_local global i64 0, align 8
@RTLLIB_STYPE_BEACON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.sk_buff*, %struct.rtllib_rx_stats*, %struct.rx_desc*, %struct.rx_fwinfo*)* @_rtl92e_translate_rx_signal_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_rtl92e_translate_rx_signal_stats(%struct.net_device* %0, %struct.sk_buff* %1, %struct.rtllib_rx_stats* %2, %struct.rx_desc* %3, %struct.rx_fwinfo* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.rtllib_rx_stats*, align 8
  %9 = alloca %struct.rx_desc*, align 8
  %10 = alloca %struct.rx_fwinfo*, align 8
  %11 = alloca %struct.r8192_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtllib_hdr_3addr*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.rtllib_rx_stats* %2, %struct.rtllib_rx_stats** %8, align 8
  store %struct.rx_desc* %3, %struct.rx_desc** %9, align 8
  store %struct.rx_fwinfo* %4, %struct.rx_fwinfo** %10, align 8
  %21 = load %struct.net_device*, %struct.net_device** %6, align 8
  %22 = call i64 @rtllib_priv(%struct.net_device* %21)
  %23 = inttoptr i64 %22 to %struct.r8192_priv*
  store %struct.r8192_priv* %23, %struct.r8192_priv** %11, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %28 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %26, i64 %30
  %32 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %33 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %31, i64 %35
  store i32* %36, i32** %19, align 8
  %37 = load i32*, i32** %19, align 8
  %38 = bitcast i32* %37 to %struct.rtllib_hdr_3addr*
  store %struct.rtllib_hdr_3addr* %38, %struct.rtllib_hdr_3addr** %15, align 8
  %39 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %15, align 8
  %40 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @le16_to_cpu(i32 %41)
  store i64 %42, i64* %17, align 8
  %43 = load i64, i64* %17, align 8
  %44 = call i64 @WLAN_FC_GET_TYPE(i64 %43)
  store i64 %44, i64* %18, align 8
  %45 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %15, align 8
  %46 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %20, align 8
  %48 = load i64, i64* %18, align 8
  %49 = load i64, i64* @RTLLIB_FTYPE_CTL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %101

51:                                               ; preds = %5
  %52 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %53 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %52, i32 0, i32 1
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* %17, align 8
  %59 = load i64, i64* @RTLLIB_FCTL_TODS, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %51
  %63 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %15, align 8
  %64 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  br label %81

66:                                               ; preds = %51
  %67 = load i64, i64* %17, align 8
  %68 = load i64, i64* @RTLLIB_FCTL_FROMDS, align 8
  %69 = and i64 %67, %68
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %15, align 8
  %73 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %72, i32 0, i32 1
  %74 = load i32*, i32** %73, align 8
  br label %79

75:                                               ; preds = %66
  %76 = load %struct.rtllib_hdr_3addr*, %struct.rtllib_hdr_3addr** %15, align 8
  %77 = getelementptr inbounds %struct.rtllib_hdr_3addr, %struct.rtllib_hdr_3addr* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi i32* [ %74, %71 ], [ %78, %75 ]
  br label %81

81:                                               ; preds = %79, %62
  %82 = phi i32* [ %65, %62 ], [ %80, %79 ]
  %83 = call i64 @ether_addr_equal(i32* %57, i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %87 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %101, label %90

90:                                               ; preds = %85
  %91 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %92 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %101, label %95

95:                                               ; preds = %90
  %96 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %97 = getelementptr inbounds %struct.rtllib_rx_stats, %struct.rtllib_rx_stats* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  br label %101

101:                                              ; preds = %95, %90, %85, %81, %5
  %102 = phi i1 [ false, %90 ], [ false, %85 ], [ false, %81 ], [ false, %5 ], [ %100, %95 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %117

106:                                              ; preds = %101
  %107 = load i32*, i32** %20, align 8
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 1
  %110 = load %struct.TYPE_7__*, %struct.TYPE_7__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = call i64 @ether_addr_equal(i32* %107, i32* %114)
  %116 = icmp ne i64 %115, 0
  br label %117

117:                                              ; preds = %106, %101
  %118 = phi i1 [ false, %101 ], [ %116, %106 ]
  %119 = zext i1 %118 to i32
  store i32 %119, i32* %13, align 4
  %120 = load i64, i64* %17, align 8
  %121 = call i64 @WLAN_FC_GET_FRAMETYPE(i64 %120)
  %122 = load i64, i64* @RTLLIB_STYPE_BEACON, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %117
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %124, %117
  %126 = load i32, i32* %12, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

128:                                              ; preds = %125
  %129 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %130 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %131, align 4
  br label %134

134:                                              ; preds = %128, %125
  %135 = load i32, i32* %13, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %143

137:                                              ; preds = %134
  %138 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %139 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %137, %134
  %144 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %145 = load i32*, i32** %19, align 8
  %146 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %147 = call i32 @_rtl92e_process_phyinfo(%struct.r8192_priv* %144, i32* %145, %struct.rtllib_rx_stats* @_rtl92e_translate_rx_signal_stats.previous_stats, %struct.rtllib_rx_stats* %146)
  %148 = load %struct.r8192_priv*, %struct.r8192_priv** %11, align 8
  %149 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %150 = load %struct.rx_desc*, %struct.rx_desc** %9, align 8
  %151 = load %struct.rx_fwinfo*, %struct.rx_fwinfo** %10, align 8
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %14, align 4
  %155 = load i32, i32* %16, align 4
  %156 = call i32 @_rtl92e_query_rxphystatus(%struct.r8192_priv* %148, %struct.rtllib_rx_stats* %149, %struct.rx_desc* %150, %struct.rx_fwinfo* %151, %struct.rtllib_rx_stats* @_rtl92e_translate_rx_signal_stats.previous_stats, i32 %152, i32 %153, i32 %154, i32 %155)
  %157 = load %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats** %8, align 8
  %158 = call i32 @rtl92e_copy_mpdu_stats(%struct.rtllib_rx_stats* %157, %struct.rtllib_rx_stats* @_rtl92e_translate_rx_signal_stats.previous_stats)
  ret void
}

declare dso_local i64 @rtllib_priv(%struct.net_device*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @WLAN_FC_GET_TYPE(i64) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i64 @WLAN_FC_GET_FRAMETYPE(i64) #1

declare dso_local i32 @_rtl92e_process_phyinfo(%struct.r8192_priv*, i32*, %struct.rtllib_rx_stats*, %struct.rtllib_rx_stats*) #1

declare dso_local i32 @_rtl92e_query_rxphystatus(%struct.r8192_priv*, %struct.rtllib_rx_stats*, %struct.rx_desc*, %struct.rx_fwinfo*, %struct.rtllib_rx_stats*, i32, i32, i32, i32) #1

declare dso_local i32 @rtl92e_copy_mpdu_stats(%struct.rtllib_rx_stats*, %struct.rtllib_rx_stats*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
