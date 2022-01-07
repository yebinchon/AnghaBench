; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/os_dep/extr_ioctl_linux.c_rtw_wx_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.iw_range = type { i32, i32, i32, i64, i64, i32, i32, %struct.TYPE_10__*, i32, i64, i32, i32, i32*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@_module_rtl871x_mlme_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rtw_wx_get_range. cmd_code =%x\0A\00", align 1
@RATE_COUNT = common dso_local global i32 0, align 4
@IW_MAX_BITRATES = common dso_local global i32 0, align 4
@rtw_rates = common dso_local global i32* null, align 8
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIRELESS_EXT = common dso_local global i32 0, align 4
@MAX_CHANNEL_NUM = common dso_local global i32 0, align 4
@IW_MAX_FREQUENCIES = common dso_local global i64 0, align 8
@IW_ENC_CAPA_WPA = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA2 = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_ESSID = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_TYPE = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_BSSID = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_CHANNEL = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_MODE = common dso_local global i32 0, align 4
@IW_SCAN_CAPA_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @rtw_wx_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_wx_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_range*, align 8
  %10 = alloca %struct.adapter*, align 8
  %11 = alloca %struct.mlme_ext_priv*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i8*, i8** %8, align 8
  %15 = bitcast i8* %14 to %struct.iw_range*
  store %struct.iw_range* %15, %struct.iw_range** %9, align 8
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i64 @rtw_netdev_priv(%struct.net_device* %16)
  %18 = inttoptr i64 %17 to %struct.adapter*
  store %struct.adapter* %18, %struct.adapter** %10, align 8
  %19 = load %struct.adapter*, %struct.adapter** %10, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.mlme_ext_priv* %20, %struct.mlme_ext_priv** %11, align 8
  %21 = load i32, i32* @_module_rtl871x_mlme_c_, align 4
  %22 = load i32, i32* @_drv_info_, align 4
  %23 = load %struct.iw_request_info*, %struct.iw_request_info** %6, align 8
  %24 = getelementptr inbounds %struct.iw_request_info, %struct.iw_request_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sext i32 %25 to i64
  %27 = inttoptr i64 %26 to i8*
  %28 = call i32 @RT_TRACE(i32 %21, i32 %22, i8* %27)
  %29 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %30 = bitcast %union.iwreq_data* %29 to %struct.TYPE_6__*
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  store i32 120, i32* %31, align 4
  %32 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %33 = call i32 @memset(%struct.iw_range* %32, i32 0, i32 120)
  %34 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %35 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %34, i32 0, i32 0
  store i32 5000000, i32* %35, align 8
  %36 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %37 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %36, i32 0, i32 14
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 100, i32* %38, align 8
  %39 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %40 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %39, i32 0, i32 14
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  store i32 100, i32* %41, align 4
  %42 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %43 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %42, i32 0, i32 14
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 100, i32* %44, align 8
  %45 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %46 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %45, i32 0, i32 14
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 3
  store i32 7, i32* %47, align 4
  %48 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %49 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %48, i32 0, i32 13
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i32 92, i32* %50, align 8
  %51 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %52 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %51, i32 0, i32 13
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store i32 178, i32* %53, align 4
  %54 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %55 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %54, i32 0, i32 13
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 3
  store i64 0, i64* %56, align 8
  %57 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %58 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %57, i32 0, i32 13
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i32 7, i32* %59, align 8
  %60 = load i32, i32* @RATE_COUNT, align 4
  %61 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %62 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  store i32 0, i32* %13, align 4
  br label %63

63:                                               ; preds = %85, %4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* @RATE_COUNT, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @IW_MAX_BITRATES, align 4
  %70 = icmp slt i32 %68, %69
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ false, %63 ], [ %70, %67 ]
  br i1 %72, label %73, label %88

73:                                               ; preds = %71
  %74 = load i32*, i32** @rtw_rates, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %80 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %79, i32 0, i32 12
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %78, i32* %84, align 4
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %63

