; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_channel.c_vnt_init_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_channel.c_vnt_init_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i8*, i8* }
%struct.vnt_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32** }

@vnt_channels_5ghz = common dso_local global %struct.ieee80211_channel* null, align 8
@VNT_RF_MAX_POWER = common dso_local global i8* null, align 8
@IEEE80211_CHAN_NO_HT40 = common dso_local global i8* null, align 8
@vnt_supported_5ghz_band = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@vnt_channels_2ghz = common dso_local global %struct.ieee80211_channel* null, align 8
@vnt_supported_2ghz_band = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_init_bands(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca %struct.ieee80211_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  %5 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %6 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  switch i32 %7, label %9 [
    i32 133, label %8
    i32 128, label %8
    i32 132, label %42
    i32 131, label %42
    i32 130, label %42
    i32 129, label %42
  ]

8:                                                ; preds = %1, %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_5ghz, align 8
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %9
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_5ghz, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.ieee80211_channel* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %32

16:                                               ; preds = %11
  %17 = load i8*, i8** @VNT_RF_MAX_POWER, align 8
  %18 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %18, i64 %20
  %22 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %21, i32 0, i32 1
  store i8* %17, i8** %22, align 8
  %23 = load i8*, i8** @IEEE80211_CHAN_NO_HT40, align 8
  %24 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %24, i64 %26
  %28 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %27, i32 0, i32 0
  store i8* %23, i8** %28, align 8
  br label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %34 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %41 = getelementptr inbounds i32*, i32** %39, i64 %40
  store i32* @vnt_supported_5ghz_band, i32** %41, align 8
  br label %42

42:                                               ; preds = %1, %1, %1, %1, %32
  %43 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_2ghz, align 8
  store %struct.ieee80211_channel* %43, %struct.ieee80211_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %62, %42
  %45 = load i32, i32* %4, align 4
  %46 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_2ghz, align 8
  %47 = call i32 @ARRAY_SIZE(%struct.ieee80211_channel* %46)
  %48 = icmp slt i32 %45, %47
  br i1 %48, label %49, label %65

49:                                               ; preds = %44
  %50 = load i8*, i8** @VNT_RF_MAX_POWER, align 8
  %51 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %52 = load i32, i32* %4, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %51, i64 %53
  %55 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %54, i32 0, i32 1
  store i8* %50, i8** %55, align 8
  %56 = load i8*, i8** @IEEE80211_CHAN_NO_HT40, align 8
  %57 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %57, i64 %59
  %61 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %60, i32 0, i32 0
  store i8* %56, i8** %61, align 8
  br label %62

62:                                               ; preds = %49
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %4, align 4
  br label %44

65:                                               ; preds = %44
  %66 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %67 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32**, i32*** %71, align 8
  %73 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %74 = getelementptr inbounds i32*, i32** %72, i64 %73
  store i32* @vnt_supported_2ghz_band, i32** %74, align 8
  br label %75

75:                                               ; preds = %65
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
