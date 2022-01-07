; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.ieee80211_conf, %struct.vnt_private* }
%struct.ieee80211_conf = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i32 }
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
  %7 = alloca i64, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 1
  %10 = load %struct.vnt_private*, %struct.vnt_private** %9, align 8
  store %struct.vnt_private* %10, %struct.vnt_private** %5, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %11, i32 0, i32 0
  store %struct.ieee80211_conf* %12, %struct.ieee80211_conf** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %26 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @PSvEnablePowerSaving(%struct.vnt_private* %25, i32 %28)
  br label %33

30:                                               ; preds = %17
  %31 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %32 = call i32 @PSvDisablePowerSaving(%struct.vnt_private* %31)
  br label %33

33:                                               ; preds = %30, %24
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %46, label %39

39:                                               ; preds = %34
  %40 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %41 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IEEE80211_CONF_OFFCHANNEL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %81

46:                                               ; preds = %39, %34
  %47 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %48 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %49 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = call i32 @set_channel(%struct.vnt_private* %47, %struct.TYPE_4__* %51)
  %53 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %46
  %62 = load i64, i64* @BB_TYPE_11A, align 8
  store i64 %62, i64* %7, align 8
  br label %65

63:                                               ; preds = %46
  %64 = load i64, i64* @BB_TYPE_11G, align 8
  store i64 %64, i64* %7, align 8
  br label %65

65:                                               ; preds = %63, %61
  %66 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %67 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp ne i64 %68, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %76 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %77 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @CARDbSetPhyParameter(%struct.vnt_private* %75, i64 %78)
  br label %80

80:                                               ; preds = %71, %65
  br label %81

81:                                               ; preds = %80, %39
  %82 = load i32, i32* %4, align 4
  %83 = load i32, i32* @IEEE80211_CONF_CHANGE_POWER, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %112

86:                                               ; preds = %81
  %87 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %88 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @BB_TYPE_11B, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i32, i32* @RATE_1M, align 4
  %94 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %95 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  br label %100

96:                                               ; preds = %86
  %97 = load i32, i32* @RATE_54M, align 4
  %98 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %99 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %102 = load %struct.vnt_private*, %struct.vnt_private** %5, align 8
  %103 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %6, align 8
  %106 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @RFbSetPower(%struct.vnt_private* %101, i32 %104, i32 %110)
  br label %112

112:                                              ; preds = %100, %81
  ret i32 0
}

declare dso_local i32 @PSvEnablePowerSaving(%struct.vnt_private*, i32) #1

declare dso_local i32 @PSvDisablePowerSaving(%struct.vnt_private*) #1

declare dso_local i32 @set_channel(%struct.vnt_private*, %struct.TYPE_4__*) #1

declare dso_local i32 @CARDbSetPhyParameter(%struct.vnt_private*, i64) #1

declare dso_local i32 @RFbSetPower(%struct.vnt_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
