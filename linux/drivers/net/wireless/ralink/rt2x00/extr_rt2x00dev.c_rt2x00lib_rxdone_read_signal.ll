; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone_read_signal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_rxdone_read_signal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i64, %struct.ieee80211_supported_band* }
%struct.ieee80211_supported_band = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.rxdone_entry_desc = type { i32, i32, i32 }
%struct.rt2x00_rate = type { i32, i32, i32 }

@RXDONE_SIGNAL_MASK = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_MCS = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_PLCP = common dso_local global i32 0, align 4
@RXDONE_SIGNAL_BITRATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"Frame received with unrecognized signal, mode=0x%.4x, signal=0x%.4x, type=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.rxdone_entry_desc*)* @rt2x00lib_rxdone_read_signal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00lib_rxdone_read_signal(%struct.rt2x00_dev* %0, %struct.rxdone_entry_desc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.rxdone_entry_desc*, align 8
  %6 = alloca %struct.ieee80211_supported_band*, align 8
  %7 = alloca %struct.rt2x00_rate*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.rxdone_entry_desc* %1, %struct.rxdone_entry_desc** %5, align 8
  %11 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %5, align 8
  %12 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %5, align 8
  %15 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @RXDONE_SIGNAL_MASK, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %5, align 8
  %20 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %104 [
    i32 131, label %22
    i32 128, label %22
    i32 129, label %95
    i32 130, label %95
  ]

22:                                               ; preds = %2, %2
  %23 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %5, align 8
  %24 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RXDONE_SIGNAL_MCS, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %22
  %30 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %5, align 8
  %31 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @RATE_MCS(i32 %32, i32 %33)
  store i32 %34, i32* %9, align 4
  br label %35

35:                                               ; preds = %29, %22
  %36 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %37 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %36, i32 0, i32 1
  %38 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %37, align 8
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %38, i64 %41
  store %struct.ieee80211_supported_band* %42, %struct.ieee80211_supported_band** %6, align 8
  store i32 0, i32* %8, align 4
  br label %43

43:                                               ; preds = %91, %35
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = icmp ult i32 %44, %47
  br i1 %48, label %49, label %94

49:                                               ; preds = %43
  %50 = load %struct.ieee80211_supported_band*, %struct.ieee80211_supported_band** %6, align 8
  %51 = getelementptr inbounds %struct.ieee80211_supported_band, %struct.ieee80211_supported_band* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.rt2x00_rate* @rt2x00_get_rate(i32 %57)
  store %struct.rt2x00_rate* %58, %struct.rt2x00_rate** %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @RXDONE_SIGNAL_PLCP, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %68

62:                                               ; preds = %49
  %63 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %7, align 8
  %64 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %88, label %68

68:                                               ; preds = %62, %49
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* @RXDONE_SIGNAL_BITRATE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %7, align 8
  %74 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = icmp eq i32 %75, %76
  br i1 %77, label %88, label %78

78:                                               ; preds = %72, %68
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* @RXDONE_SIGNAL_MCS, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.rt2x00_rate*, %struct.rt2x00_rate** %7, align 8
  %84 = getelementptr inbounds %struct.rt2x00_rate, %struct.rt2x00_rate* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %90

88:                                               ; preds = %82, %72, %62
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %3, align 4
  br label %113

90:                                               ; preds = %82, %78
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %43

94:                                               ; preds = %43
  br label %105

95:                                               ; preds = %2, %2
  %96 = load i32, i32* %9, align 4
  %97 = icmp sge i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = icmp sle i32 %99, 76
  br i1 %100, label %101, label %103

101:                                              ; preds = %98
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %113

103:                                              ; preds = %98, %95
  br label %105

104:                                              ; preds = %2
  br label %105

105:                                              ; preds = %104, %103, %94
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %107 = load %struct.rxdone_entry_desc*, %struct.rxdone_entry_desc** %5, align 8
  %108 = getelementptr inbounds %struct.rxdone_entry_desc, %struct.rxdone_entry_desc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %9, align 4
  %111 = load i32, i32* %10, align 4
  %112 = call i32 @rt2x00_warn(%struct.rt2x00_dev* %106, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i32 %109, i32 %110, i32 %111)
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %105, %101, %88
  %114 = load i32, i32* %3, align 4
  ret i32 %114
}

declare dso_local i32 @RATE_MCS(i32, i32) #1

declare dso_local %struct.rt2x00_rate* @rt2x00_get_rate(i32) #1

declare dso_local i32 @rt2x00_warn(%struct.rt2x00_dev*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
