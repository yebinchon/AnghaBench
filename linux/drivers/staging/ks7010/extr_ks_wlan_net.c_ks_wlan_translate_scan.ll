; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_translate_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks_wlan_net.c_ks_wlan_translate_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%struct.local_ap = type { i32, i32, %struct.TYPE_18__, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_14__, i32, i64, i32 }
%struct.TYPE_18__ = type { i64, i64 }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.iw_event = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i32, %struct.TYPE_10__ }
%struct.TYPE_15__ = type { i32, i64, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64, i32, i64 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@ks_wlan_translate_scan.rsn_leader = internal constant [8 x i8] c"rsn_ie=\00", align 1
@ks_wlan_translate_scan.wpa_leader = internal constant [8 x i8] c"wpa_ie=\00", align 1
@SIOCGIWAP = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@IW_EV_ADDR_LEN = common dso_local global i32 0, align 4
@SIOCGIWESSID = common dso_local global i32 0, align 4
@SIOCGIWMODE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_ESS = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_IBSS = common dso_local global i32 0, align 4
@IW_MODE_INFRA = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@IW_EV_UINT_LEN = common dso_local global i32 0, align 4
@SIOCGIWFREQ = common dso_local global i32 0, align 4
@frequency_list = common dso_local global i32* null, align 8
@IW_EV_FREQ_LEN = common dso_local global i32 0, align 4
@IWEVQUAL = common dso_local global i32 0, align 4
@IW_EV_QUAL_LEN = common dso_local global i32 0, align 4
@SIOCGIWENCODE = common dso_local global i32 0, align 4
@WLAN_CAPABILITY_PRIVACY = common dso_local global i32 0, align 4
@IW_ENCODE_ENABLED = common dso_local global i32 0, align 4
@IW_ENCODE_NOKEY = common dso_local global i32 0, align 4
@IW_ENCODE_DISABLED = common dso_local global i32 0, align 4
@IW_EV_LCP_LEN = common dso_local global i64 0, align 8
@SIOCGIWRATE = common dso_local global i32 0, align 4
@IW_EV_PARAM_LEN = common dso_local global i32 0, align 4
@RSN_INFO_ELEM_ID = common dso_local global i64 0, align 8
@WPA_INFO_ELEM_ID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.net_device*, %struct.iw_request_info*, i8*, i8*, %struct.local_ap*)* @ks_wlan_translate_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ks_wlan_translate_scan(%struct.net_device* %0, %struct.iw_request_info* %1, i8* %2, i8* %3, %struct.local_ap* %4) #0 {
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.iw_request_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.local_ap*, align 8
  %11 = alloca %struct.iw_event, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %7, align 8
  store i8* %2, i8** %8, align 8
  store i8* %3, i8** %9, align 8
  store %struct.local_ap* %4, %struct.local_ap** %10, align 8
  %15 = load i32, i32* @SIOCGIWAP, align 4
  %16 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* @ARPHRD_ETHER, align 4
  %18 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %21, i32 0, i32 5
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %26 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ether_addr_copy(i32 %24, i32 %27)
  %29 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %30 = load i8*, i8** %8, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = load i32, i32* @IW_EV_ADDR_LEN, align 4
  %33 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %29, i8* %30, i8* %31, %struct.iw_event* %11, i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %35 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp sgt i32 %44, 32
  br i1 %45, label %46, label %50

46:                                               ; preds = %5
  %47 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  store i32 32, i32* %49, align 8
  br label %50

50:                                               ; preds = %46, %5
  %51 = load i32, i32* @SIOCGIWESSID, align 4
  %52 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %51, i32* %52, align 8
  %53 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 1
  store i32 1, i32* %55, align 4
  %56 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i8*, i8** %9, align 8
  %59 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %60 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %59, i32 0, i32 5
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %56, i8* %57, i8* %58, %struct.iw_event* %11, i32 %62)
  store i8* %63, i8** %8, align 8
  %64 = load i32, i32* @SIOCGIWMODE, align 4
  %65 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %64, i32* %65, align 8
  %66 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %67 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %71 = load i32, i32* @WLAN_CAPABILITY_IBSS, align 4
  %72 = or i32 %70, %71
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %93

