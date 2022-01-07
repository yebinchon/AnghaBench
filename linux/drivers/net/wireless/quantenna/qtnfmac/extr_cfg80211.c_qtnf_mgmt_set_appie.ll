; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_mgmt_set_appie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_cfg80211.c_qtnf_mgmt_set_appie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_vif = type { i32 }
%struct.cfg80211_beacon_data = type { i32, i32*, i32, i32*, i32, i32* }

@QLINK_IE_SET_BEACON_IES = common dso_local global i32 0, align 4
@QLINK_IE_SET_PROBE_RESP_IES = common dso_local global i32 0, align 4
@QLINK_IE_SET_ASSOC_RESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qtnf_vif*, %struct.cfg80211_beacon_data*)* @qtnf_mgmt_set_appie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qtnf_mgmt_set_appie(%struct.qtnf_vif* %0, %struct.cfg80211_beacon_data* %1) #0 {
  %3 = alloca %struct.qtnf_vif*, align 8
  %4 = alloca %struct.cfg80211_beacon_data*, align 8
  %5 = alloca i32, align 4
  store %struct.qtnf_vif* %0, %struct.qtnf_vif** %3, align 8
  store %struct.cfg80211_beacon_data* %1, %struct.cfg80211_beacon_data** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %7 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %6, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %12 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %2
  %16 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %17 = load i32, i32* @QLINK_IE_SET_BEACON_IES, align 4
  %18 = call i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %16, i32 %17, i32* null, i32 0)
  store i32 %18, i32* %5, align 4
  br label %29

19:                                               ; preds = %10
  %20 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %21 = load i32, i32* @QLINK_IE_SET_BEACON_IES, align 4
  %22 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %23 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %26 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %20, i32 %21, i32* %24, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %19, %15
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  br label %86

33:                                               ; preds = %29
  %34 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %35 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %34, i32 0, i32 3
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %40 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %47, label %43

43:                                               ; preds = %38, %33
  %44 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %45 = load i32, i32* @QLINK_IE_SET_PROBE_RESP_IES, align 4
  %46 = call i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %44, i32 %45, i32* null, i32 0)
  store i32 %46, i32* %5, align 4
  br label %57

47:                                               ; preds = %38
  %48 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %49 = load i32, i32* @QLINK_IE_SET_PROBE_RESP_IES, align 4
  %50 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %51 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %50, i32 0, i32 3
  %52 = load i32*, i32** %51, align 8
  %53 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %54 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %48, i32 %49, i32* %52, i32 %55)
  store i32 %56, i32* %5, align 4
  br label %57

57:                                               ; preds = %47, %43
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  br label %86

61:                                               ; preds = %57
  %62 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %63 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %68 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %75, label %71

71:                                               ; preds = %66, %61
  %72 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %73 = load i32, i32* @QLINK_IE_SET_ASSOC_RESP, align 4
  %74 = call i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %72, i32 %73, i32* null, i32 0)
  store i32 %74, i32* %5, align 4
  br label %85

75:                                               ; preds = %66
  %76 = load %struct.qtnf_vif*, %struct.qtnf_vif** %3, align 8
  %77 = load i32, i32* @QLINK_IE_SET_ASSOC_RESP, align 4
  %78 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %79 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %82 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif* %76, i32 %77, i32* %80, i32 %83)
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %75, %71
  br label %86

86:                                               ; preds = %85, %60, %32
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @qtnf_cmd_send_mgmt_set_appie(%struct.qtnf_vif*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
