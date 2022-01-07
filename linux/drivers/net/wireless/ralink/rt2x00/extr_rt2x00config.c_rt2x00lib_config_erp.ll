; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00config.c_rt2x00lib_config_erp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00config.c_rt2x00lib_config_erp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*, i32)* }
%struct.rt2x00lib_erp = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.rt2x00_intf = type { i32 }
%struct.ieee80211_bss_conf = type { i32, i32, i32, i32, i64, i32, i64, i32, i32 }

@SHORT_SLOT_TIME = common dso_local global i32 0, align 4
@SLOT_TIME = common dso_local global i32 0, align 4
@SIFS = common dso_local global i32 0, align 4
@SHORT_PIFS = common dso_local global i32 0, align 4
@PIFS = common dso_local global i32 0, align 4
@SHORT_DIFS = common dso_local global i32 0, align 4
@DIFS = common dso_local global i32 0, align 4
@SHORT_EIFS = common dso_local global i32 0, align 4
@EIFS = common dso_local global i32 0, align 4
@BSS_CHANGED_HT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_config_erp(%struct.rt2x00_dev* %0, %struct.rt2x00_intf* %1, %struct.ieee80211_bss_conf* %2, i32 %3) #0 {
  %5 = alloca %struct.rt2x00_dev*, align 8
  %6 = alloca %struct.rt2x00_intf*, align 8
  %7 = alloca %struct.ieee80211_bss_conf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.rt2x00lib_erp, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %5, align 8
  store %struct.rt2x00_intf* %1, %struct.rt2x00_intf** %6, align 8
  store %struct.ieee80211_bss_conf* %2, %struct.ieee80211_bss_conf** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = call i32 @memset(%struct.rt2x00lib_erp* %9, i32 0, i32 40)
  %11 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 9
  store i32 %13, i32* %14, align 4
  %15 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %16 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 8
  %18 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 8
  store i32 %17, i32* %18, align 4
  %19 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %20 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %19, i32 0, i32 6
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @SHORT_SLOT_TIME, align 4
  br label %27

25:                                               ; preds = %4
  %26 = load i32, i32* @SLOT_TIME, align 4
  br label %27

27:                                               ; preds = %25, %23
  %28 = phi i32 [ %24, %23 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 7
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @SIFS, align 4
  %31 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 6
  store i32 %30, i32* %31, align 4
  %32 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %33 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %32, i32 0, i32 6
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @SHORT_PIFS, align 4
  br label %40

38:                                               ; preds = %27
  %39 = load i32, i32* @PIFS, align 4
  br label %40

40:                                               ; preds = %38, %36
  %41 = phi i32 [ %37, %36 ], [ %39, %38 ]
  %42 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 5
  store i32 %41, i32* %42, align 4
  %43 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %44 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %43, i32 0, i32 6
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @SHORT_DIFS, align 4
  br label %51

49:                                               ; preds = %40
  %50 = load i32, i32* @DIFS, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 4
  store i32 %52, i32* %53, align 4
  %54 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %55 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %54, i32 0, i32 6
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @SHORT_EIFS, align 4
  br label %62

60:                                               ; preds = %51
  %61 = load i32, i32* @EIFS, align 4
  br label %62

62:                                               ; preds = %60, %58
  %63 = phi i32 [ %59, %58 ], [ %61, %60 ]
  %64 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %66 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %65, i32 0, i32 5
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 2
  store i32 %67, i32* %68, align 4
  %69 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %70 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %74 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %73, i32 0, i32 4
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  br label %82

81:                                               ; preds = %62
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 0, %81 ]
  %84 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %85 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 8
  %86 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %90 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %92 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %95 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @BSS_CHANGED_HT, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %82
  %101 = load %struct.ieee80211_bss_conf*, %struct.ieee80211_bss_conf** %7, align 8
  %102 = getelementptr inbounds %struct.ieee80211_bss_conf, %struct.ieee80211_bss_conf* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = getelementptr inbounds %struct.rt2x00lib_erp, %struct.rt2x00lib_erp* %9, i32 0, i32 0
  store i32 %103, i32* %104, align 4
  br label %105

105:                                              ; preds = %100, %82
  %106 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %107 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %106, i32 0, i32 0
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_3__*, %struct.TYPE_3__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*, i32)*, i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_erp*, i32)** %111, align 8
  %113 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %5, align 8
  %114 = load i32, i32* %8, align 4
  %115 = call i32 %112(%struct.rt2x00_dev* %113, %struct.rt2x00lib_erp* %9, i32 %114)
  ret void
}

declare dso_local i32 @memset(%struct.rt2x00lib_erp*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
