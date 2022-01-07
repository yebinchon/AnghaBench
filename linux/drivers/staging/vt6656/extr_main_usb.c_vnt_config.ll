; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_main_usb.c_vnt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.vnt_private* }
%struct.ieee80211_conf = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.vnt_private = type { i64, i32 }

@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@IEEE80211_CONF_OFFCHANNEL = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@BB_TYPE_11A = common dso_local global i64 0, align 8
@BB_TYPE_11G = common dso_local global i64 0, align 8
@IEEE80211_CONF_CHANGE_POWER = common dso_local global i32 0, align 4
@BB_TYPE_11B = common dso_local global i64 0, align 8
@RATE_1M = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, i32)* @vnt_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_config(%struct.ieee80211_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vnt_private*, align 8
  %6 = alloca %struct.ieee80211_conf*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %7, i32 0, i32 1
  %9 = load %struct.vnt_private*, %struct.vnt_private** %8, align 8
  store %struct.vnt_private* %9, %struct.vnt_private** %5, align 8
  %10 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %10, i32 0, i32 0
  store %struct.ieee80211_conf* %11, %struct.ieee80211_conf** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %2
  %17 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %18 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %16
  %24 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %25 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %26 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @vnt_enable_power_saving(%struct.vnt_private* %24, i32 %27)
  br label %32

29:                                               ; preds = %16
  %30 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %31 = call i32 @vnt_disable_power_saving(%struct.vnt_private* %30)
  br label %32

32:                                               ; preds = %29, %23
  br label %33

33:                                               ; preds = %32, %2
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %33
  %39 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %40 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %71

45:                                               ; preds = %38, %33
  %46 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %47 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %48 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @vnt_set_channel(%struct.vnt_private* %46, i32 %52)
  %54 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %55 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %45
  %63 = load i64, i64* @BB_TYPE_11A, align 8
  %64 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  br label %70

66:                                               ; preds = %45
  %67 = load i64, i64* @BB_TYPE_11G, align 8
  %68 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %69 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %68, i32 0, i32 0
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %66, %62
  br label %71

71:                                               ; preds = %70, %38
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %102

76:                                               ; preds = %71
  %77 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %78 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @BB_TYPE_11B, align 8
  %81 = icmp eq i64 %79, %80
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i32, i32* @RATE_1M, align 4
  %84 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %85 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 8
  br label %90

86:                                               ; preds = %76
  %87 = load i32, i32* @RATE_54M, align 4
  %88 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %89 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %86, %82
  %91 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %92 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %93 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = call i32 @vnt_rf_setpower(%struct.vnt_private* %91, i32 %94, i32 %100)
  br label %102

102:                                              ; preds = %90, %71
  ret i32 0
}

declare dso_local i32 @vnt_enable_power_saving(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_disable_power_saving(%struct.vnt_private*) #1

declare dso_local i32 @vnt_set_channel(%struct.vnt_private*, i32) #1

declare dso_local i32 @vnt_rf_setpower(%struct.vnt_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