75:                                               ; preds = %50
  %76 = load i32, i32* %12, align 4
  %77 = load i32, i32* @WLAN_CAPABILITY_ESS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %75
  %81 = load i32, i32* @IW_MODE_INFRA, align 4
  br label %84

82:                                               ; preds = %75
  %83 = load i32, i32* @IW_MODE_ADHOC, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = phi i32 [ %81, %80 ], [ %83, %82 ]
  %86 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %86, i32 0, i32 4
  store i32 %85, i32* %87, align 8
  %88 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = load i8*, i8** %9, align 8
  %91 = load i32, i32* @IW_EV_UINT_LEN, align 4
  %92 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %88, i8* %89, i8* %90, %struct.iw_event* %11, i32 %91)
  store i8* %92, i8** %8, align 8
  br label %93

93:                                               ; preds = %84, %50
  %94 = load i32, i32* @SIOCGIWFREQ, align 4
  %95 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %94, i32* %95, align 8
  %96 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %97 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  store i32 %98, i32* %101, align 8
  %102 = load i32*, i32** @frequency_list, align 8
  %103 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 3
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = sub nsw i32 %106, 1
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %102, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = mul nsw i32 %110, 100000
  %112 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 0
  store i32 %111, i32* %114, align 8
  %115 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  %118 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %119 = load i8*, i8** %8, align 8
  %120 = load i8*, i8** %9, align 8
  %121 = load i32, i32* @IW_EV_FREQ_LEN, align 4
  %122 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %118, i8* %119, i8* %120, %struct.iw_event* %11, i32 %121)
  store i8* %122, i8** %8, align 8
  %123 = load i32, i32* @IWEVQUAL, align 4
  %124 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %123, i32* %124, align 8
  %125 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %126 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %125, i32 0, i32 7
  %127 = load i64, i64* %126, align 8
  %128 = sub nsw i64 256, %127
  %129 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 2
  store i64 %128, i64* %131, align 8
  %132 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %133 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %135, i32 0, i32 2
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  store i32 %134, i32* %137, align 8
  %138 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  store i64 0, i64* %140, align 8
  %141 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = load i8*, i8** %9, align 8
  %144 = load i32, i32* @IW_EV_QUAL_LEN, align 4
  %145 = call i8* @iwe_stream_add_event(%struct.iw_request_info* %141, i8* %142, i8* %143, %struct.iw_event* %11, i32 %144)
  store i8* %145, i8** %8, align 8
  %146 = load i32, i32* @SIOCGIWENCODE, align 4
  %147 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %146, i32* %147, align 8
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @WLAN_CAPABILITY_PRIVACY, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %93
  %153 = load i32, i32* @IW_ENCODE_ENABLED, align 4
  %154 = load i32, i32* @IW_ENCODE_NOKEY, align 4
  %155 = or i32 %153, %154
  br label %158

156:                                              ; preds = %93
  %157 = load i32, i32* @IW_ENCODE_DISABLED, align 4
  br label %158

158:                                              ; preds = %156, %152
  %159 = phi i32 [ %155, %152 ], [ %157, %156 ]
  %160 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 1
  store i32 %159, i32* %162, align 4
  %163 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  store i32 0, i32* %165, align 8
  %166 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %170 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %169, i32 0, i32 5
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i8* @iwe_stream_add_point(%struct.iw_request_info* %166, i8* %167, i8* %168, %struct.iw_event* %11, i32 %172)
  store i8* %173, i8** %8, align 8
  %174 = load i8*, i8** %8, align 8
  %175 = load i64, i64* @IW_EV_LCP_LEN, align 8
  %176 = getelementptr inbounds i8, i8* %174, i64 %175
  store i8* %176, i8** %13, align 8
  %177 = load i32, i32* @SIOCGIWRATE, align 4
  %178 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 1
  store i32 %177, i32* %178, align 8
  %179 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %180, i32 0, i32 2
  store i64 0, i64* %181, align 8
  %182 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 1
  store i64 0, i64* %184, align 8
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %216, %158
  %186 = load i32, i32* %14, align 4
  %187 = icmp slt i32 %186, 16
  br i1 %187, label %188, label %219

