; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_ioctl_linux.c_r8711_wx_get_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.iw_request_info = type { i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.iw_range = type { i32, i32, i32, i32, i64, i32, %struct.TYPE_8__*, i32, i64, i32, i32, i32*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@RATE_COUNT = common dso_local global i32 0, align 4
@IW_MAX_BITRATES = common dso_local global i32 0, align 4
@rtl8180_rates = common dso_local global i32* null, align 8
@MIN_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@MAX_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WIRELESS_EXT = common dso_local global i32 0, align 4
@ieee80211_wlan_frequencies = common dso_local global i32* null, align 8
@IW_MAX_FREQUENCIES = common dso_local global i64 0, align 8
@IW_ENC_CAPA_WPA = common dso_local global i32 0, align 4
@IW_ENC_CAPA_WPA2 = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_TKIP = common dso_local global i32 0, align 4
@IW_ENC_CAPA_CIPHER_CCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.iw_request_info*, %union.iwreq_data*, i8*)* @r8711_wx_get_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r8711_wx_get_range(%struct.net_device* %0, %struct.iw_request_info* %1, %union.iwreq_data* %2, i8* %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.iw_request_info*, align 8
  %7 = alloca %union.iwreq_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.iw_range*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.iw_request_info* %1, %struct.iw_request_info** %6, align 8
  store %union.iwreq_data* %2, %union.iwreq_data** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.iw_range*
  store %struct.iw_range* %13, %struct.iw_range** %9, align 8
  %14 = load %union.iwreq_data*, %union.iwreq_data** %7, align 8
  %15 = bitcast %union.iwreq_data* %14 to %struct.TYPE_5__*
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  store i32 112, i32* %16, align 4
  %17 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %18 = call i32 @memset(%struct.iw_range* %17, i32 0, i32 112)
  %19 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %20 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %19, i32 0, i32 0
  store i32 5000000, i32* %20, align 8
  %21 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %22 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %21, i32 0, i32 13
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 100, i32* %23, align 8
  %24 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %25 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %24, i32 0, i32 13
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store i32 100, i32* %26, align 4
  %27 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %28 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %27, i32 0, i32 13
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 2
  store i32 100, i32* %29, align 8
  %30 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %31 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 3
  store i32 7, i32* %32, align 4
  %33 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %34 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %33, i32 0, i32 12
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  store i32 92, i32* %35, align 8
  %36 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %37 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %36, i32 0, i32 12
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  store i32 178, i32* %38, align 4
  %39 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %40 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %39, i32 0, i32 12
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 3
  store i64 0, i64* %41, align 8
  %42 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %43 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %42, i32 0, i32 12
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  store i32 7, i32* %44, align 8
  %45 = load i32, i32* @RATE_COUNT, align 4
  %46 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %47 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %70, %4
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @RATE_COUNT, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %48
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* @IW_MAX_BITRATES, align 4
  %55 = icmp slt i32 %53, %54
  br label %56

56:                                               ; preds = %52, %48
  %57 = phi i1 [ false, %48 ], [ %55, %52 ]
  br i1 %57, label %58, label %73

58:                                               ; preds = %56
  %59 = load i32*, i32** @rtl8180_rates, align 8
  %60 = load i32, i32* %11, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %65 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %64, i32 0, i32 11
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  store i32 %63, i32* %69, align 4
  br label %70

70:                                               ; preds = %58
  %71 = load i32, i32* %11, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %11, align 4
  br label %48

73:                                               ; preds = %56
  %74 = load i32, i32* @MIN_FRAG_THRESHOLD, align 4
  %75 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %76 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %75, i32 0, i32 10
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* @MAX_FRAG_THRESHOLD, align 4
  %78 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %79 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %78, i32 0, i32 9
  store i32 %77, i32* %79, align 8
  %80 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %81 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %80, i32 0, i32 8
  store i64 0, i64* %81, align 8
  %82 = load i32, i32* @WIRELESS_EXT, align 4
  %83 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %84 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 8
  %85 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %86 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %85, i32 0, i32 2
  store i32 16, i32* %86, align 8
  %87 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %88 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %87, i32 0, i32 3
  store i32 14, i32* %88, align 4
  store i32 0, i32* %11, align 4
  store i64 0, i64* %10, align 8
  br label %89

89:                                               ; preds = %126, %73
  %90 = load i32, i32* %11, align 4
  %91 = icmp slt i32 %90, 14
  br i1 %91, label %92, label %129

92:                                               ; preds = %89
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  %95 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %96 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %95, i32 0, i32 6
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  store i32 %94, i32* %100, align 4
  %101 = load i32*, i32** @ieee80211_wlan_frequencies, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %105, 100000
  %107 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %108 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %107, i32 0, i32 6
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %108, align 8
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 1
  store i32 %106, i32* %112, align 4
  %113 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %114 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %113, i32 0, i32 6
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i64, i64* %10, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 1, i32* %118, align 4
  %119 = load i64, i64* %10, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %10, align 8
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @IW_MAX_FREQUENCIES, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %92
  br label %129

125:                                              ; preds = %92
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %11, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %11, align 4
  br label %89

129:                                              ; preds = %124, %89
  %130 = load i64, i64* %10, align 8
  %131 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %132 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %131, i32 0, i32 4
  store i64 %130, i64* %132, align 8
  %133 = load i32, i32* @IW_ENC_CAPA_WPA, align 4
  %134 = load i32, i32* @IW_ENC_CAPA_WPA2, align 4
  %135 = or i32 %133, %134
  %136 = load i32, i32* @IW_ENC_CAPA_CIPHER_TKIP, align 4
  %137 = or i32 %135, %136
  %138 = load i32, i32* @IW_ENC_CAPA_CIPHER_CCMP, align 4
  %139 = or i32 %137, %138
  %140 = load %struct.iw_range*, %struct.iw_range** %9, align 8
  %141 = getelementptr inbounds %struct.iw_range, %struct.iw_range* %140, i32 0, i32 5
  store i32 %139, i32* %141, align 8
  ret i32 0
}

declare dso_local i32 @memset(%struct.iw_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
