; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_configure_wowlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_configure_wowlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.cfg80211_wowlan = type { i32, %struct.cfg80211_pkt_pattern*, i64 }
%struct.cfg80211_pkt_pattern = type { i32 }
%struct.wl12xx_rx_filter = type { i32 }

@FILTER_SIGNAL = common dso_local global i32 0, align 4
@WL1271_MAX_RX_FILTERS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Bad wowlan pattern %d\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"Failed to create an RX filter from wowlan pattern %d\00", align 1
@FILTER_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wl1271*, %struct.cfg80211_wowlan*)* @wl1271_configure_wowlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_configure_wowlan(%struct.wl1271* %0, %struct.cfg80211_wowlan* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1271*, align 8
  %5 = alloca %struct.cfg80211_wowlan*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cfg80211_pkt_pattern*, align 8
  %9 = alloca %struct.wl12xx_rx_filter*, align 8
  store %struct.wl1271* %0, %struct.wl1271** %4, align 8
  store %struct.cfg80211_wowlan* %1, %struct.cfg80211_wowlan** %5, align 8
  %10 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %11 = icmp ne %struct.cfg80211_wowlan* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %2
  %13 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %14 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %12
  %18 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %19 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %36, label %22

22:                                               ; preds = %17, %12, %2
  %23 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %24 = load i32, i32* @FILTER_SIGNAL, align 4
  %25 = call i32 @wl1271_acx_default_rx_filter_enable(%struct.wl1271* %23, i32 0, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  br label %125

29:                                               ; preds = %22
  %30 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %31 = call i32 @wl1271_rx_filter_clear_all(%struct.wl1271* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %125

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %127

36:                                               ; preds = %17
  %37 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %38 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @WL1271_MAX_RX_FILTERS, align 4
  %41 = icmp sgt i32 %39, %40
  %42 = zext i1 %41 to i32
  %43 = call i64 @WARN_ON(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %36
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %127

48:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %70, %48
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %52 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %49
  %56 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %57 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %56, i32 0, i32 1
  %58 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %58, i64 %60
  %62 = call i32 @wl1271_validate_wowlan_pattern(%struct.cfg80211_pkt_pattern* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %55
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @wl1271_warning(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %66)
  %68 = load i32, i32* %7, align 4
  store i32 %68, i32* %3, align 4
  br label %127

69:                                               ; preds = %55
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %6, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %49

73:                                               ; preds = %49
  %74 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %75 = load i32, i32* @FILTER_SIGNAL, align 4
  %76 = call i32 @wl1271_acx_default_rx_filter_enable(%struct.wl1271* %74, i32 0, i32 %75)
  store i32 %76, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %125

80:                                               ; preds = %73
  %81 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %82 = call i32 @wl1271_rx_filter_clear_all(%struct.wl1271* %81)
  store i32 %82, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %80
  br label %125

86:                                               ; preds = %80
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %118, %86
  %88 = load i32, i32* %6, align 4
  %89 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %90 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %121

93:                                               ; preds = %87
  store %struct.wl12xx_rx_filter* null, %struct.wl12xx_rx_filter** %9, align 8
  %94 = load %struct.cfg80211_wowlan*, %struct.cfg80211_wowlan** %5, align 8
  %95 = getelementptr inbounds %struct.cfg80211_wowlan, %struct.cfg80211_wowlan* %94, i32 0, i32 1
  %96 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %96, i64 %98
  store %struct.cfg80211_pkt_pattern* %99, %struct.cfg80211_pkt_pattern** %8, align 8
  %100 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %8, align 8
  %101 = call i32 @wl1271_convert_wowlan_pattern_to_rx_filter(%struct.cfg80211_pkt_pattern* %100, %struct.wl12xx_rx_filter** %9)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load i32, i32* %6, align 4
  %106 = call i32 @wl1271_warning(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %125

107:                                              ; preds = %93
  %108 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %111 = call i32 @wl1271_rx_filter_enable(%struct.wl1271* %108, i32 %109, i32 1, %struct.wl12xx_rx_filter* %110)
  store i32 %111, i32* %7, align 4
  %112 = load %struct.wl12xx_rx_filter*, %struct.wl12xx_rx_filter** %9, align 8
  %113 = call i32 @wl1271_rx_filter_free(%struct.wl12xx_rx_filter* %112)
  %114 = load i32, i32* %7, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %107
  br label %125

117:                                              ; preds = %107
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %87

121:                                              ; preds = %87
  %122 = load %struct.wl1271*, %struct.wl1271** %4, align 8
  %123 = load i32, i32* @FILTER_DROP, align 4
  %124 = call i32 @wl1271_acx_default_rx_filter_enable(%struct.wl1271* %122, i32 1, i32 %123)
  store i32 %124, i32* %7, align 4
  br label %125

125:                                              ; preds = %121, %116, %104, %85, %79, %34, %28
  %126 = load i32, i32* %7, align 4
  store i32 %126, i32* %3, align 4
  br label %127

127:                                              ; preds = %125, %65, %45, %35
  %128 = load i32, i32* %3, align 4
  ret i32 %128
}

declare dso_local i32 @wl1271_acx_default_rx_filter_enable(%struct.wl1271*, i32, i32) #1

declare dso_local i32 @wl1271_rx_filter_clear_all(%struct.wl1271*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @wl1271_validate_wowlan_pattern(%struct.cfg80211_pkt_pattern*) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @wl1271_convert_wowlan_pattern_to_rx_filter(%struct.cfg80211_pkt_pattern*, %struct.wl12xx_rx_filter**) #1

declare dso_local i32 @wl1271_rx_filter_enable(%struct.wl1271*, i32, i32, %struct.wl12xx_rx_filter*) #1

declare dso_local i32 @wl1271_rx_filter_free(%struct.wl12xx_rx_filter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
