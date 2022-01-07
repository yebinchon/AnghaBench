; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_wlansniff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_prism2mgmt.c_prism2mgmt_wlansniff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlandevice = type { %struct.TYPE_19__*, %struct.hfa384x* }
%struct.TYPE_19__ = type { i8* }
%struct.hfa384x = type { i32, i32, i32, i32, i32, i32, i32* }
%struct.p80211msg_lnxreq_wlansniff = type { %struct.TYPE_12__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_16__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i8*, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@P80211ENUM_msgitem_status_data_ok = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i8* null, align 8
@P80211ENUM_resultcode_invalid_parameters = common dso_local global i8* null, align 8
@HFA384x_MONITOR_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"failed to disable monitor mode, result=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to disable port 0 after sniffing, result=%d\0A\00", align 1
@HFA384x_RID_CNFWEPFLAGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"failed to restore wepflags=0x%04x, result=%d\0A\00", align 1
@HFA384x_RID_CNFPORTTYPE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to restore porttype, result=%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"failed to enable port to presniff setting, result=%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"monitor mode disabled\0A\00", align 1
@P80211ENUM_resultcode_success = common dso_local global i8* null, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to read porttype, result=%d\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"failed to read wepflags, result=%d\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"failed to restart the card for sniffing, result=%d\0A\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"failed to enable port for sniffing, result=%d\0A\00", align 1
@HFA384x_RID_CNFOWNCHANNEL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [37 x i8] c"failed to set channel %d, result=%d\0A\00", align 1
@HFA384x_PORTTYPE_PSUEDOIBSS = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [38 x i8] c"failed to set porttype %d, result=%d\0A\00", align 1
@HFA384x_WEPFLAGS_DISABLE_TXCRYPT = common dso_local global i32 0, align 4
@HFA384x_WEPFLAGS_DISABLE_RXCRYPT = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [42 x i8] c"failed to set wepflags=0x%04x, result=%d\0A\00", align 1
@HFA384x_MONITOR_ENABLE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [42 x i8] c"failed to enable monitor mode, result=%d\0A\00", align 1
@.str.14 = private unnamed_addr constant [22 x i8] c"monitor mode enabled\0A\00", align 1
@ARPHRD_IEEE80211_PRISM = common dso_local global i8* null, align 8
@ARPHRD_IEEE80211 = common dso_local global i8* null, align 8
@P80211ENUM_resultcode_refused = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2mgmt_wlansniff(%struct.wlandevice* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wlandevice*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.p80211msg_lnxreq_wlansniff*, align 8
  %8 = alloca %struct.hfa384x*, align 8
  %9 = alloca i32, align 4
  store %struct.wlandevice* %0, %struct.wlandevice** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.p80211msg_lnxreq_wlansniff*
  store %struct.p80211msg_lnxreq_wlansniff* %11, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %12 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %13 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %12, i32 0, i32 1
  %14 = load %struct.hfa384x*, %struct.hfa384x** %13, align 8
  store %struct.hfa384x* %14, %struct.hfa384x** %8, align 8
  %15 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %16 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %17 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  store i32 %15, i32* %18, align 8
  %19 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %20 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %19, i32 0, i32 7
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  switch i32 %22, label %402 [
    i32 129, label %23
    i32 128, label %127
  ]

23:                                               ; preds = %2
  %24 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %25 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i8*, i8** @ARPHRD_ETHER, align 8
  %30 = icmp eq i8* %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %23
  %32 = load i8*, i8** @P80211ENUM_resultcode_invalid_parameters, align 8
  %33 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %34 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  store i8* %32, i8** %35, align 8
  store i32 0, i32* %3, align 4
  br label %412

36:                                               ; preds = %23
  %37 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %38 = load i32, i32* @HFA384x_MONITOR_DISABLE, align 4
  %39 = call i32 @hfa384x_cmd_monitor(%struct.hfa384x* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %44 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %45, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %46)
  br label %407

48:                                               ; preds = %36
  %49 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %50 = call i32 @hfa384x_drvr_disable(%struct.hfa384x* %49, i32 0)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %48
  %54 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %55 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %54, i32 0, i32 0
  %56 = load %struct.TYPE_19__*, %struct.TYPE_19__** %55, align 8
  %57 = load i32, i32* %6, align 4
  %58 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %56, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %407

59:                                               ; preds = %48
  %60 = load i8*, i8** @ARPHRD_ETHER, align 8
  %61 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %62 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %61, i32 0, i32 0
  %63 = load %struct.TYPE_19__*, %struct.TYPE_19__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %63, i32 0, i32 0
  store i8* %60, i8** %64, align 8
  %65 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %66 = load i32, i32* @HFA384x_RID_CNFWEPFLAGS, align 4
  %67 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %68 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %65, i32 %66, i32 %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %59
  %74 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %75 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %74, i32 0, i32 0
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %75, align 8
  %77 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %78 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %6, align 4
  %81 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %76, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %79, i32 %80)
  br label %407

82:                                               ; preds = %59
  %83 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %84 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %115

87:                                               ; preds = %82
  %88 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %89 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  store i32 %90, i32* %9, align 4
  %91 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %92 = load i32, i32* @HFA384x_RID_CNFPORTTYPE, align 4
  %93 = load i32, i32* %9, align 4
  %94 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %91, i32 %92, i32 %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %87
  %98 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %99 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %100, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %101)
  br label %407

