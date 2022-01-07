; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_main.c_wl1251_op_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.TYPE_6__, %struct.wl1251* }
%struct.TYPE_6__ = type { i32 }
%struct.wl1251 = type { i32, i32, %struct.TYPE_5__*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_scan_request = type { %struct.cfg80211_scan_request }
%struct.cfg80211_scan_request = type { i32, i32, i64, i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64, i32* }
%struct.sk_buff = type { i32, i32 }

@DEBUG_MAC80211 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"mac80211 hw scan\00", align 1
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"scan already in progress\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_CONF_IDLE = common dso_local global i32 0, align 4
@STATION_ACTIVE_MODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CMD_PROBE_REQ = common dso_local global i32 0, align 4
@WL1251_SCAN_NUM_PROBES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"scan failed %d\00", align 1
@STATION_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*, %struct.ieee80211_vif*, %struct.ieee80211_scan_request*)* @wl1251_op_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl1251_op_hw_scan(%struct.ieee80211_hw* %0, %struct.ieee80211_vif* %1, %struct.ieee80211_scan_request* %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca %struct.ieee80211_vif*, align 8
  %6 = alloca %struct.ieee80211_scan_request*, align 8
  %7 = alloca %struct.cfg80211_scan_request*, align 8
  %8 = alloca %struct.wl1251*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store %struct.ieee80211_vif* %1, %struct.ieee80211_vif** %5, align 8
  store %struct.ieee80211_scan_request* %2, %struct.ieee80211_scan_request** %6, align 8
  %13 = load %struct.ieee80211_scan_request*, %struct.ieee80211_scan_request** %6, align 8
  %14 = getelementptr inbounds %struct.ieee80211_scan_request, %struct.ieee80211_scan_request* %13, i32 0, i32 0
  store %struct.cfg80211_scan_request* %14, %struct.cfg80211_scan_request** %7, align 8
  %15 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %16 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %15, i32 0, i32 1
  %17 = load %struct.wl1251*, %struct.wl1251** %16, align 8
  store %struct.wl1251* %17, %struct.wl1251** %8, align 8
  store i64 0, i64* %10, align 8
  store i32* null, i32** %11, align 8
  %18 = load i32, i32* @DEBUG_MAC80211, align 4
  %19 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %21 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %20, i32 0, i32 5
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %26 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %25, i32 0, i32 4
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %11, align 8
  %31 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %32 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %31, i32 0, i32 4
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %24, %3
  %38 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %39 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %38, i32 0, i32 1
  %40 = call i32 @mutex_lock(i32* %39)
  %41 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %42 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %37
  %46 = load i32, i32* @DEBUG_SCAN, align 4
  %47 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %12, align 4
  br label %184

50:                                               ; preds = %37
  %51 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %52 = call i32 @wl1251_ps_elp_wakeup(%struct.wl1251* %51)
  store i32 %52, i32* %12, align 4
  %53 = load i32, i32* %12, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %184

56:                                               ; preds = %50
  %57 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %58 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %56
  %65 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %66 = load i32, i32* @STATION_ACTIVE_MODE, align 4
  %67 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %181

71:                                               ; preds = %64
  %72 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %73 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %74 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %73, i32 0, i32 7
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %77 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %76, i32 0, i32 6
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %80 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %79, i32 0, i32 5
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %83 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @wl1251_join(%struct.wl1251* %72, i32 %75, i32 %78, i32 %81, i32 %84)
  store i32 %85, i32* %12, align 4
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %71
  br label %181

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %56
  %91 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %92 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %95 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %94, i32 0, i32 2
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = load i64, i64* %10, align 8
  %101 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %102 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = call %struct.sk_buff* @ieee80211_probereq_get(i32 %93, i32 %98, i32* %99, i64 %100, i64 %103)
  store %struct.sk_buff* %104, %struct.sk_buff** %9, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %106 = icmp ne %struct.sk_buff* %105, null
  br i1 %106, label %110, label %107

107:                                              ; preds = %90
  %108 = load i32, i32* @ENOMEM, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %12, align 4
  br label %168

110:                                              ; preds = %90
  %111 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %112 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %124

115:                                              ; preds = %110
  %116 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %117 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %118 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %121 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @skb_put_data(%struct.sk_buff* %116, i32 %119, i64 %122)
  br label %124

124:                                              ; preds = %115, %110
  %125 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %126 = load i32, i32* @CMD_PROBE_REQ, align 4
  %127 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %128 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %131 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @wl1251_cmd_template_set(%struct.wl1251* %125, i32 %126, i32 %129, i32 %132)
  store i32 %133, i32* %12, align 4
  %134 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %135 = call i32 @dev_kfree_skb(%struct.sk_buff* %134)
  %136 = load i32, i32* %12, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %124
  br label %168

139:                                              ; preds = %124
  %140 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %141 = call i32 @wl1251_cmd_trigger_scan_to(%struct.wl1251* %140, i32 0)
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %139
  br label %168

145:                                              ; preds = %139
  %146 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %147 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %146, i32 0, i32 0
  store i32 1, i32* %147, align 8
  %148 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = load i64, i64* %10, align 8
  %151 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %152 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %7, align 8
  %155 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @WL1251_SCAN_NUM_PROBES, align 4
  %158 = call i32 @wl1251_cmd_scan(%struct.wl1251* %148, i32* %149, i64 %150, i32 %153, i32 %156, i32 %157)
  store i32 %158, i32* %12, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp slt i32 %159, 0
  br i1 %160, label %161, label %167

161:                                              ; preds = %145
  %162 = load i32, i32* @DEBUG_SCAN, align 4
  %163 = load i32, i32* %12, align 4
  %164 = call i32 (i32, i8*, ...) @wl1251_debug(i32 %162, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  %165 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %166 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %165, i32 0, i32 0
  store i32 0, i32* %166, align 8
  br label %168

167:                                              ; preds = %145
  br label %181

168:                                              ; preds = %161, %144, %138, %107
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %170 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = load i32, i32* @IEEE80211_CONF_IDLE, align 4
  %174 = and i32 %172, %173
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %180

176:                                              ; preds = %168
  %177 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %178 = load i32, i32* @STATION_IDLE, align 4
  %179 = call i32 @wl1251_ps_set_mode(%struct.wl1251* %177, i32 %178)
  store i32 %179, i32* %12, align 4
  br label %180

180:                                              ; preds = %176, %168
  br label %181

181:                                              ; preds = %180, %167, %88, %70
  %182 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %183 = call i32 @wl1251_ps_elp_sleep(%struct.wl1251* %182)
  br label %184

184:                                              ; preds = %181, %55, %45
  %185 = load %struct.wl1251*, %struct.wl1251** %8, align 8
  %186 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %185, i32 0, i32 1
  %187 = call i32 @mutex_unlock(i32* %186)
  %188 = load i32, i32* %12, align 4
  ret i32 %188
}

declare dso_local i32 @wl1251_debug(i32, i8*, ...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @wl1251_ps_elp_wakeup(%struct.wl1251*) #1

declare dso_local i32 @wl1251_ps_set_mode(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_join(%struct.wl1251*, i32, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @ieee80211_probereq_get(i32, i32, i32*, i64, i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @wl1251_cmd_template_set(%struct.wl1251*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @wl1251_cmd_trigger_scan_to(%struct.wl1251*, i32) #1

declare dso_local i32 @wl1251_cmd_scan(%struct.wl1251*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @wl1251_ps_elp_sleep(%struct.wl1251*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
