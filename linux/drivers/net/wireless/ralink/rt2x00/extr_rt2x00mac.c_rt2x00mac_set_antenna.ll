; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_set_antenna.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00mac.c_rt2x00mac_set_antenna.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.rt2x00_dev* }
%struct.rt2x00_dev = type { %struct.antenna_setup, %struct.TYPE_2__ }
%struct.antenna_setup = type { i32, i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.link_ant }
%struct.link_ant = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ANTENNA_TX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_RX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_SW_DIVERSITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00mac_set_antenna(%struct.ieee80211_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.rt2x00_dev*, align 8
  %9 = alloca %struct.link_ant*, align 8
  %10 = alloca %struct.antenna_setup*, align 8
  %11 = alloca %struct.antenna_setup, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %12, i32 0, i32 0
  %14 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %13, align 8
  store %struct.rt2x00_dev* %14, %struct.rt2x00_dev** %8, align 8
  %15 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %16 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.link_ant* %17, %struct.link_ant** %9, align 8
  %18 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %19 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %18, i32 0, i32 0
  store %struct.antenna_setup* %19, %struct.antenna_setup** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %33

22:                                               ; preds = %3
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, -4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, i32* %7, align 4
  %31 = and i32 %30, -4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %29, %26, %22, %3
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %111

36:                                               ; preds = %29
  %37 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %38 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = icmp ne i32 %44, 3
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %50 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %53

53:                                               ; preds = %46, %43, %36
  %54 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %55 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %70

60:                                               ; preds = %53
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 3
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %65 = xor i32 %64, -1
  %66 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %67 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, %65
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %63, %60, %53
  %71 = load i32, i32* %6, align 4
  %72 = icmp eq i32 %71, 3
  br i1 %72, label %73, label %86

73:                                               ; preds = %70
  %74 = load %struct.antenna_setup*, %struct.antenna_setup** %10, align 8
  %75 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %86

79:                                               ; preds = %73
  %80 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  store i32 %80, i32* %6, align 4
  %81 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %82 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %83 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %86

86:                                               ; preds = %79, %73, %70
  %87 = load i32, i32* %7, align 4
  %88 = icmp eq i32 %87, 3
  br i1 %88, label %89, label %102

89:                                               ; preds = %86
  %90 = load %struct.antenna_setup*, %struct.antenna_setup** %10, align 8
  %91 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %102

95:                                               ; preds = %89
  %96 = load i32, i32* @ANTENNA_SW_DIVERSITY, align 4
  store i32 %96, i32* %7, align 4
  %97 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %98 = load %struct.link_ant*, %struct.link_ant** %9, align 8
  %99 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %95, %89, %86
  %103 = load i32, i32* %6, align 4
  %104 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %11, i32 0, i32 0
  store i32 %103, i32* %104, align 8
  %105 = load i32, i32* %7, align 4
  %106 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %11, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  %107 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %11, i32 0, i32 3
  store i64 0, i64* %107, align 8
  %108 = getelementptr inbounds %struct.antenna_setup, %struct.antenna_setup* %11, i32 0, i32 2
  store i64 0, i64* %108, align 8
  %109 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %8, align 8
  %110 = call i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev* %109, %struct.antenna_setup* byval(%struct.antenna_setup) align 8 %11)
  store i32 0, i32* %4, align 4
  br label %111

111:                                              ; preds = %102, %33
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

declare dso_local i32 @rt2x00lib_config_antenna(%struct.rt2x00_dev*, %struct.antenna_setup* byval(%struct.antenna_setup) align 8) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