103:                                              ; preds = %87
  %104 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %105 = call i32 @hfa384x_drvr_enable(%struct.hfa384x* %104, i32 0)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %114

108:                                              ; preds = %103
  %109 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %110 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %109, i32 0, i32 0
  %111 = load %struct.TYPE_19__*, %struct.TYPE_19__** %110, align 8
  %112 = load i32, i32* %6, align 4
  %113 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %111, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %112)
  br label %407

114:                                              ; preds = %103
  br label %118

115:                                              ; preds = %82
  %116 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %117 = call i32 @hfa384x_drvr_disable(%struct.hfa384x* %116, i32 0)
  store i32 %117, i32* %6, align 4
  br label %118

118:                                              ; preds = %115, %114
  %119 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %120 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %119, i32 0, i32 0
  %121 = load %struct.TYPE_19__*, %struct.TYPE_19__** %120, align 8
  %122 = call i32 @netdev_info(%struct.TYPE_19__* %121, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %123 = load i8*, i8** @P80211ENUM_resultcode_success, align 8
  %124 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %125 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 0
  store i8* %123, i8** %126, align 8
  store i32 0, i32* %3, align 4
  br label %412

127:                                              ; preds = %2
  %128 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %129 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %128, i32 0, i32 6
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 0
  %132 = load i32, i32* %131, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %197

134:                                              ; preds = %127
  %135 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %136 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %135, i32 0, i32 0
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** @ARPHRD_ETHER, align 8
  %141 = icmp eq i8* %139, %140
  br i1 %141, label %142, label %184

142:                                              ; preds = %134
  %143 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %144 = load i32, i32* @HFA384x_RID_CNFPORTTYPE, align 4
  %145 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %146 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %145, i32 0, i32 1
  %147 = call i32 @hfa384x_drvr_getconfig16(%struct.hfa384x* %143, i32 %144, i32* %146)
  store i32 %147, i32* %6, align 4
  %148 = load i32, i32* %6, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %152 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %151, i32 0, i32 0
  %153 = load %struct.TYPE_19__*, %struct.TYPE_19__** %152, align 8
  %154 = load i32, i32* %6, align 4
  %155 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %153, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %154)
  br label %407

156:                                              ; preds = %142
  %157 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %158 = load i32, i32* @HFA384x_RID_CNFWEPFLAGS, align 4
  %159 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %160 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %159, i32 0, i32 0
  %161 = call i32 @hfa384x_drvr_getconfig16(%struct.hfa384x* %157, i32 %158, i32* %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %156
  %165 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %166 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %165, i32 0, i32 0
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %166, align 8
  %168 = load i32, i32* %6, align 4
  %169 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %168)
  br label %407

170:                                              ; preds = %156
  %171 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %172 = call i32 @hfa384x_drvr_stop(%struct.hfa384x* %171)
  %173 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %174 = call i32 @hfa384x_drvr_start(%struct.hfa384x* %173)
  store i32 %174, i32* %6, align 4
  %175 = load i32, i32* %6, align 4
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %183

