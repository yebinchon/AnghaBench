; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00config.c_rt2x00ht_center_channel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00config.c_rt2x00ht_center_channel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.hw_mode_spec }
%struct.hw_mode_spec = type { i64, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_conf = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rt2x00_dev*, %struct.ieee80211_conf*)* @rt2x00ht_center_channel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rt2x00ht_center_channel(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  %6 = alloca %struct.hw_mode_spec*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %5, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  store %struct.hw_mode_spec* %10, %struct.hw_mode_spec** %6, align 8
  %11 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %6, align 8
  %12 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %24 = call i64 @conf_is_ht40_plus(%struct.ieee80211_conf* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %7, align 4
  br label %41

29:                                               ; preds = %2
  %30 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %31 = call i64 @conf_is_ht40_minus(%struct.ieee80211_conf* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = icmp eq i32 %34, 14
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 1, i32 2
  %38 = load i32, i32* %7, align 4
  %39 = sub nsw i32 %38, %37
  store i32 %39, i32* %7, align 4
  br label %40

40:                                               ; preds = %33, %29
  br label %41

41:                                               ; preds = %40, %26
  store i64 0, i64* %8, align 8
  br label %42

42:                                               ; preds = %61, %41
  %43 = load i64, i64* %8, align 8
  %44 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %6, align 8
  %45 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ult i64 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %42
  %49 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %6, align 8
  %50 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp eq i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i64, i64* %8, align 8
  store i64 %59, i64* %3, align 8
  br label %72

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60
  %62 = load i64, i64* %8, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %8, align 8
  br label %42

64:                                               ; preds = %42
  %65 = call i32 @WARN_ON(i32 1)
  %66 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %67 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %3, align 8
  br label %72

72:                                               ; preds = %64, %58
  %73 = load i64, i64* %3, align 8
  ret i64 %73
}

declare dso_local i64 @conf_is_ht40_plus(%struct.ieee80211_conf*) #1

declare dso_local i64 @conf_is_ht40_minus(%struct.ieee80211_conf*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
