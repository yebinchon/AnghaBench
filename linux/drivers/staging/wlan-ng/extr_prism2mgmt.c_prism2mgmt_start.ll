; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { i32, i32, i32, %struct.hfa384x* }
%struct.hfa384x = type { %struct.TYPE_33__ }
%struct.TYPE_33__ = type { i32, i32, i32 }
%struct.p80211msg_dot11req_start = type { %struct.TYPE_37__, %struct.TYPE_36__, %struct.TYPE_35__, %struct.TYPE_34__, %struct.TYPE_32__, %struct.TYPE_31__, %struct.TYPE_30__, %struct.TYPE_29__, %struct.TYPE_28__, %struct.TYPE_27__, %struct.TYPE_26__, %struct.TYPE_25__, %struct.TYPE_24__, %struct.TYPE_23__, %struct.TYPE_44__, %struct.TYPE_43__, %struct.TYPE_42__, %struct.TYPE_41__, %struct.TYPE_40__, %struct.TYPE_39__, %struct.TYPE_38__ }
%struct.TYPE_37__ = type { i32, i64 }
%struct.TYPE_36__ = type { i64 }
%struct.TYPE_35__ = type { i64, i32 }
%struct.TYPE_34__ = type { i64, i32 }
%struct.TYPE_32__ = type { i64, i32 }
%struct.TYPE_31__ = type { i64, i32 }
%struct.TYPE_30__ = type { i64, i32 }
%struct.TYPE_29__ = type { i64, i32 }
%struct.TYPE_28__ = type { i64, i32 }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_26__ = type { i64, i32 }
%struct.TYPE_25__ = type { i64, i32 }
%struct.TYPE_24__ = type { i64, i32 }
%struct.TYPE_23__ = type { i64, i32 }
%struct.TYPE_44__ = type { i64, i32 }
%struct.TYPE_43__ = type { i64, i32 }
%struct.TYPE_42__ = type { i64, i32 }
%struct.TYPE_41__ = type { i32 }
%struct.TYPE_40__ = type { i32 }
%struct.TYPE_39__ = type { i32 }
%struct.TYPE_38__ = type { i32 }
%struct.p80211pstrd = type { i32 }
%struct.hfa384x_bytestr = type { i32 }