177:                                              ; preds = %170
  %178 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %179 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %178, i32 0, i32 0
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %179, align 8
  %181 = load i32, i32* %6, align 4
  %182 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %180, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0), i32 %181)
  br label %407

183:                                              ; preds = %170
  br label %196

184:                                              ; preds = %134
  %185 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %186 = call i32 @hfa384x_drvr_disable(%struct.hfa384x* %185, i32 0)
  store i32 %186, i32* %6, align 4
  %187 = load i32, i32* %6, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %184
  %190 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %191 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %190, i32 0, i32 0
  %192 = load %struct.TYPE_19__*, %struct.TYPE_19__** %191, align 8
  %193 = load i32, i32* %6, align 4
  %194 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %192, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %193)
  br label %407

195:                                              ; preds = %184
  br label %196

196:                                              ; preds = %195, %183
  br label %200

197:                                              ; preds = %127
  %198 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %199 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %198, i32 0, i32 1
  store i32 0, i32* %199, align 4
  br label %200

200:                                              ; preds = %197, %196
  %201 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %202 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %201, i32 0, i32 6
  %203 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %9, align 4
  %205 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %206 = load i32, i32* @HFA384x_RID_CNFOWNCHANNEL, align 4
  %207 = load i32, i32* %9, align 4
  %208 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %205, i32 %206, i32 %207)
  store i32 %208, i32* %6, align 4
  %209 = load i32, i32* %9, align 4
  %210 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %211 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %210, i32 0, i32 2
  store i32 %209, i32* %211, align 8
  %212 = load i32, i32* %6, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %221

214:                                              ; preds = %200
  %215 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %216 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %215, i32 0, i32 0
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %216, align 8
  %218 = load i32, i32* %9, align 4
  %219 = load i32, i32* %6, align 4
  %220 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %217, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.10, i64 0, i64 0), i32 %218, i32 %219)
  br label %407

221:                                              ; preds = %200
  %222 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %223 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %222, i32 0, i32 0
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8*, i8** @ARPHRD_ETHER, align 8
  %228 = icmp ne i8* %226, %227
  br i1 %228, label %229, label %276

229:                                              ; preds = %221
  %230 = load i32, i32* @HFA384x_PORTTYPE_PSUEDOIBSS, align 4
  store i32 %230, i32* %9, align 4
  %231 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %232 = load i32, i32* @HFA384x_RID_CNFPORTTYPE, align 4
  %233 = load i32, i32* %9, align 4
  %234 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %231, i32 %232, i32 %233)
  store i32 %234, i32* %6, align 4
  %235 = load i32, i32* %6, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %244

237:                                              ; preds = %229
  %238 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %239 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %238, i32 0, i32 0
  %240 = load %struct.TYPE_19__*, %struct.TYPE_19__** %239, align 8
  %241 = load i32, i32* %9, align 4
  %242 = load i32, i32* %6, align 4
  %243 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %240, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i32 %241, i32 %242)
  br label %407

244:                                              ; preds = %229
  %245 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %246 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %245, i32 0, i32 5
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 4
  %249 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %250 = icmp eq i32 %248, %249
  br i1 %250, label %251, label %265

251:                                              ; preds = %244
  %252 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %253 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %252, i32 0, i32 5
  %254 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = icmp ne i32 %255, 128
  br i1 %256, label %257, label %265

257:                                              ; preds = %251
  %258 = load i32, i32* @HFA384x_WEPFLAGS_DISABLE_TXCRYPT, align 4
  %259 = load i32, i32* @HFA384x_WEPFLAGS_DISABLE_RXCRYPT, align 4
  %260 = or i32 %258, %259
  store i32 %260, i32* %9, align 4
  %261 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %262 = load i32, i32* @HFA384x_RID_CNFWEPFLAGS, align 4
  %263 = load i32, i32* %9, align 4
  %264 = call i32 @hfa384x_drvr_setconfig16(%struct.hfa384x* %261, i32 %262, i32 %263)
  store i32 %264, i32* %6, align 4
  br label %265

265:                                              ; preds = %257, %251, %244
  %266 = load i32, i32* %6, align 4
  %267 = icmp ne i32 %266, 0
  br i1 %267, label %268, label %275

