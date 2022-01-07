; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_channel.c_vnt_init_bands.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_channel.c_vnt_init_bands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_channel = type { i32, i8* }
%struct.vnt_private = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32** }

@vnt_channels_5ghz = common dso_local global %struct.ieee80211_channel* null, align 8
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
    i32 134, label %8
    i32 129, label %8
    i32 132, label %8
    i32 131, label %41
    i32 135, label %41
    i32 133, label %41
    i32 130, label %41
    i32 128, label %41
  ]

8:                                                ; preds = %1, %1, %1
  br label %9

9:                                                ; preds = %1, %8
  %10 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_5ghz, align 8
  store %struct.ieee80211_channel* %10, %struct.ieee80211_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %28, %9
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_5ghz, align 8
  %14 = call i32 @ARRAY_SIZE(%struct.ieee80211_channel* %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %31

16:                                               ; preds = %11
  %17 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %17, i64 %19
  %21 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %20, i32 0, i32 0
  store i32 63, i32* %21, align 8
  %22 = load i8*, i8** @IEEE80211_CHAN_NO_HT40, align 8
  %23 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %23, i64 %25
  %27 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %26, i32 0, i32 1
  store i8* %22, i8** %27, align 8
  br label %28

28:                                               ; preds = %16
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %11

31:                                               ; preds = %11
  %32 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32**, i32*** %37, align 8
  %39 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %40 = getelementptr inbounds i32*, i32** %38, i64 %39
  store i32* @vnt_supported_5ghz_band, i32** %40, align 8
  br label %41

41:                                               ; preds = %1, %1, %1, %1, %1, %31
  %42 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_2ghz, align 8
  store %struct.ieee80211_channel* %42, %struct.ieee80211_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %60, %41
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** @vnt_channels_2ghz, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.ieee80211_channel* %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %63

48:                                               ; preds = %43
  %49 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %49, i64 %51
  %53 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %52, i32 0, i32 0
  store i32 63, i32* %53, align 8
  %54 = load i8*, i8** @IEEE80211_CHAN_NO_HT40, align 8
  %55 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %55, i64 %57
  %59 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %58, i32 0, i32 1
  store i8* %54, i8** %59, align 8
  br label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %43

63:                                               ; preds = %43
  %64 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %65 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %64, i32 0, i32 1
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32**, i32*** %69, align 8
  %71 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %72 = getelementptr inbounds i32*, i32** %70, i64 %71
  store i32* @vnt_supported_2ghz_band, i32** %72, align 8
  br label %73

73:                                               ; preds = %63
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.ieee80211_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
