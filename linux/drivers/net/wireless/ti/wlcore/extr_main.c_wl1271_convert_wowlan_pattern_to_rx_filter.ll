; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_convert_wowlan_pattern_to_rx_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_convert_wowlan_pattern_to_rx_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_pkt_pattern = type { i32, i32*, i64 }
%struct.wl12xx_rx_filter = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Failed to alloc rx filter\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@WL1271_RX_FILTER_ETH_HEADER_SIZE = common dso_local global i32 0, align 4
@WL1271_RX_FILTER_FLAG_ETHERNET_HEADER = common dso_local global i32 0, align 4
@WL1271_RX_FILTER_FLAG_IP_HEADER = common dso_local global i32 0, align 4
@FILTER_SIGNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_pkt_pattern*, %struct.wl12xx_rx_filter**)* @wl1271_convert_wowlan_pattern_to_rx_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_convert_wowlan_pattern_to_rx_filter(%struct.cfg80211_pkt_pattern* %0, %struct.wl12xx_rx_filter** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cfg80211_pkt_pattern*, align 8
  %5 = alloca %struct.wl12xx_rx_filter**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl12xx_rx_filter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cfg80211_pkt_pattern* %0, %struct.cfg80211_pkt_pattern** %4, align 8
  store %struct.wl12xx_rx_filter** %1, %struct.wl12xx_rx_filter*** %5, align 8
  store i32 0, i32* %8, align 4
  %13 = call %struct.wl12xx_rx_filter* (...) @wl1271_rx_filter_alloc()
  store %struct.wl12xx_rx_filter* %13, %struct.wl12xx_rx_filter** %9, align 8
  %14 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %15 = icmp ne %struct.wl12xx_rx_filter* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = call i32 @wl1271_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %8, align 4
  br label %106

20:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %21

21:                                               ; preds = %98, %35, %20
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %4, align 8
  %24 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %22, %25
  br i1 %26, label %27, label %100

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %4, align 8
  %30 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i64*
  %33 = call i32 @test_bit(i32 %28, i64* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %6, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %6, align 4
  br label %21

38:                                               ; preds = %27
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %65, %38
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %4, align 8
  %43 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %68

46:                                               ; preds = %40
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %4, align 8
  %49 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i64*
  %52 = call i32 @test_bit(i32 %47, i64* %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %46
  br label %68

55:                                               ; preds = %46
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @WL1271_RX_FILTER_ETH_HEADER_SIZE, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %55
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @WL1271_RX_FILTER_ETH_HEADER_SIZE, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59
  br label %68

64:                                               ; preds = %59, %55
  br label %65

65:                                               ; preds = %64
  %66 = load i32, i32* %7, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %7, align 4
  br label %40

68:                                               ; preds = %63, %54, %40
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @WL1271_RX_FILTER_ETH_HEADER_SIZE, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %6, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @WL1271_RX_FILTER_FLAG_ETHERNET_HEADER, align 4
  store i32 %74, i32* %11, align 4
  br label %80

75:                                               ; preds = %68
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @WL1271_RX_FILTER_ETH_HEADER_SIZE, align 4
  %78 = sub nsw i32 %76, %77
  store i32 %78, i32* %10, align 4
  %79 = load i32, i32* @WL1271_RX_FILTER_FLAG_IP_HEADER, align 4
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %75, %72
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %81, %82
  store i32 %83, i32* %12, align 4
  %84 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %85 = load i32, i32* %10, align 4
  %86 = load i32, i32* %11, align 4
  %87 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %4, align 8
  %88 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @wl1271_rx_filter_alloc_field(%struct.wl12xx_rx_filter* %84, i32 %85, i32 %86, i32* %92, i32 %93)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %80
  br label %106

98:                                               ; preds = %80
  %99 = load i32, i32* %7, align 4
  store i32 %99, i32* %6, align 4
  br label %21

100:                                              ; preds = %21
  %101 = load i32, i32* @FILTER_SIGNAL, align 4
  %102 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %103 = getelementptr inbounds %struct.wl12xx_rx_filter, %struct.wl12xx_rx_filter* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  %104 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %105 = load %struct.wl12xx_rx_filter**, %struct.wl12xx_rx_filter*** %5, align 8
  store %struct.wl12xx_rx_filter* %104, %struct.wl12xx_rx_filter** %105, align 8
  store i32 0, i32* %3, align 4
  br label %111

106:                                              ; preds = %97, %16
  %107 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %108 = call i32 @wl1271_rx_filter_free(%struct.wl12xx_rx_filter* %107)
  %109 = load %struct.wl12xx_rx_filter**, %struct.wl12xx_rx_filter*** %5, align 8
  store %struct.wl12xx_rx_filter* null, %struct.wl12xx_rx_filter** %109, align 8
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %111

111:                                              ; preds = %106, %100
  %112 = load i32, i32* %3, align 4
  ret i32 %112
}

declare dso_local %struct.wl12xx_rx_filter* @wl1271_rx_filter_alloc(...) #1

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @wl1271_rx_filter_alloc_field(%struct.wl12xx_rx_filter*, i32, i32, i32*, i32) #1

declare dso_local i32 @wl1271_rx_filter_free(%struct.wl12xx_rx_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
