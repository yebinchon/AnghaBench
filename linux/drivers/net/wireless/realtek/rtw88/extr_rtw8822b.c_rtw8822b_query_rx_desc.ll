; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_query_rx_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_rtw8822b.c_rtw8822b_query_rx_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_rx_pkt_stat = type { i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.ieee80211_rx_status = type { i32 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_rx_status*)* @rtw8822b_query_rx_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw8822b_query_rx_desc(%struct.rtw_dev* %0, i32* %1, %struct.rtw_rx_pkt_stat* %2, %struct.ieee80211_rx_status* %3) #0 {
  %5 = alloca %struct.rtw_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtw_rx_pkt_stat*, align 8
  %8 = alloca %struct.ieee80211_rx_status*, align 8
  %9 = alloca %struct.ieee80211_hdr*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.rtw_rx_pkt_stat* %2, %struct.rtw_rx_pkt_stat** %7, align 8
  store %struct.ieee80211_rx_status* %3, %struct.ieee80211_rx_status** %8, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %17 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %18 = call i32 @memset(%struct.rtw_rx_pkt_stat* %17, i32 0, i32 56)
  %19 = load i32*, i32** %6, align 8
  %20 = call i32 @GET_RX_DESC_PHYST(i32* %19)
  %21 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %22 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 4
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @GET_RX_DESC_ICV_ERR(i32* %23)
  %25 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %26 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %25, i32 0, i32 11
  store i32 %24, i32* %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i32 @GET_RX_DESC_CRC32(i32* %27)
  %29 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %30 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %29, i32 0, i32 10
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %6, align 8
  %32 = call i32 @GET_RX_DESC_SWDEC(i32* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %37 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i64 @GET_RX_DESC_C2H(i32* %38)
  %40 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %41 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %40, i32 0, i32 4
  store i64 %39, i64* %41, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @GET_RX_DESC_PKT_LEN(i32* %42)
  %44 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %45 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %44, i32 0, i32 9
  store i32 %43, i32* %45, align 8
  %46 = load i32*, i32** %6, align 8
  %47 = call i32 @GET_RX_DESC_DRV_INFO_SIZE(i32* %46)
  %48 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %49 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @GET_RX_DESC_SHIFT(i32* %50)
  %52 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %53 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @GET_RX_DESC_RX_RATE(i32* %54)
  %56 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %57 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %56, i32 0, i32 8
  store i32 %55, i32* %57, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = call i32 @GET_RX_DESC_MACID(i32* %58)
  %60 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %61 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %60, i32 0, i32 7
  store i32 %59, i32* %61, align 8
  %62 = load i32*, i32** %6, align 8
  %63 = call i32 @GET_RX_DESC_PPDU_CNT(i32* %62)
  %64 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %65 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %64, i32 0, i32 6
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %6, align 8
  %67 = call i32 @GET_RX_DESC_TSFL(i32* %66)
  %68 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %69 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %71 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 8
  store i32 %73, i32* %71, align 4
  %74 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %75 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %4
  br label %120

79:                                               ; preds = %4
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %85 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  %89 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %90 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %88, i64 %92
  %94 = bitcast i32* %93 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %94, %struct.ieee80211_hdr** %9, align 8
  %95 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %96 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %79
  %100 = load i32*, i32** %6, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %105 = getelementptr inbounds %struct.rtw_rx_pkt_stat, %struct.rtw_rx_pkt_stat* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  store i32* %108, i32** %11, align 8
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %110 = load i32*, i32** %11, align 8
  %111 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %112 = call i32 @query_phy_status(%struct.rtw_dev* %109, i32* %110, %struct.rtw_rx_pkt_stat* %111)
  br label %113

113:                                              ; preds = %99, %79
  %114 = load %struct.rtw_dev*, %struct.rtw_dev** %5, align 8
  %115 = load %struct.rtw_rx_pkt_stat*, %struct.rtw_rx_pkt_stat** %7, align 8
  %116 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %9, align 8
  %117 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %8, align 8
  %118 = load i32*, i32** %11, align 8
  %119 = call i32 @rtw_rx_fill_rx_status(%struct.rtw_dev* %114, %struct.rtw_rx_pkt_stat* %115, %struct.ieee80211_hdr* %116, %struct.ieee80211_rx_status* %117, i32* %118)
  br label %120

120:                                              ; preds = %113, %78
  ret void
}

declare dso_local i32 @memset(%struct.rtw_rx_pkt_stat*, i32, i32) #1

declare dso_local i32 @GET_RX_DESC_PHYST(i32*) #1

declare dso_local i32 @GET_RX_DESC_ICV_ERR(i32*) #1

declare dso_local i32 @GET_RX_DESC_CRC32(i32*) #1

declare dso_local i32 @GET_RX_DESC_SWDEC(i32*) #1

declare dso_local i64 @GET_RX_DESC_C2H(i32*) #1

declare dso_local i32 @GET_RX_DESC_PKT_LEN(i32*) #1

declare dso_local i32 @GET_RX_DESC_DRV_INFO_SIZE(i32*) #1

declare dso_local i32 @GET_RX_DESC_SHIFT(i32*) #1

declare dso_local i32 @GET_RX_DESC_RX_RATE(i32*) #1

declare dso_local i32 @GET_RX_DESC_MACID(i32*) #1

declare dso_local i32 @GET_RX_DESC_PPDU_CNT(i32*) #1

declare dso_local i32 @GET_RX_DESC_TSFL(i32*) #1

declare dso_local i32 @query_phy_status(%struct.rtw_dev*, i32*, %struct.rtw_rx_pkt_stat*) #1

declare dso_local i32 @rtw_rx_fill_rx_status(%struct.rtw_dev*, %struct.rtw_rx_pkt_stat*, %struct.ieee80211_hdr*, %struct.ieee80211_rx_status*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
