; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_upload_beacon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_upload_beacon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.ieee80211_mgmt = type { i32 }
%struct.wsm_template_frame = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@WSM_FRAME_TYPE_BEACON = common dso_local global i32 0, align 4
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MONITOR = common dso_local global i64 0, align 8
@NL80211_IFTYPE_UNSPECIFIED = common dso_local global i64 0, align 8
@WSM_TRANSMIT_RATE_6 = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IEEE80211_FTYPE_MGMT = common dso_local global i32 0, align 4
@IEEE80211_STYPE_PROBE_RESP = common dso_local global i32 0, align 4
@WSM_FRAME_TYPE_PROBE_RESPONSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_upload_beacon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_upload_beacon(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca %struct.wsm_template_frame, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %9, align 8
  %10 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 1
  %11 = load i32, i32* @WSM_FRAME_TYPE_BEACON, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %30, label %18

18:                                               ; preds = %1
  %19 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %20 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @NL80211_IFTYPE_MONITOR, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @NL80211_IFTYPE_UNSPECIFIED, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %18, %1
  br label %92

31:                                               ; preds = %24
  %32 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %33 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %31
  %39 = load i32, i32* @WSM_TRANSMIT_RATE_6, align 4
  %40 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %31
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %43 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 1
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = call %struct.TYPE_4__* @ieee80211_beacon_get_tim(i32 %44, %struct.TYPE_5__* %47, i32* %7, i32* %8)
  %49 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 0
  store %struct.TYPE_4__* %48, %struct.TYPE_4__** %49, align 8
  %50 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 0
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %56, label %53

53:                                               ; preds = %41
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %97

56:                                               ; preds = %41
  %57 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %58 = call i32 @wsm_set_template_frame(%struct.cw1200_common* %57, %struct.wsm_template_frame* %6)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %92

62:                                               ; preds = %56
  %63 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = bitcast i8* %67 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %68, %struct.ieee80211_mgmt** %5, align 8
  %69 = load i32, i32* @IEEE80211_FTYPE_MGMT, align 4
  %70 = load i32, i32* @IEEE80211_STYPE_PROBE_RESP, align 4
  %71 = or i32 %69, %70
  %72 = call i32 @__cpu_to_le16(i32 %71)
  %73 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %74 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  %75 = load i32, i32* @WSM_FRAME_TYPE_PROBE_RESPONSE, align 4
  %76 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 1
  store i32 %75, i32* %76, align 8
  %77 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %78 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %62
  %84 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %85 = call i32 @wsm_set_probe_responder(%struct.cw1200_common* %84, i32 1)
  store i32 %85, i32* %4, align 4
  br label %91

86:                                               ; preds = %62
  %87 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %88 = call i32 @wsm_set_template_frame(%struct.cw1200_common* %87, %struct.wsm_template_frame* %6)
  store i32 %88, i32* %4, align 4
  %89 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %90 = call i32 @wsm_set_probe_responder(%struct.cw1200_common* %89, i32 0)
  br label %91

91:                                               ; preds = %86, %83
  br label %92

92:                                               ; preds = %91, %61, %30
  %93 = getelementptr inbounds %struct.wsm_template_frame, %struct.wsm_template_frame* %6, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @dev_kfree_skb(%struct.TYPE_4__* %94)
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %92, %53
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.TYPE_4__* @ieee80211_beacon_get_tim(i32, %struct.TYPE_5__*, i32*, i32*) #1

declare dso_local i32 @wsm_set_template_frame(%struct.cw1200_common*, %struct.wsm_template_frame*) #1

declare dso_local i32 @__cpu_to_le16(i32) #1

declare dso_local i32 @wsm_set_probe_responder(%struct.cw1200_common*, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
