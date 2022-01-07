; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00link.c_rt2x00link_tuner_sta.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00link.c_rt2x00link_tuner_sta.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_7__*, %struct.TYPE_5__, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.rt2x00_dev*, %struct.link_qual*, i32)*, i32 (%struct.rt2x00_dev*, %struct.link_qual*)* }
%struct.link_qual = type { i32, i32, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { %struct.link_qual }
%struct.link = type { i32, i32 }

@DEFAULT_RSSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rt2x00_dev*, %struct.link*)* @rt2x00link_tuner_sta to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rt2x00link_tuner_sta(%struct.rt2x00_dev* %0, %struct.link* %1) #0 {
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.link*, align 8
  %5 = alloca %struct.link_qual*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  store %struct.link* %1, %struct.link** %4, align 8
  %6 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  store %struct.link_qual* %8, %struct.link_qual** %5, align 8
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i32 (%struct.rt2x00_dev*, %struct.link_qual*)*, i32 (%struct.rt2x00_dev*, %struct.link_qual*)** %14, align 8
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %18 = call i32 %15(%struct.rt2x00_dev* %16, %struct.link_qual* %17)
  %19 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %20 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %23 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %21
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %24, align 8
  %29 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %30 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @DEFAULT_RSSI, align 4
  %35 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %36 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  br label %43

37:                                               ; preds = %2
  %38 = load %struct.link*, %struct.link** %4, align 8
  %39 = getelementptr inbounds %struct.link, %struct.link* %38, i32 0, i32 1
  %40 = call i32 @rt2x00link_get_avg_rssi(i32* %39)
  %41 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %42 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  br label %43

43:                                               ; preds = %37, %33
  %44 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %45 = call i64 @rt2x00_has_cap_link_tuning(%struct.rt2x00_dev* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %43
  %48 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %49 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32 (%struct.rt2x00_dev*, %struct.link_qual*, i32)*, i32 (%struct.rt2x00_dev*, %struct.link_qual*, i32)** %53, align 8
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %57 = load %struct.link*, %struct.link** %4, align 8
  %58 = getelementptr inbounds %struct.link, %struct.link* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 %54(%struct.rt2x00_dev* %55, %struct.link_qual* %56, i32 %59)
  br label %61

61:                                               ; preds = %47, %43
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = load %struct.link_qual*, %struct.link_qual** %5, align 8
  %64 = getelementptr inbounds %struct.link_qual, %struct.link_qual* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @rt2x00leds_led_quality(%struct.rt2x00_dev* %62, i32 %65)
  %67 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %68 = call i64 @rt2x00lib_antenna_diversity(%struct.rt2x00_dev* %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %72 = call i32 @rt2x00link_reset_qual(%struct.rt2x00_dev* %71)
  br label %73

73:                                               ; preds = %70, %61
  ret void
}

declare dso_local i32 @rt2x00link_get_avg_rssi(i32*) #1

declare dso_local i64 @rt2x00_has_cap_link_tuning(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00leds_led_quality(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @rt2x00lib_antenna_diversity(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_reset_qual(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