@WLAN_MACMODE_NONE = common dso_local global i32 0, align 4
@P80211ENUM_msgitem_status_data_ok = common dso_local global i64 0, align 8
@P80211ENUM_resultcode_not_supported = common dso_local global i32 0, align 4
@HFA384x_RID_CNFOWNSSID = common dso_local global i32 0, align 4
@HFA384x_RID_CNFOWNSSID_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to set CnfOwnSSID\0A\00", align 1
@HFA384x_RID_CNFDESIREDSSID = common dso_local global i32 0, align 4
@HFA384x_RID_CNFDESIREDSSID_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Failed to set CnfDesiredSSID\0A\00", align 1
@HFA384x_RID_CNFPORTTYPE = common dso_local global i32 0, align 4
@HFA384x_RID_CNFAPBCNINT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"Failed to set beacon period=%d.\0A\00", align 1
@HFA384x_RID_CNFOWNCHANNEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Failed to set channel=%d.\0A\00", align 1
@HFA384x_RID_CNFBASICRATES = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to set basicrates=%d.\0A\00", align 1
@HFA384x_RID_CNFSUPPRATES = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to set supprates=%d.\0A\00", align 1
@HFA384x_RID_TXRATECNTL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [27 x i8] c"Failed to set txrates=%d.\0A\00", align 1
@P80211ENUM_bsstype_independent = common dso_local global i64 0, align 8
@WLAN_MACMODE_IBSS_STA = common dso_local global i32 0, align 4
@HFA384x_RID_CNFMAXDATALEN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [35 x i8] c"Enable macport failed, result=%d.\0A\00", align 1
@P80211ENUM_resultcode_success = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [42 x i8] c"Failed to set a config option, result=%d\0A\00", align 1
@P80211ENUM_resultcode_invalid_parameters = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_start(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca %struct.wlandevice*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hfa384x*, align 8
  %7 = alloca %struct.p80211msg_dot11req_start*, align 8
  %8 = alloca %struct.p80211pstrd*, align 8
  %9 = alloca [80 x i32], align 16
  %10 = alloca %struct.hfa384x_bytestr*, align 8
  %11 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %3, align 8
  store i8* %1, i8** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 3
  %14 = load %struct.hfa384x*, %struct.hfa384x** %13, align 8
  store %struct.hfa384x* %14, %struct.hfa384x** %6, align 8
  %15 = load i8*, i8** %4, align 8
  %16 = bitcast i8* %15 to %struct.p80211msg_dot11req_start*
  store %struct.p80211msg_dot11req_start* %16, %struct.p80211msg_dot11req_start** %7, align 8
  %17 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %18 = bitcast i32* %17 to %struct.hfa384x_bytestr*
  store %struct.hfa384x_bytestr* %18, %struct.hfa384x_bytestr** %10, align 8
  %19 = load i32, i32* @WLAN_MACMODE_NONE, align 4
  %20 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %21 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %23 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %22, i32 0, i32 2
  %24 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %25 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %24, i32 0, i32 20
  %26 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %25, i32 0, i32 0
  %27 = call i32 @memcpy(i32* %23, i32* %26, i32 4)
  %28 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %29 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %33 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %37 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @HFA384x_FIRMWARE_VERSION(i32 %31, i32 %35, i32 %39)
  %41 = call i64 @HFA384x_FIRMWARE_VERSION(i32 0, i32 8, i32 3)
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %2
  %44 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %45 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %46 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %46, i32 0, i32 1
  store i64 %44, i64* %47, align 8
  %48 = load i32, i32* @P80211ENUM_resultcode_not_supported, align 4
  %49 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %50 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %50, i32 0, i32 0
  store i32 %48, i32* %51, align 8
  br label %425

52:                                               ; preds = %2
  %53 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %54 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %55 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %55, i32 0, i32 1
  store i64 %53, i64* %56, align 8
  %57 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %58 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %57, i32 0, i32 20
  %59 = getelementptr inbounds %struct.TYPE_38__, %struct.TYPE_38__* %58, i32 0, i32 0
  %60 = bitcast i32* %59 to %struct.p80211pstrd*
  store %struct.p80211pstrd* %60, %struct.p80211pstrd** %8, align 8
  %61 = load %struct.hfa384x_bytestr*, %struct.hfa384x_bytestr** %10, align 8
  %62 = load %struct.p80211pstrd*, %struct.p80211pstrd** %8, align 8
  %63 = call i32 @prism2mgmt_pstr2bytestr(%struct.hfa384x_bytestr* %61, %struct.p80211pstrd* %62)
  %64 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %65 = load i32, i32* @HFA384x_RID_CNFOWNSSID, align 4
  %66 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %67 = load i32, i32* @HFA384x_RID_CNFOWNSSID_LEN, align 4
  %68 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %64, i32 %65, i32* %66, i32 %67)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %52
  %72 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %73 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 (i32, i8*, ...) @netdev_err(i32 %74, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %415

76:                                               ; preds = %52
  %77 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %78 = load i32, i32* @HFA384x_RID_CNFDESIREDSSID, align 4
  %79 = getelementptr inbounds [80 x i32], [80 x i32]* %9, i64 0, i64 0
  %80 = load i32, i32* @HFA384x_RID_CNFDESIREDSSID_LEN, align 4
  %81 = call i32 @hfa384x_drvr_setconfig(%struct.hfa384x* %77, i32 %78, i32* %79, i32 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %76
  %85 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %86 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 (i32, i8*, ...) @netdev_err(i32 %87, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  br label %415

89:                                               ; preds = %76
  %90 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %91 = load i32, i32* @HFA384x_RID_CNFPORTTYPE, align 4
  %92 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %90, i32 %91, i32 0)
  %93 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %94 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %93, i32 0, i32 19
  %95 = getelementptr inbounds %struct.TYPE_39__, %struct.TYPE_39__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  store i32 %96, i32* %11, align 4
  %97 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %98 = load i32, i32* @HFA384x_RID_CNFAPBCNINT, align 4
  %99 = load i32, i32* %11, align 4
  %100 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %97, i32 %98, i32 %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %109

103:                                              ; preds = %89
  %104 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %105 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* %11, align 4
  %108 = call i32 (i32, i8*, ...) @netdev_err(i32 %106, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %107)
  br label %415

109:                                              ; preds = %89
  %110 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %111 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %110, i32 0, i32 18
  %112 = getelementptr inbounds %struct.TYPE_40__, %struct.TYPE_40__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  store i32 %113, i32* %11, align 4
  %114 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %115 = load i32, i32* @HFA384x_RID_CNFOWNCHANNEL, align 4
  %116 = load i32, i32* %11, align 4
  %117 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %114, i32 %115, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %109
  %121 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %122 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %11, align 4
  %125 = call i32 (i32, i8*, ...) @netdev_err(i32 %123, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %124)
  br label %415

126:                                              ; preds = %109
  %127 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %128 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %127, i32 0, i32 17
  %129 = getelementptr inbounds %struct.TYPE_41__, %struct.TYPE_41__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @p80211rate_to_p2bit(i32 %130)
  store i32 %131, i32* %11, align 4
  %132 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %133 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %132, i32 0, i32 16
  %134 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %126
  %139 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %140 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %139, i32 0, i32 16
  %141 = getelementptr inbounds %struct.TYPE_42__, %struct.TYPE_42__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @p80211rate_to_p2bit(i32 %142)
  %144 = load i32, i32* %11, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %138, %126
  %147 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %148 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %147, i32 0, i32 15
  %149 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %152 = icmp eq i64 %150, %151
  br i1 %152, label %153, label %161

153:                                              ; preds = %146
  %154 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %155 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %154, i32 0, i32 15
  %156 = getelementptr inbounds %struct.TYPE_43__, %struct.TYPE_43__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 8
  %158 = call i32 @p80211rate_to_p2bit(i32 %157)
  %159 = load i32, i32* %11, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %153, %146
  %162 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %163 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %162, i32 0, i32 14
  %164 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %176

168:                                              ; preds = %161
  %169 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %170 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %169, i32 0, i32 14
  %171 = getelementptr inbounds %struct.TYPE_44__, %struct.TYPE_44__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @p80211rate_to_p2bit(i32 %172)
  %174 = load i32, i32* %11, align 4
  %175 = or i32 %174, %173
  store i32 %175, i32* %11, align 4
  br label %176

176:                                              ; preds = %168, %161
  %177 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %178 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %177, i32 0, i32 13
  %179 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %182 = icmp eq i64 %180, %181
  br i1 %182, label %183, label %191

183:                                              ; preds = %176
  %184 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %185 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %184, i32 0, i32 13
  %186 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 8
  %188 = call i32 @p80211rate_to_p2bit(i32 %187)
  %189 = load i32, i32* %11, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %11, align 4
  br label %191

191:                                              ; preds = %183, %176
  %192 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %193 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %192, i32 0, i32 12
  %194 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %193, i32 0, i32 0
  %195 = load i64, i64* %194, align 8
  %196 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %206

198:                                              ; preds = %191
  %199 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %200 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %199, i32 0, i32 12
  %201 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @p80211rate_to_p2bit(i32 %202)
  %204 = load i32, i32* %11, align 4
  %205 = or i32 %204, %203
  store i32 %205, i32* %11, align 4
  br label %206

206:                                              ; preds = %198, %191
  %207 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %208 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %207, i32 0, i32 11
  %209 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %212 = icmp eq i64 %210, %211
  br i1 %212, label %213, label %221

213:                                              ; preds = %206
  %214 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %215 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %214, i32 0, i32 11
  %216 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @p80211rate_to_p2bit(i32 %217)
  %219 = load i32, i32* %11, align 4
  %220 = or i32 %219, %218
  store i32 %220, i32* %11, align 4
  br label %221

221:                                              ; preds = %213, %206
  %222 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %223 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %222, i32 0, i32 10
  %224 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %221
  %229 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %230 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %229, i32 0, i32 10
  %231 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = call i32 @p80211rate_to_p2bit(i32 %232)
  %234 = load i32, i32* %11, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %11, align 4
  br label %236

236:                                              ; preds = %228, %221
  %237 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %238 = load i32, i32* @HFA384x_RID_CNFBASICRATES, align 4
  %239 = load i32, i32* %11, align 4
  %240 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %237, i32 %238, i32 %239)
  store i32 %240, i32* %5, align 4
  %241 = load i32, i32* %5, align 4
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %243, label %249

243:                                              ; preds = %236
  %244 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %245 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 (i32, i8*, ...) @netdev_err(i32 %246, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %247)
  br label %415

249:                                              ; preds = %236
  %250 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %251 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %250, i32 0, i32 9
  %252 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @p80211rate_to_p2bit(i32 %253)
  store i32 %254, i32* %11, align 4
  %255 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %256 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %255, i32 0, i32 8
  %257 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %269

261:                                              ; preds = %249
  %262 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %263 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %262, i32 0, i32 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @p80211rate_to_p2bit(i32 %265)
  %267 = load i32, i32* %11, align 4
  %268 = or i32 %267, %266
  store i32 %268, i32* %11, align 4
  br label %269

269:                                              ; preds = %261, %249
  %270 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %271 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %270, i32 0, i32 7
  %272 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %271, i32 0, i32 0
  %273 = load i64, i64* %272, align 8
  %274 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %275 = icmp eq i64 %273, %274
  br i1 %275, label %276, label %284

276:                                              ; preds = %269
  %277 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %278 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %277, i32 0, i32 7
  %279 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 8
  %281 = call i32 @p80211rate_to_p2bit(i32 %280)
  %282 = load i32, i32* %11, align 4
  %283 = or i32 %282, %281
  store i32 %283, i32* %11, align 4
  br label %284

284:                                              ; preds = %276, %269
  %285 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %286 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %285, i32 0, i32 6
  %287 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %286, i32 0, i32 0
  %288 = load i64, i64* %287, align 8
  %289 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %290 = icmp eq i64 %288, %289
  br i1 %290, label %291, label %299

291:                                              ; preds = %284
  %292 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %293 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %292, i32 0, i32 6
  %294 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @p80211rate_to_p2bit(i32 %295)
  %297 = load i32, i32* %11, align 4
  %298 = or i32 %297, %296
  store i32 %298, i32* %11, align 4
  br label %299

299:                                              ; preds = %291, %284
  %300 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %301 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %300, i32 0, i32 5
  %302 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %301, i32 0, i32 0
  %303 = load i64, i64* %302, align 8
  %304 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %305 = icmp eq i64 %303, %304
  br i1 %305, label %306, label %314

306:                                              ; preds = %299
  %307 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %308 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %307, i32 0, i32 5
  %309 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = call i32 @p80211rate_to_p2bit(i32 %310)
  %312 = load i32, i32* %11, align 4
  %313 = or i32 %312, %311
  store i32 %313, i32* %11, align 4
  br label %314

314:                                              ; preds = %306, %299
  %315 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %316 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %315, i32 0, i32 4
  %317 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %316, i32 0, i32 0
  %318 = load i64, i64* %317, align 8
  %319 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %320 = icmp eq i64 %318, %319
  br i1 %320, label %321, label %329

321:                                              ; preds = %314
  %322 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %323 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %322, i32 0, i32 4
  %324 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 8
  %326 = call i32 @p80211rate_to_p2bit(i32 %325)
  %327 = load i32, i32* %11, align 4
  %328 = or i32 %327, %326
  store i32 %328, i32* %11, align 4
  br label %329

329:                                              ; preds = %321, %314
  %330 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %331 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %330, i32 0, i32 3
  %332 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %344

336:                                              ; preds = %329
  %337 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %338 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %337, i32 0, i32 3
  %339 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %338, i32 0, i32 1
  %340 = load i32, i32* %339, align 8
  %341 = call i32 @p80211rate_to_p2bit(i32 %340)
  %342 = load i32, i32* %11, align 4
  %343 = or i32 %342, %341
  store i32 %343, i32* %11, align 4
  br label %344

344:                                              ; preds = %336, %329
  %345 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %346 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %345, i32 0, i32 2
  %347 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @P80211ENUM_msgitem_status_data_ok, align 8
  %350 = icmp eq i64 %348, %349
  br i1 %350, label %351, label %359

351:                                              ; preds = %344
  %352 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %353 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %352, i32 0, i32 2
  %354 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = call i32 @p80211rate_to_p2bit(i32 %355)
  %357 = load i32, i32* %11, align 4
  %358 = or i32 %357, %356
  store i32 %358, i32* %11, align 4
  br label %359

359:                                              ; preds = %351, %344
  %360 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %361 = load i32, i32* @HFA384x_RID_CNFSUPPRATES, align 4
  %362 = load i32, i32* %11, align 4
  %363 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %360, i32 %361, i32 %362)
  store i32 %363, i32* %5, align 4
  %364 = load i32, i32* %5, align 4
  %365 = icmp ne i32 %364, 0
  br i1 %365, label %366, label %372

