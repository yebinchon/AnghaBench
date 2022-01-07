; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_survey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_get_survey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.rt2x00_dev* }
%struct.ieee80211_conf = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.rt2x00_dev = type { i32 }
%struct.survey_info = type { i32, i32, i32, i32, i32 }

@ENOENT = common dso_local global i32 0, align 4
@CH_IDLE_STA = common dso_local global i32 0, align 4
@CH_BUSY_STA = common dso_local global i32 0, align 4
@CH_BUSY_STA_SEC = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_BUSY = common dso_local global i32 0, align 4
@SURVEY_INFO_TIME_EXT_BUSY = common dso_local global i32 0, align 4
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@SURVEY_INFO_IN_USE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2800_get_survey(%struct.ieee80211_hw* %0, i32 %1, %struct.survey_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.survey_info*, align 8
  %8 = alloca %struct.rt2x00_dev*, align 8
  %9 = alloca %struct.ieee80211_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.survey_info* %2, %struct.survey_info** %7, align 8
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %13, i32 0, i32 1
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %14, align 8
  store %struct.rt2x00_dev* %15, %struct.rt2x00_dev** %8, align 8
  %16 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %16, i32 0, i32 0
  store %struct.ieee80211_conf* %17, %struct.ieee80211_conf** %9, align 8
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %81

23:                                               ; preds = %3
  %24 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %9, align 8
  %25 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %29 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 4
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %31 = load i32, i32* @CH_IDLE_STA, align 4
  %32 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %34 = load i32, i32* @CH_BUSY_STA, align 4
  %35 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %37 = load i32, i32* @CH_BUSY_STA_SEC, align 4
  %38 = call i32 @rt2800_register_read(%struct.rt2x00_dev* %36, i32 %37)
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %23
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %41, %23
  %45 = load i32, i32* @SURVEY_INFO_TIME, align 4
  %46 = load i32, i32* @SURVEY_INFO_TIME_BUSY, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SURVEY_INFO_TIME_EXT_BUSY, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %51 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i32, i32* %10, align 4
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %52, %53
  %55 = sdiv i32 %54, 1000
  %56 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %57 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %11, align 4
  %59 = sdiv i32 %58, 1000
  %60 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %61 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* %12, align 4
  %63 = sdiv i32 %62, 1000
  %64 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %65 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %44, %41
  %67 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %68 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %66
  %75 = load i32, i32* @SURVEY_INFO_IN_USE, align 4
  %76 = load %struct.survey_info*, %struct.survey_info** %7, align 8
  %77 = getelementptr inbounds %struct.survey_info, %struct.survey_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 4
  br label %80

80:                                               ; preds = %74, %66
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %20
  %82 = load i32, i32* %4, align 4
  ret i32 %82
}

declare dso_local i32 @rt2800_register_read(%struct.rt2x00_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
