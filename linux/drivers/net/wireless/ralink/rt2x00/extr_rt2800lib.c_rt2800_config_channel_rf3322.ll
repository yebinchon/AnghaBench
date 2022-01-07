; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3322.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2800lib.c_rt2800_config_channel_rf3322.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ieee80211_conf = type { i32 }
%struct.rf_channel = type { i32, i32 }
%struct.channel_info = type { i32, i32 }

@POWER_BOUND = common dso_local global i32 0, align 4
@RFCSR1_RX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX0_PD = common dso_local global i32 0, align 4
@RFCSR1_TX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX1_PD = common dso_local global i32 0, align 4
@RFCSR1_RX2_PD = common dso_local global i32 0, align 4
@RFCSR1_TX2_PD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.ieee80211_conf*, %struct.rf_channel*, %struct.channel_info*)* @rt2800_config_channel_rf3322 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2800_config_channel_rf3322(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, %struct.rf_channel* %2, %struct.channel_info* %3) #0 {
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
  %12 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %10, i32 8, i32 %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %16 = load %struct.rf_channel*, %struct.rf_channel** %7, align 8
  %17 = getelementptr inbounds %struct.rf_channel, %struct.rf_channel* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %15, i32 9, i32 %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %21 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %20, i32 11, i32 66)
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %23 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %22, i32 12, i32 28)
  %24 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %25 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %24, i32 13, i32 0)
  %26 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %27 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @POWER_BOUND, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %4
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %33 = load i32, i32* @POWER_BOUND, align 4
  %34 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %32, i32 47, i32 %33)
  br label %41

35:                                               ; preds = %4
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %37 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %38 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %36, i32 47, i32 %39)
  br label %41

41:                                               ; preds = %35, %31
  %42 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %43 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @POWER_BOUND, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %49 = load i32, i32* @POWER_BOUND, align 4
  %50 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %48, i32 48, i32 %49)
  br label %57

51:                                               ; preds = %41
  %52 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %53 = load %struct.channel_info*, %struct.channel_info** %8, align 8
  %54 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %52, i32 48, i32 %55)
  br label %57

57:                                               ; preds = %51, %47
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %59 = call i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev* %58)
  %60 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %61 = call i32 @rt2800_rfcsr_read(%struct.rt2x00_dev* %60, i32 1)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* @RFCSR1_RX0_PD, align 4
  %63 = call i32 @rt2x00_set_field8(i32* %9, i32 %62, i32 1)
  %64 = load i32, i32* @RFCSR1_TX0_PD, align 4
  %65 = call i32 @rt2x00_set_field8(i32* %9, i32 %64, i32 1)
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 2
  br i1 %70, label %71, label %74

71:                                               ; preds = %57
  %72 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %73 = call i32 @rt2x00_set_field8(i32* %9, i32 %72, i32 1)
  br label %77

74:                                               ; preds = %57
  %75 = load i32, i32* @RFCSR1_TX1_PD, align 4
  %76 = call i32 @rt2x00_set_field8(i32* %9, i32 %75, i32 0)
  br label %77

77:                                               ; preds = %74, %71
  %78 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %79 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %85 = call i32 @rt2x00_set_field8(i32* %9, i32 %84, i32 1)
  br label %89

86:                                               ; preds = %77
  %87 = load i32, i32* @RFCSR1_RX1_PD, align 4
  %88 = call i32 @rt2x00_set_field8(i32* %9, i32 %87, i32 0)
  br label %89

89:                                               ; preds = %86, %83
  %90 = load i32, i32* @RFCSR1_RX2_PD, align 4
  %91 = call i32 @rt2x00_set_field8(i32* %9, i32 %90, i32 0)
  %92 = load i32, i32* @RFCSR1_TX2_PD, align 4
  %93 = call i32 @rt2x00_set_field8(i32* %9, i32 %92, i32 0)
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %94, i32 1, i32 %95)
  %97 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %98 = call i32 @rt2800_rfcsr_write(%struct.rt2x00_dev* %97, i32 31, i32 80)
  ret void
}

declare dso_local i32 @rt2800_rfcsr_write(%struct.rt2x00_dev*, i32, i32) #1

declare dso_local i32 @rt2800_freq_cal_mode1(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2800_rfcsr_read(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00_set_field8(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