366:                                              ; preds = %359
  %367 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %368 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %367, i32 0, i32 0
  %369 = load i32, i32* %368, align 8
  %370 = load i32, i32* %11, align 4
  %371 = call i32 (i32, i8*, ...) @netdev_err(i32 %369, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i32 %370)
  br label %415

372:                                              ; preds = %359
  %373 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %374 = load i32, i32* @HFA384x_RID_TXRATECNTL, align 4
  %375 = load i32, i32* %11, align 4
  %376 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %373, i32 %374, i32 %375)
  store i32 %376, i32* %5, align 4
  %377 = load i32, i32* %5, align 4
  %378 = icmp ne i32 %377, 0
  br i1 %378, label %379, label %385

379:                                              ; preds = %372
  %380 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %381 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %380, i32 0, i32 0
  %382 = load i32, i32* %381, align 8
  %383 = load i32, i32* %11, align 4
  %384 = call i32 (i32, i8*, ...) @netdev_err(i32 %382, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.6, i64 0, i64 0), i32 %383)
  br label %415

385:                                              ; preds = %372
  %386 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %387 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %386, i32 0, i32 1
  %388 = getelementptr inbounds %struct.TYPE_36__, %struct.TYPE_36__* %387, i32 0, i32 0
  %389 = load i64, i64* %388, align 8
  %390 = load i64, i64* @P80211ENUM_bsstype_independent, align 8
  %391 = icmp eq i64 %389, %390
  br i1 %391, label %392, label %399