268:                                              ; preds = %265
  %269 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %270 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %269, i32 0, i32 0
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %270, align 8
  %272 = load i32, i32* %9, align 4
  %273 = load i32, i32* %6, align 4
  %274 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %271, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.12, i64 0, i64 0), i32 %272, i32 %273)
  br label %407

275:                                              ; preds = %265
  br label %276

276:                                              ; preds = %275, %221
  %277 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %278 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %277, i32 0, i32 4
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %282 = icmp eq i32 %280, %281
  br i1 %282, label %283, label %292

283:                                              ; preds = %276
  %284 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %285 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %284, i32 0, i32 4
  %286 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %285, i32 0, i32 0
  %287 = load i32, i32* %286, align 8
  %288 = icmp eq i32 %287, 128
  br i1 %288, label %289, label %292

289:                                              ; preds = %283
  %290 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %291 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %290, i32 0, i32 3
  store i32 0, i32* %291, align 4
  br label %295

292:                                              ; preds = %283, %276
  %293 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %294 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %293, i32 0, i32 3
  store i32 1, i32* %294, align 4
  br label %295

295:                                              ; preds = %292, %289
  %296 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %297 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %301 = icmp eq i32 %299, %300
  br i1 %301, label %302, label %309

302:                                              ; preds = %295
  %303 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %304 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %303, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %308 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %307, i32 0, i32 5
  store i32 %306, i32* %308, align 4
  br label %312

309:                                              ; preds = %295
  %310 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %311 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %310, i32 0, i32 5
  store i32 0, i32* %311, align 4
  br label %312

312:                                              ; preds = %309, %302
  %313 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %314 = call i32 @hfa384x_drvr_enable(%struct.hfa384x* %313, i32 0)
  store i32 %314, i32* %6, align 4
  %315 = load i32, i32* %6, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %323

317:                                              ; preds = %312
  %318 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %319 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %318, i32 0, i32 0
  %320 = load %struct.TYPE_19__*, %struct.TYPE_19__** %319, align 8
  %321 = load i32, i32* %6, align 4
  %322 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %320, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i32 %321)
  br label %407

323:                                              ; preds = %312
  %324 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %325 = load i32, i32* @HFA384x_MONITOR_ENABLE, align 4
  %326 = call i32 @hfa384x_cmd_monitor(%struct.hfa384x* %324, i32 %325)
  store i32 %326, i32* %6, align 4
  %327 = load i32, i32* %6, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %335

329:                                              ; preds = %323
  %330 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %331 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %330, i32 0, i32 0
  %332 = load %struct.TYPE_19__*, %struct.TYPE_19__** %331, align 8
  %333 = load i32, i32* %6, align 4
  %334 = call i32 (%struct.TYPE_19__*, i8*, i32, ...) @netdev_dbg(%struct.TYPE_19__* %332, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.13, i64 0, i64 0), i32 %333)
  br label %407

335:                                              ; preds = %323
  %336 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %337 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %336, i32 0, i32 0
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %337, align 8
  %339 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %338, i32 0, i32 0
  %340 = load i8*, i8** %339, align 8
  %341 = load i8*, i8** @ARPHRD_ETHER, align 8
  %342 = icmp eq i8* %340, %341
  br i1 %342, label %343, label %348

343:                                              ; preds = %335
  %344 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %345 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %344, i32 0, i32 0
  %346 = load %struct.TYPE_19__*, %struct.TYPE_19__** %345, align 8
  %347 = call i32 @netdev_info(%struct.TYPE_19__* %346, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.14, i64 0, i64 0))
  br label %348

348:                                              ; preds = %343, %335
  %349 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %350 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %349, i32 0, i32 2
  %351 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %350, i32 0, i32 1
  %352 = load i32, i32* %351, align 4
  %353 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %354 = icmp eq i32 %352, %353
  br i1 %354, label %355, label %369

355:                                              ; preds = %348
  %356 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %357 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %356, i32 0, i32 2
  %358 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %357, i32 0, i32 0
  %359 = load i32, i32* %358, align 8
  %360 = icmp eq i32 %359, 128
  br i1 %360, label %361, label %369

