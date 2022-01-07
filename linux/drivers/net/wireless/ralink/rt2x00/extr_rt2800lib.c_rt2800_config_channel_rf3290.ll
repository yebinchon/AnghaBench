; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3290.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3290.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i64, i32, i32, i32 }
%struct.channel_info = type { i64 }

@RFCSR11_R = common dso_local global i32 0, align 4
@POWER_BOUND = common dso_local global i64 0, align 8
@RFCSR49_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3290 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3290(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  %7 = alloca %struct.rf_channel*, align 8
  %8 = alloca %struct.channel_info*, align 8
  %9 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %6, align 8
  store %struct.rf_channel* %2, %struct.rf_channel** %7, align 8
  store %struct.channel_info* %3, %struct.channel_info** %8, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %11 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %12 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %10, i32 8, i32 %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %17 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %15, i32 9, i32 %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %20, i32 11)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* @RFCSR11_R, align 4
  %23 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %24 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @rt2x00_set_field8(i32* %9, i32 %22, i64 %25)
  %27 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %27, i32 11, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %31 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %30, i32 49)
  store i32 %31, i32* %9, align 4
  %32 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %33 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @POWER_BOUND, align 8
  %36 = icmp sgt i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @RFCSR49_TX, align 4
  %39 = load i64, i64* @POWER_BOUND, align 8
  %40 = call i32 @rt2x00_set_field8(i32* %9, i32 %38, i64 %39)
  br label %47

41:                                               ; preds = %4
  %42 = load i32, i32* @RFCSR49_TX, align 4
  %43 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %44 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @rt2x00_set_field8(i32* %9, i32 %42, i64 %45)
  br label %47

47:                                               ; preds = %41, %37
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 49, i32 %49)
  %51 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %52 = call i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev* %51)
  %53 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %54 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp sle i32 %55, 14
  br i1 %56, label %57, label %110

57:                                               ; preds = %47
  %58 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %59 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 6
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %64 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %63, i32 68, i32 12)
  br label %68

65:                                               ; preds = %57
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %66, i32 68, i32 11)
  br label %68

68:                                               ; preds = %65, %62
  %69 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %70 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = icmp sge i32 %71, 1
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %75 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = icmp sle i32 %76, 6
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %80 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %79, i32 59, i32 15)
  br label %109

81:                                               ; preds = %73, %68
  %82 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %83 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp sge i32 %84, 7
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %88 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = icmp sle i32 %89, 11
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %93 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %92, i32 59, i32 14)
  br label %108

94:                                               ; preds = %86, %81
  %95 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %96 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = icmp sge i32 %97, 12
  br i1 %98, label %99, label %107

99:                                               ; preds = %94
  %100 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %101 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = icmp sle i32 %102, 14
  br i1 %103, label %104, label %107

104:                                              ; preds = %99
  %105 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %106 = call i32 @rt2800_bbp_write(%struct.rt2x00_dev* %105, i32 59, i32 13)
  br label %107

107:                                              ; preds = %104, %99, %94
  br label %108

108:                                              ; preds = %107, %91
  br label %109

109:                                              ; preds = %108, %78
  br label %110

110:                                              ; preds = %109, %47
  ret void
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i64) #1

declare dso_local i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_bbp_write(%struct.rt2x00_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