392:                                              ; preds = %385
  %393 = load i32, i32* @WLAN_MACMODE_IBSS_STA, align 4
  %394 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %395 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %394, i32 0, i32 1
  store i32 %393, i32* %395, align 4
  %396 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %397 = load i32, i32* @HFA384x_RID_CNFMAXDATALEN, align 4
  %398 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %396, i32 %397, i32 2304)
  br label %399

399:                                              ; preds = %392, %385
  %400 = load %struct.hfa384x*, %struct.hfa384x** %6, align 8
  %401 = call i32 @hfa384x_drvr_enable(%struct.hfa384x* %400, i32 0)
  store i32 %401, i32* %5, align 4
  %402 = load i32, i32* %5, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %410

404:                                              ; preds = %399
  %405 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %406 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %405, i32 0, i32 0
  %407 = load i32, i32* %406, align 8
  %408 = load i32, i32* %5, align 4
  %409 = call i32 (i32, i8*, ...) @netdev_err(i32 %407, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0), i32 %408)
  br label %415

410:                                              ; preds = %399
  %411 = load i32, i32* @P80211ENUM_resultcode_success, align 4
  %412 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %413 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %412, i32 0, i32 0
  %414 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %413, i32 0, i32 0
  store i32 %411, i32* %414, align 8
  br label %425

