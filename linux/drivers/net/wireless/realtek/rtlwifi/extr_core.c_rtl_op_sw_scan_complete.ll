; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sw_scan_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sw_scan_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_16__, %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__*, %struct.TYPE_9__ }
%struct.TYPE_15__ = type { i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64 (...)*, i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i64)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.rtl_mac = type { i32, i32, i32, i32, i64, i64 }

@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAC80211_LINKED_SCANNING = common dso_local global i64 0, align 8
@MAC80211_LINKED = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@SCAN_OPT_RESTORE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*)* @rtl_op_sw_scan_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_op_sw_scan_complete(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1) #0 {
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.ieee80211_vif*, align 8
  %5 = alloca %struct.rtl_priv*, align 8
  %6 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %4, align 8
  %7 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %8 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %7)
  store %struct.rtl_priv* %8, %struct.rtl_priv** %5, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  %11 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %10)
  store %struct.rtl_mac* %11, %struct.rtl_mac** %6, align 8
  %12 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %13 = load i32, i32* @COMP_MAC80211, align 4
  %14 = load i32, i32* @DBG_LOUD, align 4
  %15 = call i32 @RT_TRACE(%struct.rtl_priv* %12, i32 %13, i32 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %17 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %16, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %19 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %18, i32 0, i32 1
  store i32 0, i32* %19, align 4
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  store i32 %23, i32* %27, align 8
  %28 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %2
  br label %124

34:                                               ; preds = %2
  %35 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %36 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 3
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %41 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %40, i32 0, i32 3
  store i32 1, i32* %41, align 4
  br label %45

42:                                               ; preds = %34
  %43 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %44 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %43, i32 0, i32 3
  store i32 0, i32* %44, align 4
  br label %45

45:                                               ; preds = %42, %39
  %46 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %47 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %52 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %51, i32 0, i32 4
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @MAC80211_LINKED_SCANNING, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %45
  %57 = load i64, i64* @MAC80211_LINKED, align 8
  %58 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %59 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %58, i32 0, i32 4
  store i64 %57, i64* %59, align 8
  %60 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %61 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %78

65:                                               ; preds = %56
  %66 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %67 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %66, i32 0, i32 1
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 2
  %72 = load i32 (%struct.ieee80211_hw*, i64)*, i32 (%struct.ieee80211_hw*, i64)** %71, align 8
  %73 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %74 = load %struct.rtl_mac*, %struct.rtl_mac** %6, align 8
  %75 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = call i32 %72(%struct.ieee80211_hw* %73, i64 %76)
  br label %78

78:                                               ; preds = %65, %56
  br label %79

79:                                               ; preds = %78, %45
  %80 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %81 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %85, align 8
  %87 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %88 = load i32, i32* @SCAN_OPT_RESTORE, align 4
  %89 = call i32 %86(%struct.ieee80211_hw* %87, i32 %88)
  %90 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %91 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %90, i32 0, i32 1
  %92 = load %struct.TYPE_14__*, %struct.TYPE_14__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i64 (...)*, i64 (...)** %95, align 8
  %97 = call i64 (...) %96()
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %108

99:                                               ; preds = %79
  %100 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %101 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_15__*, %struct.TYPE_15__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %103, i32 0, i32 1
  %105 = load i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)** %104, align 8
  %106 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %107 = call i32 %105(%struct.rtl_priv* %106, i32 0)
  br label %124

108:                                              ; preds = %79
  %109 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %110 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** %111, align 8
  %113 = icmp ne %struct.TYPE_15__* %112, null
  br i1 %113, label %114, label %123

114:                                              ; preds = %108
  %115 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %116 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = load i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)** %119, align 8
  %121 = load %struct.rtl_priv*, %struct.rtl_priv** %5, align 8
  %122 = call i32 %120(%struct.rtl_priv* %121, i32 0)
  br label %123

123:                                              ; preds = %114, %108
  br label %124

124:                                              ; preds = %33, %123, %99
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
