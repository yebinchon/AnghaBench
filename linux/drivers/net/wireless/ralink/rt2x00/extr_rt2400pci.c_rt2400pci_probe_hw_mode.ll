; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_probe_hw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2400pci.c_rt2400pci_probe_hw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, %struct.hw_mode_spec }
%struct.hw_mode_spec = type { %struct.channel_info*, i32, i32, i32, i32 }
%struct.channel_info = type { i8*, i8* }

@PS_NULLFUNC_STACK = common dso_local global i32 0, align 4
@SUPPORTS_PS = common dso_local global i32 0, align 4
@HOST_BROADCAST_PS_BUFFERING = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@EEPROM_MAC_ADDR_0 = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@rf_vals_b = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EEPROM_TXPOWER_START = common dso_local global i32 0, align 4
@MAX_TXPOWER = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2400pci_probe_hw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2400pci_probe_hw_mode(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.hw_mode_spec*, align 8
  %5 = alloca %struct.channel_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %8 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %8, i32 0, i32 2
  store %struct.hw_mode_spec* %9, %struct.hw_mode_spec** %4, align 8
  %10 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @PS_NULLFUNC_STACK, align 4
  %14 = call i32 @ieee80211_hw_set(i32 %12, i32 %13)
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @SUPPORTS_PS, align 4
  %19 = call i32 @ieee80211_hw_set(i32 %17, i32 %18)
  %20 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @HOST_BROADCAST_PS_BUFFERING, align 4
  %24 = call i32 @ieee80211_hw_set(i32 %22, i32 %23)
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @SIGNAL_DBM, align 4
  %29 = call i32 @ieee80211_hw_set(i32 %27, i32 %28)
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %34 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @SET_IEEE80211_DEV(i32 %32, i32 %35)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = load i32, i32* @EEPROM_MAC_ADDR_0, align 4
  %42 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %40, i32 %41)
  %43 = call i32 @SET_IEEE80211_PERM_ADDR(i32 %39, i8* %42)
  %44 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %45 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %46 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %45, i32 0, i32 4
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %48 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %49 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %48, i32 0, i32 3
  store i32 %47, i32* %49, align 8
  %50 = load i32, i32* @rf_vals_b, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %53 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 8
  %54 = load i32, i32* @rf_vals_b, align 4
  %55 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %56 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %58 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.channel_info* @kcalloc(i32 %59, i32 16, i32 %60)
  store %struct.channel_info* %61, %struct.channel_info** %5, align 8
  %62 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %63 = icmp ne %struct.channel_info* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %1
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %100

67:                                               ; preds = %1
  %68 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %69 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %4, align 8
  %70 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %69, i32 0, i32 0
  store %struct.channel_info* %68, %struct.channel_info** %70, align 8
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = load i32, i32* @EEPROM_TXPOWER_START, align 4
  %73 = call i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev* %71, i32 %72)
  store i8* %73, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %74

74:                                               ; preds = %96, %67
  %75 = load i32, i32* %7, align 4
  %76 = icmp ult i32 %75, 14
  br i1 %76, label %77, label %99

77:                                               ; preds = %74
  %78 = load i8, i8* @MAX_TXPOWER, align 1
  %79 = call i8* @TXPOWER_FROM_DEV(i8 signext %78)
  %80 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %81 = load i32, i32* %7, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %80, i64 %82
  %84 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %83, i32 0, i32 1
  store i8* %79, i8** %84, align 8
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %7, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %85, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = call i8* @TXPOWER_FROM_DEV(i8 signext %89)
  %91 = load %struct.channel_info*, %struct.channel_info** %5, align 8
  %92 = load i32, i32* %7, align 4
  %93 = zext i32 %92 to i64
  %94 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %91, i64 %93
  %95 = getelementptr inbounds %struct.channel_info, %struct.channel_info* %94, i32 0, i32 0
  store i8* %90, i8** %95, align 8
  br label %96

96:                                               ; preds = %77
  %97 = load i32, i32* %7, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %7, align 4
  br label %74

99:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %99, %64
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @ieee80211_hw_set(i32, i32) #1

declare dso_local i32 @SET_IEEE80211_DEV(i32, i32) #1

declare dso_local i32 @SET_IEEE80211_PERM_ADDR(i32, i8*) #1

declare dso_local i8* @rt2x00_eeprom_addr(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local %struct.channel_info* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @TXPOWER_FROM_DEV(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