361:                                              ; preds = %355
  %362 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %363 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %362, i32 0, i32 4
  store i32 0, i32* %363, align 8
  %364 = load i8*, i8** @ARPHRD_IEEE80211_PRISM, align 8
  %365 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %366 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %365, i32 0, i32 0
  %367 = load %struct.TYPE_19__*, %struct.TYPE_19__** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %367, i32 0, i32 0
  store i8* %364, i8** %368, align 8
  br label %397

369:                                              ; preds = %355, %348
  %370 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %371 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %370, i32 0, i32 1
  %372 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* @P80211ENUM_msgitem_status_data_ok, align 4
  %375 = icmp eq i32 %373, %374
  br i1 %375, label %376, label %390

376:                                              ; preds = %369
  %377 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %378 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %377, i32 0, i32 1
  %379 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 8
  %381 = icmp eq i32 %380, 128
  br i1 %381, label %382, label %390

382:                                              ; preds = %376
  %383 = load %struct.hfa384x*, %struct.hfa384x** %8, align 8
  %384 = getelementptr inbounds %struct.hfa384x, %struct.hfa384x* %383, i32 0, i32 4
  store i32 1, i32* %384, align 8
  %385 = load i8*, i8** @ARPHRD_IEEE80211_PRISM, align 8
  %386 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %387 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %386, i32 0, i32 0
  %388 = load %struct.TYPE_19__*, %struct.TYPE_19__** %387, align 8
  %389 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %388, i32 0, i32 0
  store i8* %385, i8** %389, align 8
  br label %396

390:                                              ; preds = %376, %369
  %391 = load i8*, i8** @ARPHRD_IEEE80211, align 8
  %392 = load %struct.wlandevice*, %struct.wlandevice** %4, align 8
  %393 = getelementptr inbounds %struct.wlandevice, %struct.wlandevice* %392, i32 0, i32 0
  %394 = load %struct.TYPE_19__*, %struct.TYPE_19__** %393, align 8
  %395 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %394, i32 0, i32 0
  store i8* %391, i8** %395, align 8
  br label %396

396:                                              ; preds = %390, %382
  br label %397

397:                                              ; preds = %396, %361
  %398 = load i8*, i8** @P80211ENUM_resultcode_success, align 8
  %399 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %400 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %399, i32 0, i32 0
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 0
  store i8* %398, i8** %401, align 8
  store i32 0, i32* %3, align 4
  br label %412

402:                                              ; preds = %2
  %403 = load i8*, i8** @P80211ENUM_resultcode_invalid_parameters, align 8
  %404 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %405 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %404, i32 0, i32 0
  %406 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %405, i32 0, i32 0
  store i8* %403, i8** %406, align 8
  store i32 0, i32* %3, align 4
  br label %412

407:                                              ; preds = %329, %317, %268, %237, %214, %189, %177, %164, %150, %108, %97, %73, %53, %42
  %408 = load i8*, i8** @P80211ENUM_resultcode_refused, align 8
  %409 = load %struct.p80211msg_lnxreq_wlansniff*, %struct.p80211msg_lnxreq_wlansniff** %7, align 8
  %410 = getelementptr inbounds %struct.p80211msg_lnxreq_wlansniff, %struct.p80211msg_lnxreq_wlansniff* %409, i32 0, i32 0
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 0
  store i8* %408, i8** %411, align 8
  store i32 0, i32* %3, align 4
  br label %412

412:                                              ; preds = %407, %402, %397, %118, %31
  %413 = load i32, i32* %3, align 4
  ret i32 %413
}

declare dso_local i32 @hfa384x_cmd_monitor(%struct.hfa384x*, i32) #1

declare dso_local i32 @netdev_dbg(%struct.TYPE_19__*, i8*, i32, ...) #1

declare dso_local i32 @hfa384x_drvr_disable(%struct.hfa384x*, i32) #1

declare dso_local i32 @hfa384x_drvr_setconfig16(%struct.hfa384x*, i32, i32) #1

declare dso_local i32 @hfa384x_drvr_enable(%struct.hfa384x*, i32) #1

declare dso_local i32 @netdev_info(%struct.TYPE_19__*, i8*) #1

declare dso_local i32 @hfa384x_drvr_getconfig16(%struct.hfa384x*, i32, i32*) #1

declare dso_local i32 @hfa384x_drvr_stop(%struct.hfa384x*) #1

declare dso_local i32 @hfa384x_drvr_start(%struct.hfa384x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