188:                                              ; preds = %185
  %189 = load i32, i32* %14, align 4
  %190 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %191 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = icmp sge i32 %189, %193
  br i1 %194, label %195, label %196

195:                                              ; preds = %188
  br label %219

196:                                              ; preds = %188
  %197 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %198 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %197, i32 0, i32 4
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %14, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  %204 = load i32, i32* %203, align 4
  %205 = and i32 %204, 127
  %206 = mul nsw i32 %205, 500000
  %207 = getelementptr inbounds %struct.iw_event, %struct.iw_event* %11, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  store i32 %206, i32* %209, align 8
  %210 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load i8*, i8** %13, align 8
  %213 = load i8*, i8** %9, align 8
  %214 = load i32, i32* @IW_EV_PARAM_LEN, align 4
  %215 = call i8* @iwe_stream_add_value(%struct.iw_request_info* %210, i8* %211, i8* %212, i8* %213, %struct.iw_event* %11, i32 %214)
  store i8* %215, i8** %13, align 8
  br label %216

216:                                              ; preds = %196
  %217 = load i32, i32* %14, align 4
  %218 = add nsw i32 %217, 1
  store i32 %218, i32* %14, align 4
  br label %185

219:                                              ; preds = %195, %185
  %220 = load i8*, i8** %13, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = ptrtoint i8* %220 to i64
  %223 = ptrtoint i8* %221 to i64
  %224 = sub i64 %222, %223
  %225 = load i64, i64* @IW_EV_LCP_LEN, align 8
  %226 = icmp sgt i64 %224, %225
  br i1 %226, label %227, label %229

227:                                              ; preds = %219
  %228 = load i8*, i8** %13, align 8
  store i8* %228, i8** %8, align 8
  br label %229

229:                                              ; preds = %227, %219
  %230 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %231 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @RSN_INFO_ELEM_ID, align 8
  %235 = icmp eq i64 %233, %234
  br i1 %235, label %236, label %249

236:                                              ; preds = %229
  %237 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %238 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %237, i32 0, i32 3
  %239 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %238, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %249

242:                                              ; preds = %236
  %243 = load i8*, i8** %9, align 8
  %244 = load i8*, i8** %8, align 8
  %245 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %246 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %245, i32 0, i32 3
  %247 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %248 = call i8* @ks_wlan_add_leader_event(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ks_wlan_translate_scan.rsn_leader, i64 0, i64 0), i8* %243, i8* %244, %struct.TYPE_18__* %246, %struct.iw_event* %11, %struct.iw_request_info* %247)
  store i8* %248, i8** %8, align 8
  br label %249

249:                                              ; preds = %242, %236, %229
  %250 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %251 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 0
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @WPA_INFO_ELEM_ID, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %269

256:                                              ; preds = %249
  %257 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %258 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %257, i32 0, i32 2
  %259 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %269

262:                                              ; preds = %256
  %263 = load i8*, i8** %9, align 8
  %264 = load i8*, i8** %8, align 8
  %265 = load %struct.local_ap*, %struct.local_ap** %10, align 8
  %266 = getelementptr inbounds %struct.local_ap, %struct.local_ap* %265, i32 0, i32 2
  %267 = load %struct.iw_request_info*, %struct.iw_request_info** %7, align 8
  %268 = call i8* @ks_wlan_add_leader_event(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @ks_wlan_translate_scan.wpa_leader, i64 0, i64 0), i8* %263, i8* %264, %struct.TYPE_18__* %266, %struct.iw_event* %11, %struct.iw_request_info* %267)
  store i8* %268, i8** %8, align 8
  br label %269

269:                                              ; preds = %262, %256, %249
  %270 = load i8*, i8** %8, align 8
  ret i8* %270
}

declare dso_local i32 @ether_addr_copy(i32, i32) #1

declare dso_local i8* @iwe_stream_add_event(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_point(%struct.iw_request_info*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @iwe_stream_add_value(%struct.iw_request_info*, i8*, i8*, i8*, %struct.iw_event*, i32) #1

declare dso_local i8* @ks_wlan_add_leader_event(i8*, i8*, i8*, %struct.TYPE_18__*, %struct.iw_event*, %struct.iw_request_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
