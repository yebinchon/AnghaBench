; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32, i64, %struct.host_if_drv* }
%struct.host_if_drv = type { i64, i32, %struct.wilc_vif*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { void (i32, %struct.wilc_rcvd_net_info*, i8*)*, i8*, i64 }
%struct.wilc_rcvd_net_info = type opaque
%struct.cfg80211_scan_request = type { i32, i32, i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i32 }
%struct.wid = type { i64*, i32, i8*, i32 }

@HOST_IF_SCANNING = common dso_local global i64 0, align 8
@HOST_IF_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"Already scan\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Don't do obss scan\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@WID_SSID_PROBE_REQ = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i8* null, align 8
@WID_INFO_ELEMENT_PROBE = common dso_local global i32 0, align 4
@WID_BIN_DATA = common dso_local global i8* null, align 8
@WID_SCAN_TYPE = common dso_local global i32 0, align 4
@WID_CHAR = common dso_local global i8* null, align 8
@WILC_FW_PASSIVE_SCAN = common dso_local global i64 0, align 8
@WID_PASSIVE_SCAN_TIME = common dso_local global i32 0, align 4
@WID_SHORT = common dso_local global i8* null, align 8
@WILC_HIF_SCAN_TIMEOUT_MS = common dso_local global i64 0, align 8
@WID_SCAN_CHANNEL_LIST = common dso_local global i32 0, align 4
@WID_START_SCAN_REQ = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to send scan parameters\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_scan(%struct.wilc_vif* %0, i64 %1, i64 %2, i64* %3, i64 %4, {}* %5, i8* %6, %struct.cfg80211_scan_request* %7) #0 {
  %9 = alloca %struct.wilc_vif*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64, align 8
  %14 = alloca {}*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.cfg80211_scan_request*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [5 x %struct.wid], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64*, align 8
  %25 = alloca %struct.host_if_drv*, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i64* %3, i64** %12, align 8
  store i64 %4, i64* %13, align 8
  store {}* %5, {}** %14, align 8
  store i8* %6, i8** %15, align 8
  store %struct.cfg80211_scan_request* %7, %struct.cfg80211_scan_request** %16, align 8
  store i32 0, i32* %17, align 4
  store i64 0, i64* %19, align 8
  store i64 0, i64* %23, align 8
  store i64* null, i64** %24, align 8
  %26 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %27 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %26, i32 0, i32 2
  %28 = load %struct.host_if_drv*, %struct.host_if_drv** %27, align 8
  store %struct.host_if_drv* %28, %struct.host_if_drv** %25, align 8
  %29 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %30 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @HOST_IF_SCANNING, align 8
  %33 = icmp sge i64 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %8
  %35 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %36 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @HOST_IF_CONNECTED, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %34
  %41 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %42 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @netdev_err(i32 %43, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EBUSY, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %17, align 4
  br label %345

47:                                               ; preds = %34, %8
  %48 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %49 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %54 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @netdev_err(i32 %55, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %57 = load i32, i32* @EBUSY, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %17, align 4
  br label %345

59:                                               ; preds = %47
  %60 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %61 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %60, i32 0, i32 3
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %64 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %174

67:                                               ; preds = %59
  store i64 0, i64* %20, align 8
  br label %68

68:                                               ; preds = %86, %67
  %69 = load i64, i64* %20, align 8
  %70 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %71 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = sext i32 %72 to i64
  %74 = icmp ult i64 %69, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %68
  %76 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %77 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %76, i32 0, i32 4
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = load i64, i64* %20, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  %84 = load i64, i64* %23, align 8
  %85 = add nsw i64 %84, %83
  store i64 %85, i64* %23, align 8
  br label %86

86:                                               ; preds = %75
  %87 = load i64, i64* %20, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %20, align 8
  br label %68

89:                                               ; preds = %68
  %90 = load i64, i64* %23, align 8
  %91 = add nsw i64 %90, 1
  %92 = load i32, i32* @GFP_KERNEL, align 4
  %93 = call i64* @kmalloc(i64 %91, i32 %92)
  store i64* %93, i64** %24, align 8
  %94 = load i64*, i64** %24, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %96, label %173

96:                                               ; preds = %89
  %97 = load i32, i32* @WID_SSID_PROBE_REQ, align 4
  %98 = load i64, i64* %19, align 8
  %99 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %98
  %100 = getelementptr inbounds %struct.wid, %struct.wid* %99, i32 0, i32 3
  store i32 %97, i32* %100, align 8
  %101 = load i8*, i8** @WID_STR, align 8
  %102 = load i64, i64* %19, align 8
  %103 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %102
  %104 = getelementptr inbounds %struct.wid, %struct.wid* %103, i32 0, i32 2
  store i8* %101, i8** %104, align 16
  %105 = load i64*, i64** %24, align 8
  %106 = load i64, i64* %19, align 8
  %107 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.wid, %struct.wid* %107, i32 0, i32 0
  store i64* %105, i64** %108, align 16
  %109 = load i64, i64* %19, align 8
  %110 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %109
  %111 = getelementptr inbounds %struct.wid, %struct.wid* %110, i32 0, i32 0
  %112 = load i64*, i64** %111, align 16
  store i64* %112, i64** %22, align 8
  %113 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %114 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = sext i32 %115 to i64
  %117 = load i64*, i64** %22, align 8
  %118 = getelementptr inbounds i64, i64* %117, i32 1
  store i64* %118, i64** %22, align 8
  store i64 %116, i64* %117, align 8
  store i64 0, i64* %20, align 8
  br label %119

119:                                              ; preds = %161, %96
  %120 = load i64, i64* %20, align 8
  %121 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %122 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = icmp ult i64 %120, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %119
  %127 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %128 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %127, i32 0, i32 4
  %129 = load %struct.TYPE_3__*, %struct.TYPE_3__** %128, align 8
  %130 = load i64, i64* %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %22, align 8
  %135 = getelementptr inbounds i64, i64* %134, i32 1
  store i64* %135, i64** %22, align 8
  store i64 %133, i64* %134, align 8
  %136 = load i64*, i64** %22, align 8
  %137 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %138 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %137, i32 0, i32 4
  %139 = load %struct.TYPE_3__*, %struct.TYPE_3__** %138, align 8
  %140 = load i64, i64* %20, align 8
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i64 %140
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %145 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %144, i32 0, i32 4
  %146 = load %struct.TYPE_3__*, %struct.TYPE_3__** %145, align 8
  %147 = load i64, i64* %20, align 8
  %148 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i64 %147
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = call i32 @memcpy(i64* %136, i32 %143, i64 %150)
  %152 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %153 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %152, i32 0, i32 4
  %154 = load %struct.TYPE_3__*, %struct.TYPE_3__** %153, align 8
  %155 = load i64, i64* %20, align 8
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = load i64*, i64** %22, align 8
  %160 = getelementptr inbounds i64, i64* %159, i64 %158
  store i64* %160, i64** %22, align 8
  br label %161

161:                                              ; preds = %126
  %162 = load i64, i64* %20, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %20, align 8
  br label %119

164:                                              ; preds = %119
  %165 = load i64, i64* %23, align 8
  %166 = add nsw i64 %165, 1
  %167 = trunc i64 %166 to i32
  %168 = load i64, i64* %19, align 8
  %169 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %168
  %170 = getelementptr inbounds %struct.wid, %struct.wid* %169, i32 0, i32 1
  store i32 %167, i32* %170, align 8
  %171 = load i64, i64* %19, align 8
  %172 = add i64 %171, 1
  store i64 %172, i64* %19, align 8
  br label %173

173:                                              ; preds = %164, %89
  br label %174

174:                                              ; preds = %173, %59
  %175 = load i32, i32* @WID_INFO_ELEMENT_PROBE, align 4
  %176 = load i64, i64* %19, align 8
  %177 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %176
  %178 = getelementptr inbounds %struct.wid, %struct.wid* %177, i32 0, i32 3
  store i32 %175, i32* %178, align 8
  %179 = load i8*, i8** @WID_BIN_DATA, align 8
  %180 = load i64, i64* %19, align 8
  %181 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %180
  %182 = getelementptr inbounds %struct.wid, %struct.wid* %181, i32 0, i32 2
  store i8* %179, i8** %182, align 16
  %183 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %184 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %183, i32 0, i32 3
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i64*
  %187 = load i64, i64* %19, align 8
  %188 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %187
  %189 = getelementptr inbounds %struct.wid, %struct.wid* %188, i32 0, i32 0
  store i64* %186, i64** %189, align 16
  %190 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %191 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = load i64, i64* %19, align 8
  %194 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %193
  %195 = getelementptr inbounds %struct.wid, %struct.wid* %194, i32 0, i32 1
  store i32 %192, i32* %195, align 8
  %196 = load i64, i64* %19, align 8
  %197 = add i64 %196, 1
  store i64 %197, i64* %19, align 8
  %198 = load i32, i32* @WID_SCAN_TYPE, align 4
  %199 = load i64, i64* %19, align 8
  %200 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %199
  %201 = getelementptr inbounds %struct.wid, %struct.wid* %200, i32 0, i32 3
  store i32 %198, i32* %201, align 8
  %202 = load i8*, i8** @WID_CHAR, align 8
  %203 = load i64, i64* %19, align 8
  %204 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %203
  %205 = getelementptr inbounds %struct.wid, %struct.wid* %204, i32 0, i32 2
  store i8* %202, i8** %205, align 16
  %206 = load i64, i64* %19, align 8
  %207 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %206
  %208 = getelementptr inbounds %struct.wid, %struct.wid* %207, i32 0, i32 1
  store i32 1, i32* %208, align 8
  %209 = load i64, i64* %19, align 8
  %210 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %209
  %211 = getelementptr inbounds %struct.wid, %struct.wid* %210, i32 0, i32 0
  store i64* %11, i64** %211, align 16
  %212 = load i64, i64* %19, align 8
  %213 = add i64 %212, 1
  store i64 %213, i64* %19, align 8
  %214 = load i64, i64* %11, align 8
  %215 = load i64, i64* @WILC_FW_PASSIVE_SCAN, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %247

217:                                              ; preds = %174
  %218 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %219 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %218, i32 0, i32 2
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %247

222:                                              ; preds = %217
  %223 = load i32, i32* @WID_PASSIVE_SCAN_TIME, align 4
  %224 = load i64, i64* %19, align 8
  %225 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %224
  %226 = getelementptr inbounds %struct.wid, %struct.wid* %225, i32 0, i32 3
  store i32 %223, i32* %226, align 8
  %227 = load i8*, i8** @WID_SHORT, align 8
  %228 = load i64, i64* %19, align 8
  %229 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %228
  %230 = getelementptr inbounds %struct.wid, %struct.wid* %229, i32 0, i32 2
  store i8* %227, i8** %230, align 16
  %231 = load i64, i64* %19, align 8
  %232 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %231
  %233 = getelementptr inbounds %struct.wid, %struct.wid* %232, i32 0, i32 1
  store i32 4, i32* %233, align 8
  %234 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %235 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %234, i32 0, i32 2
  %236 = load i64, i64* %19, align 8
  %237 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %236
  %238 = getelementptr inbounds %struct.wid, %struct.wid* %237, i32 0, i32 0
  store i64* %235, i64** %238, align 16
  %239 = load i64, i64* %19, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %19, align 8
  %241 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %16, align 8
  %242 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %241, i32 0, i32 2
  %243 = load i64, i64* %242, align 8
  %244 = load i64, i64* %13, align 8
  %245 = mul nsw i64 %243, %244
  %246 = add nsw i64 %245, 500
  store i64 %246, i64* %21, align 8
  br label %249

247:                                              ; preds = %217, %174
  %248 = load i64, i64* @WILC_HIF_SCAN_TIMEOUT_MS, align 8
  store i64 %248, i64* %21, align 8
  br label %249

249:                                              ; preds = %247, %222
  %250 = load i32, i32* @WID_SCAN_CHANNEL_LIST, align 4
  %251 = load i64, i64* %19, align 8
  %252 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %251
  %253 = getelementptr inbounds %struct.wid, %struct.wid* %252, i32 0, i32 3
  store i32 %250, i32* %253, align 8
  %254 = load i8*, i8** @WID_BIN_DATA, align 8
  %255 = load i64, i64* %19, align 8
  %256 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %255
  %257 = getelementptr inbounds %struct.wid, %struct.wid* %256, i32 0, i32 2
  store i8* %254, i8** %257, align 16
  %258 = load i64*, i64** %12, align 8
  %259 = icmp ne i64* %258, null
  br i1 %259, label %260, label %285

260:                                              ; preds = %249
  %261 = load i64, i64* %13, align 8
  %262 = icmp sgt i64 %261, 0
  br i1 %262, label %263, label %285

263:                                              ; preds = %260
  store i64 0, i64* %20, align 8
  br label %264

264:                                              ; preds = %281, %263
  %265 = load i64, i64* %20, align 8
  %266 = load i64, i64* %13, align 8
  %267 = icmp ult i64 %265, %266
  br i1 %267, label %268, label %284

268:                                              ; preds = %264
  %269 = load i64*, i64** %12, align 8
  %270 = load i64, i64* %20, align 8
  %271 = getelementptr inbounds i64, i64* %269, i64 %270
  %272 = load i64, i64* %271, align 8
  %273 = icmp sgt i64 %272, 0
  br i1 %273, label %274, label %280

274:                                              ; preds = %268
  %275 = load i64*, i64** %12, align 8
  %276 = load i64, i64* %20, align 8
  %277 = getelementptr inbounds i64, i64* %275, i64 %276
  %278 = load i64, i64* %277, align 8
  %279 = sub nsw i64 %278, 1
  store i64 %279, i64* %277, align 8
  br label %280

280:                                              ; preds = %274, %268
  br label %281

281:                                              ; preds = %280
  %282 = load i64, i64* %20, align 8
  %283 = add i64 %282, 1
  store i64 %283, i64* %20, align 8
  br label %264

284:                                              ; preds = %264
  br label %285

285:                                              ; preds = %284, %260, %249
  %286 = load i64*, i64** %12, align 8
  %287 = load i64, i64* %19, align 8
  %288 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %287
  %289 = getelementptr inbounds %struct.wid, %struct.wid* %288, i32 0, i32 0
  store i64* %286, i64** %289, align 16
  %290 = load i64, i64* %13, align 8
  %291 = trunc i64 %290 to i32
  %292 = load i64, i64* %19, align 8
  %293 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %292
  %294 = getelementptr inbounds %struct.wid, %struct.wid* %293, i32 0, i32 1
  store i32 %291, i32* %294, align 8
  %295 = load i64, i64* %19, align 8
  %296 = add i64 %295, 1
  store i64 %296, i64* %19, align 8
  %297 = load i32, i32* @WID_START_SCAN_REQ, align 4
  %298 = load i64, i64* %19, align 8
  %299 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %298
  %300 = getelementptr inbounds %struct.wid, %struct.wid* %299, i32 0, i32 3
  store i32 %297, i32* %300, align 8
  %301 = load i8*, i8** @WID_CHAR, align 8
  %302 = load i64, i64* %19, align 8
  %303 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %302
  %304 = getelementptr inbounds %struct.wid, %struct.wid* %303, i32 0, i32 2
  store i8* %301, i8** %304, align 16
  %305 = load i64, i64* %19, align 8
  %306 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %305
  %307 = getelementptr inbounds %struct.wid, %struct.wid* %306, i32 0, i32 1
  store i32 1, i32* %307, align 8
  %308 = load i64, i64* %19, align 8
  %309 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 %308
  %310 = getelementptr inbounds %struct.wid, %struct.wid* %309, i32 0, i32 0
  store i64* %10, i64** %310, align 16
  %311 = load i64, i64* %19, align 8
  %312 = add i64 %311, 1
  store i64 %312, i64* %19, align 8
  %313 = load {}*, {}** %14, align 8
  %314 = bitcast {}* %313 to void (i32, %struct.wilc_rcvd_net_info*, i8*)*
  %315 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %316 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %315, i32 0, i32 3
  %317 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %316, i32 0, i32 0
  store void (i32, %struct.wilc_rcvd_net_info*, i8*)* %314, void (i32, %struct.wilc_rcvd_net_info*, i8*)** %317, align 8
  %318 = load i8*, i8** %15, align 8
  %319 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %320 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %319, i32 0, i32 3
  %321 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %320, i32 0, i32 1
  store i8* %318, i8** %321, align 8
  %322 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %323 = load i32, i32* @WILC_SET_CFG, align 4
  %324 = getelementptr inbounds [5 x %struct.wid], [5 x %struct.wid]* %18, i64 0, i64 0
  %325 = load i64, i64* %19, align 8
  %326 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %322, i32 %323, %struct.wid* %324, i64 %325)
  store i32 %326, i32* %17, align 4
  %327 = load i32, i32* %17, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %334

329:                                              ; preds = %285
  %330 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %331 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 8
  %333 = call i32 @netdev_err(i32 %332, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %345

334:                                              ; preds = %285
  %335 = load %struct.wilc_vif*, %struct.wilc_vif** %9, align 8
  %336 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %337 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %336, i32 0, i32 2
  store %struct.wilc_vif* %335, %struct.wilc_vif** %337, align 8
  %338 = load %struct.host_if_drv*, %struct.host_if_drv** %25, align 8
  %339 = getelementptr inbounds %struct.host_if_drv, %struct.host_if_drv* %338, i32 0, i32 1
  %340 = load i64, i64* @jiffies, align 8
  %341 = load i64, i64* %21, align 8
  %342 = call i64 @msecs_to_jiffies(i64 %341)
  %343 = add nsw i64 %340, %342
  %344 = call i32 @mod_timer(i32* %339, i64 %343)
  br label %345

345:                                              ; preds = %334, %329, %52, %40
  %346 = load i64*, i64** %24, align 8
  %347 = call i32 @kfree(i64* %346)
  %348 = load i32, i32* %17, align 4
  ret i32 %348
}

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i64* @kmalloc(i64, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i64) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