88:                                               ; preds = %71
  %89 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %90 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %91 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %93 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %94 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %93, i32 0, i32 10
  store i32 %92, i32* %94, align 8
  %95 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %96 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %95, i32 0, i32 9
  store i64 0, i64* %96, align 8
  %97 = load i32, i32* @WIRELESS_EXT, align 4
  %98 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %99 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %98, i32 0, i32 8
  store i32 %97, i32* %99, align 8
  %100 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %101 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %100, i32 0, i32 2
  store i32 16, i32* %101, align 8
  store i32 0, i32* %13, align 4
  store i64 0, i64* %12, align 8
  br label %102

102:                                              ; preds = %161, %88
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* @MAX_CHANNEL_NUM, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %164

106:                                              ; preds = %102
  %107 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %108 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %107, i32 0, i32 0
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = load i32, i32* %13, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %155

116:                                              ; preds = %106
  %117 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %118 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %117, i32 0, i32 0
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %126 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %125, i32 0, i32 7
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i64, i64* %12, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  store i64 %124, i64* %130, align 8
  %131 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %11, align 8
  %132 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %131, i32 0, i32 0
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %132, align 8
  %134 = load i32, i32* %13, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @rtw_ch2freq(i64 %138)
  %140 = mul nsw i32 %139, 100000
  %141 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %142 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %141, i32 0, i32 7
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %142, align 8
  %144 = load i64, i64* %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i64 %144
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 1
  store i32 %140, i32* %146, align 8
  %147 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %148 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %147, i32 0, i32 7
  %149 = load %struct.TYPE_10__*, %struct.TYPE_10__** %148, align 8
  %150 = load i64, i64* %12, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %149, i64 %150
  %152 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %151, i32 0, i32 2
  store i32 1, i32* %152, align 4
  %153 = load i64, i64* %12, align 8
  %154 = add i64 %153, 1
  store i64 %154, i64* %12, align 8
  br label %155

155:                                              ; preds = %116, %106
  %156 = load i64, i64* %12, align 8
  %157 = load i64, i64* @IW_MAX_FREQUENCIES, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %159, label %160

159:                                              ; preds = %155
  br label %164

160:                                              ; preds = %155
  br label %161

161:                                              ; preds = %160
  %162 = load i32, i32* %13, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %13, align 4
  br label %102

164:                                              ; preds = %159, %102
  %165 = load i64, i64* %12, align 8
  %166 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %167 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %166, i32 0, i32 3
  store i64 %165, i64* %167, align 8
  %168 = load i64, i64* %12, align 8
  %169 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %170 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  %171 = load i32, i32* @IW_ENC_CAPA_WPA, align 4
  %172 = load i32, i32* @IW_ENC_CAPA_WPA2, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* @IW_ENC_CAPA_CIPHER_TKIP, align 4
  %175 = or i32 %173, %174
  %176 = load i32, i32* @IW_ENC_CAPA_CIPHER_CCMP, align 4
  %177 = or i32 %175, %176
  %178 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %179 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load i32, i32* @IW_SCAN_CAPA_ESSID, align 4
  %181 = load i32, i32* @IW_SCAN_CAPA_TYPE, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @IW_SCAN_CAPA_BSSID, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* @IW_SCAN_CAPA_CHANNEL, align 4
  %186 = or i32 %184, %185
  %187 = load i32, i32* @IW_SCAN_CAPA_MODE, align 4
  %188 = or i32 %186, %187
  %189 = load i32, i32* @IW_SCAN_CAPA_RATE, align 4
  %190 = or i32 %188, %189
  %191 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %192 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %191, i32 0, i32 6
  store i32 %190, i32* %192, align 4
  ret i32 0
}

declare dso_local i64 @rtw_netdev_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

declare dso_local i32 @rtw_ch2freq(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