415:                                              ; preds = %404, %379, %366, %243, %120, %103, %84, %71
  %416 = load %struct.wlandevice*, %struct.wlandevice** %3, align 8
  %417 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %416, i32 0, i32 0
  %418 = load i32, i32* %417, align 8
  %419 = load i32, i32* %5, align 4
  %420 = call i32 @netdev_dbg(i32 %418, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.8, i64 0, i64 0), i32 %419)
  %421 = load i32, i32* @P80211ENUM_resultcode_invalid_parameters, align 4
  %422 = load %struct.p80211msg_dot11req_start*, %struct.p80211msg_dot11req_start** %7, align 8
  %423 = getelementptr inbounds %struct.p80211msg_dot11req_start, %struct.p80211msg_dot11req_start* %422, i32 0, i32 0
  %424 = getelementptr inbounds %struct.TYPE_37__, %struct.TYPE_37__* %423, i32 0, i32 0
  store i32 %421, i32* %424, align 8
  br label %425

425:                                              ; preds = %415, %410, %43
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @HFA384x_FIRMWARE_VERSION(i32, i32, i32) #1

declare dso_local i32 @prism2mgmt_pstr2bytestr(%struct.hfa384x_bytestr*, %struct.p80211pstrd*) #1

declare dso_local i32 @hfa384x_drvr_setconfig(%struct.hfa384x*, i32, i32*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, ...) #1

declare dso_local i32 @hfa384x_drvr_setconfig16(%struct.hfa384x*, i32, i32) #1

declare dso_local i32 @p80211rate_to_p2bit(i32) #1

declare dso_local i32 @hfa384x_drvr_enable(%struct.hfa384x*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
