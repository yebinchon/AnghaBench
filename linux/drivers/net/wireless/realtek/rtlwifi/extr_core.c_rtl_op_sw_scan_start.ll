; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sw_scan_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_core.c_rtl_op_sw_scan_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_14__*, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*)*, i64 (...)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)* }
%struct.TYPE_8__ = type { i64 }
%struct.rtl_mac = type { i32, i32, i64 }

@COMP_MAC80211 = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@MAC80211_LINKED = common dso_local global i64 0, align 8
@MAC80211_LINKED_SCANNING = common dso_local global i64 0, align 8
@LED_CTL_SITE_SURVEY = common dso_local global i32 0, align 4
@SCAN_OPT_BACKUP_BAND0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, %struct.ieee80211_vif*, i32*)* @rtl_op_sw_scan_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_op_sw_scan_start(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, i32* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.rtl_mac*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %10 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %9)
  store %struct.rtl_priv* %10, %struct.rtl_priv** %7, align 8
  %11 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %12 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %11)
  %13 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %12)
  store %struct.rtl_mac* %13, %struct.rtl_mac** %8, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %15 = load i32, i32* @COMP_MAC80211, align 4
  %16 = load i32, i32* @DBG_LOUD, align 4
  %17 = call i32 @RT_TRACE(%struct.rtl_priv* %14, i32 %15, i32 %16, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %19 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 4
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %3
  %26 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %27 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %128

28:                                               ; preds = %3
  %29 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %30 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %29, i32 0, i32 0
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 3
  %35 = load i64 (...)*, i64 (...)** %34, align 8
  %36 = call i64 (...) %35()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %28
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %40 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)** %43, align 8
  %45 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %46 = call i32 %44(%struct.rtl_priv* %45, i32 1)
  br label %63

47:                                               ; preds = %28
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %49 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = icmp ne %struct.TYPE_9__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %55 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i32 (%struct.rtl_priv*, i32)*, i32 (%struct.rtl_priv*, i32)** %58, align 8
  %60 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %61 = call i32 %59(%struct.rtl_priv* %60, i32 1)
  br label %62

62:                                               ; preds = %53, %47
  br label %63

63:                                               ; preds = %62, %38
  %64 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %65 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %89

69:                                               ; preds = %63
  %70 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %71 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %70, i32 0, i32 0
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 2
  %76 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %75, align 8
  %77 = icmp ne i32 (%struct.ieee80211_hw*)* %76, null
  br i1 %77, label %78, label %88

78:                                               ; preds = %69
  %79 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %80 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %79, i32 0, i32 0
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 2
  %85 = load i32 (%struct.ieee80211_hw*)*, i32 (%struct.ieee80211_hw*)** %84, align 8
  %86 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %87 = call i32 %85(%struct.ieee80211_hw* %86)
  br label %88

88:                                               ; preds = %78, %69
  br label %89

89:                                               ; preds = %88, %63
  %90 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %91 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MAC80211_LINKED, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %97 = call i32 @rtl_lps_leave(%struct.ieee80211_hw* %96)
  %98 = load i64, i64* @MAC80211_LINKED_SCANNING, align 8
  %99 = load %struct.rtl_mac*, %struct.rtl_mac** %8, align 8
  %100 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %99, i32 0, i32 2
  store i64 %98, i64* %100, align 8
  br label %104

101:                                              ; preds = %89
  %102 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %103 = call i32 @rtl_ips_nic_on(%struct.ieee80211_hw* %102)
  br label %104

104:                                              ; preds = %101, %95
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %106 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 0
  store i32 0, i32* %107, align 8
  %108 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %109 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %108, i32 0, i32 0
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 1
  %114 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %113, align 8
  %115 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %116 = load i32, i32* @LED_CTL_SITE_SURVEY, align 4
  %117 = call i32 %114(%struct.ieee80211_hw* %115, i32 %116)
  %118 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %119 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %118, i32 0, i32 0
  %120 = load %struct.TYPE_14__*, %struct.TYPE_14__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %120, i32 0, i32 0
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32 (%struct.ieee80211_hw*, i32)*, i32 (%struct.ieee80211_hw*, i32)** %123, align 8
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %126 = load i32, i32* @SCAN_OPT_BACKUP_BAND0, align 4
  %127 = call i32 %124(%struct.ieee80211_hw* %125, i32 %126)
  br label %128

128:                                              ; preds = %104, %25
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*) #1

declare dso_local i32 @rtl_lps_leave(%struct.ieee80211_hw*) #1

declare dso_local i32 @rtl_ips_nic_on(%struct.ieee80211_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
