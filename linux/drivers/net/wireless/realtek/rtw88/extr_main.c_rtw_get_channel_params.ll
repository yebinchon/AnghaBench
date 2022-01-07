; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_get_channel_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_get_channel_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_chan_def = type { i32, i32, %struct.ieee80211_channel* }
%struct.ieee80211_channel = type { i32, i32 }
%struct.rtw_channel_params = type { i32*, i32, i32, i32 }

@RTW_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_40 = common dso_local global i64 0, align 8
@RTW_CHANNEL_WIDTH_80 = common dso_local global i32 0, align 4
@RTW_MAX_CHANNEL_WIDTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_get_channel_params(%struct.cfg80211_chan_def* %0, %struct.rtw_channel_params* %1) #0 {
  %3 = alloca %struct.cfg80211_chan_def*, align 8
  %4 = alloca %struct.rtw_channel_params*, align 8
  %5 = alloca %struct.ieee80211_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cfg80211_chan_def* %0, %struct.cfg80211_chan_def** %3, align 8
  store %struct.rtw_channel_params* %1, %struct.rtw_channel_params** %4, align 8
  %14 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %15 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %14, i32 0, i32 2
  %16 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %15, align 8
  store %struct.ieee80211_channel* %16, %struct.ieee80211_channel** %5, align 8
  %17 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %18 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.rtw_channel_params*, %struct.rtw_channel_params** %4, align 8
  %21 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %7, align 8
  %23 = load i64, i64* @RTW_CHANNEL_WIDTH_20, align 8
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %25 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %10, align 4
  %28 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %29 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %8, align 4
  %31 = load %struct.cfg80211_chan_def*, %struct.cfg80211_chan_def** %3, align 8
  %32 = getelementptr inbounds %struct.cfg80211_chan_def, %struct.cfg80211_chan_def* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32*, i32** %7, align 8
  %38 = load i64, i64* @RTW_CHANNEL_WIDTH_20, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* %6, align 4
  switch i32 %40, label %97 [
    i32 130, label %41
    i32 131, label %41
    i32 129, label %44
    i32 128, label %57
  ]

41:                                               ; preds = %2, %2
  %42 = load i64, i64* @RTW_CHANNEL_WIDTH_20, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %98

44:                                               ; preds = %2
  %45 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  store i32 1, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = sub nsw i32 %51, 2
  store i32 %52, i32* %10, align 4
  br label %56

53:                                               ; preds = %44
  store i32 2, i32* %12, align 4
  %54 = load i32, i32* %10, align 4
  %55 = add nsw i32 %54, 2
  store i32 %55, i32* %10, align 4
  br label %56

56:                                               ; preds = %53, %50
  br label %98

57:                                               ; preds = %2
  %58 = load i32, i32* @RTW_CHANNEL_WIDTH_80, align 4
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %9, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %79

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %9, align 4
  %65 = sub nsw i32 %63, %64
  %66 = icmp eq i32 %65, 10
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  store i32 1, i32* %12, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sub nsw i32 %68, 2
  store i32 %69, i32* %10, align 4
  br label %73

70:                                               ; preds = %62
  store i32 3, i32* %12, align 4
  %71 = load i32, i32* %10, align 4
  %72 = sub nsw i32 %71, 6
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %70, %67
  %74 = load i32, i32* %10, align 4
  %75 = add nsw i32 %74, 4
  %76 = load i32*, i32** %7, align 8
  %77 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %78 = getelementptr inbounds i32, i32* %76, i64 %77
  store i32 %75, i32* %78, align 4
  br label %96

79:                                               ; preds = %57
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub nsw i32 %80, %81
  %83 = icmp eq i32 %82, 10
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  store i32 2, i32* %12, align 4
  %85 = load i32, i32* %10, align 4
  %86 = add nsw i32 %85, 2
  store i32 %86, i32* %10, align 4
  br label %90

87:                                               ; preds = %79
  store i32 4, i32* %12, align 4
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 6
  store i32 %89, i32* %10, align 4
  br label %90

90:                                               ; preds = %87, %84
  %91 = load i32, i32* %10, align 4
  %92 = sub nsw i32 %91, 4
  %93 = load i32*, i32** %7, align 8
  %94 = load i64, i64* @RTW_CHANNEL_WIDTH_40, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  store i32 %92, i32* %95, align 4
  br label %96

96:                                               ; preds = %90, %73
  br label %98

97:                                               ; preds = %2
  store i32 0, i32* %10, align 4
  br label %98

98:                                               ; preds = %97, %96, %56, %41
  %99 = load i32, i32* %10, align 4
  %100 = load %struct.rtw_channel_params*, %struct.rtw_channel_params** %4, align 8
  %101 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.rtw_channel_params*, %struct.rtw_channel_params** %4, align 8
  %104 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %103, i32 0, i32 2
  store i32 %102, i32* %104, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.rtw_channel_params*, %struct.rtw_channel_params** %4, align 8
  %107 = getelementptr inbounds %struct.rtw_channel_params, %struct.rtw_channel_params* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32*, i32** %7, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  store i32 %108, i32* %112, align 4
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %115

115:                                              ; preds = %124, %98
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* @RTW_MAX_CHANNEL_WIDTH, align 4
  %118 = icmp sle i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32*, i32** %7, align 8
  %121 = load i32, i32* %13, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 0, i32* %123, align 4
  br label %124

124:                                              ; preds = %119
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %13, align 4
  br label %115

127:                                              ; preds = %115
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
