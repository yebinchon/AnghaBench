; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_sched_scan_ssid_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_scan.c_wlcore_scan_sched_scan_ssid_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.cfg80211_sched_scan_request = type { i32, i32, %struct.cfg80211_ssid*, %struct.cfg80211_match_set* }
%struct.cfg80211_ssid = type { i64, i32 }
%struct.cfg80211_match_set = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wl1271_cmd_sched_scan_ssid_list = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, i8*, i32 }

@DEBUG_CMD = common dso_local global i32 0, align 4
@DEBUG_SCAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"cmd sched scan ssid list\00", align 1
@SCAN_SSID_FILTER_ANY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SCAN_SSID_FILTER_DISABLED = common dso_local global i32 0, align 4
@SCAN_SSID_TYPE_HIDDEN = common dso_local global i8* null, align 8
@SCAN_SSID_TYPE_PUBLIC = common dso_local global i8* null, align 8
@SCAN_SSID_FILTER_LIST = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@CMD_CONNECTION_SCAN_SSID_CFG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cmd sched scan ssid list failed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wlcore_scan_sched_scan_ssid_list(%struct.wl1271* %0, %struct.wl12xx_vif* %1, %struct.cfg80211_sched_scan_request* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wl1271*, align 8
  %6 = alloca %struct.wl12xx_vif*, align 8
  %7 = alloca %struct.cfg80211_sched_scan_request*, align 8
  %8 = alloca %struct.wl1271_cmd_sched_scan_ssid_list*, align 8
  %9 = alloca %struct.cfg80211_match_set*, align 8
  %10 = alloca %struct.cfg80211_ssid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %5, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %6, align 8
  store %struct.cfg80211_sched_scan_request* %2, %struct.cfg80211_sched_scan_request** %7, align 8
  store %struct.wl1271_cmd_sched_scan_ssid_list* null, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %16 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %17 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %16, i32 0, i32 3
  %18 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %17, align 8
  store %struct.cfg80211_match_set* %18, %struct.cfg80211_match_set** %9, align 8
  %19 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %20 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %19, i32 0, i32 2
  %21 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %20, align 8
  store %struct.cfg80211_ssid* %21, %struct.cfg80211_ssid** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %22 = load i32, i32* @DEBUG_CMD, align 4
  %23 = load i32, i32* @DEBUG_SCAN, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @wl1271_debug(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %13, align 4
  br label %26

26:                                               ; preds = %45, %3
  %27 = load i32, i32* %13, align 4
  %28 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %29 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %48

32:                                               ; preds = %26
  %33 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %34 = load i32, i32* %13, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %33, i64 %35
  %37 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %15, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %15, align 4
  br label %44

44:                                               ; preds = %41, %32
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %13, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %13, align 4
  br label %26

48:                                               ; preds = %26
  %49 = load i32, i32* %15, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %71, label %51

51:                                               ; preds = %48
  %52 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %53 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %69

56:                                               ; preds = %51
  %57 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %58 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = icmp eq i32 %59, 1
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %63 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %62, i32 0, i32 2
  %64 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %63, align 8
  %65 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %64, i64 0
  %66 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %61, %51
  %70 = load i32, i32* @SCAN_SSID_FILTER_ANY, align 4
  store i32 %70, i32* %12, align 4
  br label %366

71:                                               ; preds = %61, %56, %48
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call %struct.wl1271_cmd_sched_scan_ssid_list* @kzalloc(i32 24, i32 %72)
  store %struct.wl1271_cmd_sched_scan_ssid_list* %73, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %74 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %75 = icmp ne %struct.wl1271_cmd_sched_scan_ssid_list* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %11, align 4
  br label %366

79:                                               ; preds = %71
  %80 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %6, align 8
  %81 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %84 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* %15, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %161, label %87

87:                                               ; preds = %79
  %88 = load i32, i32* @SCAN_SSID_FILTER_DISABLED, align 4
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %89

89:                                               ; preds = %157, %87
  %90 = load i32, i32* %13, align 4
  %91 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %92 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp slt i32 %90, %93
  br i1 %94, label %95, label %160

95:                                               ; preds = %89
  %96 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %97 = load i32, i32* %13, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %96, i64 %98
  %100 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %95
  %104 = load i8*, i8** @SCAN_SSID_TYPE_HIDDEN, align 8
  br label %107

105:                                              ; preds = %95
  %106 = load i8*, i8** @SCAN_SSID_TYPE_PUBLIC, align 8
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i8* [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %110 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %109, i32 0, i32 1
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %110, align 8
  %112 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %113 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  store i8* %108, i8** %116, align 8
  %117 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %118 = load i32, i32* %13, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %117, i64 %119
  %121 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %124 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %123, i32 0, i32 1
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %127 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  store i64 %122, i64* %130, align 8
  %131 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %132 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %131, i32 0, i32 1
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %135 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %141 = load i32, i32* %13, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %140, i64 %142
  %144 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %10, align 8
  %147 = load i32, i32* %13, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %146, i64 %148
  %150 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = call i32 @memcpy(i32 %139, i32 %145, i64 %151)
  %153 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %154 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %107
  %158 = load i32, i32* %13, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %13, align 4
  br label %89

160:                                              ; preds = %89
  br label %353

161:                                              ; preds = %79
  %162 = load i32, i32* @SCAN_SSID_FILTER_LIST, align 4
  store i32 %162, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %163

163:                                              ; preds = %232, %161
  %164 = load i32, i32* %13, align 4
  %165 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %166 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %235

169:                                              ; preds = %163
  %170 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %171 = load i32, i32* %13, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %170, i64 %172
  %174 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %179, label %178

178:                                              ; preds = %169
  br label %232

179:                                              ; preds = %169
  %180 = load i8*, i8** @SCAN_SSID_TYPE_PUBLIC, align 8
  %181 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %182 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %185 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  store i8* %180, i8** %188, align 8
  %189 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %190 = load i32, i32* %13, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %189, i64 %191
  %193 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %197 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %196, i32 0, i32 1
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %197, align 8
  %199 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %200 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %199, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i64 %201
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  store i64 %195, i64* %203, align 8
  %204 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %205 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %204, i32 0, i32 1
  %206 = load %struct.TYPE_4__*, %struct.TYPE_4__** %205, align 8
  %207 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %208 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %214 = load i32, i32* %13, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %213, i64 %215
  %217 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load %struct.cfg80211_match_set*, %struct.cfg80211_match_set** %9, align 8
  %221 = load i32, i32* %13, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %220, i64 %222
  %224 = getelementptr inbounds %struct.cfg80211_match_set, %struct.cfg80211_match_set* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @memcpy(i32 %212, i32 %219, i64 %226)
  %228 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %229 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %229, align 8
  br label %232

232:                                              ; preds = %179, %178
  %233 = load i32, i32* %13, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %13, align 4
  br label %163

235:                                              ; preds = %163
  %236 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %237 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %253, label %240

240:                                              ; preds = %235
  %241 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %242 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %245, label %352

245:                                              ; preds = %240
  %246 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %247 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %246, i32 0, i32 2
  %248 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %247, align 8
  %249 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %248, i64 0
  %250 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %249, i32 0, i32 0
  %251 = load i64, i64* %250, align 8
  %252 = icmp sgt i64 %251, 0
  br i1 %252, label %253, label %352

253:                                              ; preds = %245, %235
  store i32 0, i32* %13, align 4
  br label %254

254:                                              ; preds = %348, %253
  %255 = load i32, i32* %13, align 4
  %256 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %257 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp slt i32 %255, %258
  br i1 %259, label %260, label %351

260:                                              ; preds = %254
  %261 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %262 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %261, i32 0, i32 2
  %263 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %262, align 8
  %264 = load i32, i32* %13, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %263, i64 %265
  %267 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %260
  br label %348

271:                                              ; preds = %260
  store i32 0, i32* %14, align 4
  br label %272

272:                                              ; preds = %334, %271
  %273 = load i32, i32* %14, align 4
  %274 = sext i32 %273 to i64
  %275 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %276 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %275, i32 0, i32 0
  %277 = load i64, i64* %276, align 8
  %278 = icmp ult i64 %274, %277
  br i1 %278, label %279, label %337

279:                                              ; preds = %272
  %280 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %281 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %280, i32 0, i32 2
  %282 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %281, align 8
  %283 = load i32, i32* %13, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %282, i64 %284
  %286 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %285, i32 0, i32 0
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %289 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %288, i32 0, i32 1
  %290 = load %struct.TYPE_4__*, %struct.TYPE_4__** %289, align 8
  %291 = load i32, i32* %14, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %290, i64 %292
  %294 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %287, %295
  br i1 %296, label %297, label %333

297:                                              ; preds = %279
  %298 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %299 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %298, i32 0, i32 2
  %300 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %299, align 8
  %301 = load i32, i32* %13, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %300, i64 %302
  %304 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %307 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %306, i32 0, i32 1
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = load i32, i32* %14, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %308, i64 %310
  %312 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = load %struct.cfg80211_sched_scan_request*, %struct.cfg80211_sched_scan_request** %7, align 8
  %315 = getelementptr inbounds %struct.cfg80211_sched_scan_request, %struct.cfg80211_sched_scan_request* %314, i32 0, i32 2
  %316 = load %struct.cfg80211_ssid*, %struct.cfg80211_ssid** %315, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %316, i64 %318
  %320 = getelementptr inbounds %struct.cfg80211_ssid, %struct.cfg80211_ssid* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = call i32 @memcmp(i32 %305, i32 %313, i64 %321)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %333, label %324

324:                                              ; preds = %297
  %325 = load i8*, i8** @SCAN_SSID_TYPE_HIDDEN, align 8
  %326 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %327 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %326, i32 0, i32 1
  %328 = load %struct.TYPE_4__*, %struct.TYPE_4__** %327, align 8
  %329 = load i32, i32* %14, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %328, i64 %330
  %332 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %331, i32 0, i32 1
  store i8* %325, i8** %332, align 8
  br label %337

333:                                              ; preds = %297, %279
  br label %334

334:                                              ; preds = %333
  %335 = load i32, i32* %14, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %14, align 4
  br label %272

337:                                              ; preds = %324, %272
  %338 = load i32, i32* %14, align 4
  %339 = sext i32 %338 to i64
  %340 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %341 = getelementptr inbounds %struct.wl1271_cmd_sched_scan_ssid_list, %struct.wl1271_cmd_sched_scan_ssid_list* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = icmp eq i64 %339, %342
  br i1 %343, label %344, label %347

344:                                              ; preds = %337
  %345 = load i32, i32* @EINVAL, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %11, align 4
  br label %363

347:                                              ; preds = %337
  br label %348

348:                                              ; preds = %347, %270
  %349 = load i32, i32* %13, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %13, align 4
  br label %254

351:                                              ; preds = %254
  br label %352

352:                                              ; preds = %351, %245, %240
  br label %353

353:                                              ; preds = %352, %160
  %354 = load %struct.wl1271*, %struct.wl1271** %5, align 8
  %355 = load i32, i32* @CMD_CONNECTION_SCAN_SSID_CFG, align 4
  %356 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %357 = call i32 @wl1271_cmd_send(%struct.wl1271* %354, i32 %355, %struct.wl1271_cmd_sched_scan_ssid_list* %356, i32 24, i32 0)
  store i32 %357, i32* %11, align 4
  %358 = load i32, i32* %11, align 4
  %359 = icmp slt i32 %358, 0
  br i1 %359, label %360, label %362

360:                                              ; preds = %353
  %361 = call i32 @wl1271_error(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %363

362:                                              ; preds = %353
  br label %363

363:                                              ; preds = %362, %360, %344
  %364 = load %struct.wl1271_cmd_sched_scan_ssid_list*, %struct.wl1271_cmd_sched_scan_ssid_list** %8, align 8
  %365 = call i32 @kfree(%struct.wl1271_cmd_sched_scan_ssid_list* %364)
  br label %366

366:                                              ; preds = %363, %76, %69
  %367 = load i32, i32* %11, align 4
  %368 = icmp slt i32 %367, 0
  br i1 %368, label %369, label %371

369:                                              ; preds = %366
  %370 = load i32, i32* %11, align 4
  store i32 %370, i32* %4, align 4
  br label %373

371:                                              ; preds = %366
  %372 = load i32, i32* %12, align 4
  store i32 %372, i32* %4, align 4
  br label %373

373:                                              ; preds = %371, %369
  %374 = load i32, i32* %4, align 4
  ret i32 %374
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.wl1271_cmd_sched_scan_ssid_list* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i64) #1

declare dso_local i32 @memcmp(i32, i32, i64) #1

declare dso_local i32 @wl1271_cmd_send(%struct.wl1271*, i32, %struct.wl1271_cmd_sched_scan_ssid_list*, i32, i32) #1

declare dso_local i32 @wl1271_error(i8*) #1

declare dso_local i32 @kfree(%struct.wl1271_cmd_sched_scan_ssid_list*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
