; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_validate_wowlan_pattern.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_main.c_wl1271_validate_wowlan_pattern.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_pkt_pattern = type { i32, i64 }

@.str = private unnamed_addr constant [26 x i8] c"No mask in WoWLAN pattern\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@WL1271_RX_FILTER_ETH_HEADER_SIZE = common dso_local global i32 0, align 4
@RX_FILTER_FIELD_OVERHEAD = common dso_local global i64 0, align 8
@WL1271_RX_FILTER_MAX_FIELDS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"RX Filter too complex. Too many segments\00", align 1
@WL1271_RX_FILTER_MAX_FIELDS_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"RX filter pattern is too big\00", align 1
@E2BIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cfg80211_pkt_pattern*)* @wl1271_validate_wowlan_pattern to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1271_validate_wowlan_pattern(%struct.cfg80211_pkt_pattern* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cfg80211_pkt_pattern*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cfg80211_pkt_pattern* %0, %struct.cfg80211_pkt_pattern** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %9 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %3, align 8
  %10 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %1
  %14 = call i32 @wl1271_warning(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %106

17:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %72, %17
  %19 = load i32, i32* %7, align 4
  %20 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %3, align 8
  %21 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %75

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.cfg80211_pkt_pattern*, %struct.cfg80211_pkt_pattern** %3, align 8
  %27 = getelementptr inbounds %struct.cfg80211_pkt_pattern, %struct.cfg80211_pkt_pattern* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i64*
  %30 = call i64 @test_bit(i32 %25, i64* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %56

32:                                               ; preds = %24
  %33 = load i32, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i32 1, i32* %5, align 4
  store i32 1, i32* %8, align 4
  br label %55

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @WL1271_RX_FILTER_ETH_HEADER_SIZE, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @RX_FILTER_FIELD_OVERHEAD, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %54

51:                                               ; preds = %36
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %51, %40
  br label %55

55:                                               ; preds = %54, %35
  br label %71

56:                                               ; preds = %24
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* @RX_FILTER_FIELD_OVERHEAD, align 8
  %63 = add nsw i64 %61, %62
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = add nsw i64 %65, %63
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %70

70:                                               ; preds = %59, %56
  br label %71

71:                                               ; preds = %70, %55
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %18

75:                                               ; preds = %18
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %75
  %79 = load i32, i32* %8, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* @RX_FILTER_FIELD_OVERHEAD, align 8
  %82 = add nsw i64 %80, %81
  %83 = load i32, i32* %6, align 4
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %84, %82
  %86 = trunc i64 %85 to i32
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %4, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %78, %75
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* @WL1271_RX_FILTER_MAX_FIELDS, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %89
  %94 = call i32 @wl1271_warning(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %2, align 4
  br label %106

97:                                               ; preds = %89
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* @WL1271_RX_FILTER_MAX_FIELDS_SIZE, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %97
  %102 = call i32 @wl1271_warning(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %103 = load i32, i32* @E2BIG, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %2, align 4
  br label %106

105:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %105, %101, %93, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @wl1271_warning(i8*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
