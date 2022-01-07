; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_probe_hw_modes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_probe_hw_modes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_8__*, %struct.ieee80211_hw* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.ieee80211_rate*, %struct.ieee80211_channel* }
%struct.ieee80211_rate = type { i32 }
%struct.ieee80211_channel = type { i32 }
%struct.ieee80211_hw = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_8__** }
%struct.hw_mode_spec = type { i32, i32, i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@SUPPORT_RATE_CCK = common dso_local global i32 0, align 4
@SUPPORT_RATE_OFDM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SUPPORT_BAND_2GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_2GHZ = common dso_local global i64 0, align 8
@SUPPORT_BAND_5GHZ = common dso_local global i32 0, align 4
@NL80211_BAND_5GHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [35 x i8] c"Allocation ieee80211 modes failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*, %struct.hw_mode_spec*)* @rt2x00lib_probe_hw_modes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00lib_probe_hw_modes(%struct.rt2x00_dev* %0, %struct.hw_mode_spec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.hw_mode_spec*, align 8
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca %struct.ieee80211_channel*, align 8
  %8 = alloca %struct.ieee80211_rate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.hw_mode_spec* %1, %struct.hw_mode_spec** %5, align 8
  %11 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %12 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %11, i32 0, i32 1
  %13 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %12, align 8
  store %struct.ieee80211_hw* %13, %struct.ieee80211_hw** %6, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %15 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @SUPPORT_RATE_CCK, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = add i32 %21, 4
  store i32 %22, i32* %9, align 4
  br label %23

23:                                               ; preds = %20, %2
  %24 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %25 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @SUPPORT_RATE_OFDM, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %23
  %31 = load i32, i32* %9, align 4
  %32 = add i32 %31, 8
  store i32 %32, i32* %9, align 4
  br label %33

33:                                               ; preds = %30, %23
  %34 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %35 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 4, i32 %37)
  %39 = bitcast i8* %38 to %struct.ieee80211_channel*
  store %struct.ieee80211_channel* %39, %struct.ieee80211_channel** %7, align 8
  %40 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %41 = icmp ne %struct.ieee80211_channel* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %33
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %230

45:                                               ; preds = %33
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call i8* @kcalloc(i32 %46, i32 4, i32 %47)
  %49 = bitcast i8* %48 to %struct.ieee80211_rate*
  store %struct.ieee80211_rate* %49, %struct.ieee80211_rate** %8, align 8
  %50 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %51 = icmp ne %struct.ieee80211_rate* %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %45
  br label %223

53:                                               ; preds = %45
  store i32 0, i32* %10, align 4
  br label %54

54:                                               ; preds = %67, %53
  %55 = load i32, i32* %10, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ult i32 %55, %56
  br i1 %57, label %58, label %70

58:                                               ; preds = %54
  %59 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %60 = load i32, i32* %10, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %59, i64 %61
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @rt2x00_get_rate(i32 %64)
  %66 = call i32 @rt2x00lib_rate(%struct.ieee80211_rate* %62, i32 %63, i32 %65)
  br label %67

67:                                               ; preds = %58
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %54

70:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %100, %70
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %74 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %103

77:                                               ; preds = %71
  %78 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %79 = load i32, i32* %10, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %78, i64 %80
  %82 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %83 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %82, i32 0, i32 5
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %91 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %90, i32 0, i32 4
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @rt2x00lib_channel(%struct.ieee80211_channel* %81, i32 %89, i32 %97, i32 %98)
  br label %100

100:                                              ; preds = %77
  %101 = load i32, i32* %10, align 4
  %102 = add i32 %101, 1
  store i32 %102, i32* %10, align 4
  br label %71

103:                                              ; preds = %71
  %104 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %105 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = load i32, i32* @SUPPORT_BAND_2GHZ, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %159

110:                                              ; preds = %103
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %112 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %111, i32 0, i32 0
  %113 = load %struct.TYPE_8__*, %struct.TYPE_8__** %112, align 8
  %114 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  store i32 14, i32* %116, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %119 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 1
  store i32 %117, i32* %123, align 4
  %124 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %125 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %126 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %125, i32 0, i32 0
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  %128 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %129 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 4
  store %struct.ieee80211_channel* %124, %struct.ieee80211_channel** %130, align 8
  %131 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %133 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %132, i32 0, i32 0
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %133, align 8
  %135 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %136 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 3
  store %struct.ieee80211_rate* %131, %struct.ieee80211_rate** %137, align 8
  %138 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %139 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %138, i32 0, i32 0
  %140 = load %struct.TYPE_8__*, %struct.TYPE_8__** %139, align 8
  %141 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %140, i64 %141
  %143 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %144 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %143, i32 0, i32 0
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %146, align 8
  %148 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %147, i64 %148
  store %struct.TYPE_8__* %142, %struct.TYPE_8__** %149, align 8
  %150 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %151 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %150, i32 0, i32 0
  %152 = load %struct.TYPE_8__*, %struct.TYPE_8__** %151, align 8
  %153 = load i64, i64* @NL80211_BAND_2GHZ, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %152, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 2
  %156 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %157 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %156, i32 0, i32 3
  %158 = call i32 @memcpy(i32* %155, i32* %157, i32 4)
  br label %159

159:                                              ; preds = %110, %103
  %160 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %161 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @SUPPORT_BAND_5GHZ, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %222

166:                                              ; preds = %159
  %167 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %168 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = sub i32 %169, 14
  %171 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %172 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %171, i32 0, i32 0
  %173 = load %struct.TYPE_8__*, %struct.TYPE_8__** %172, align 8
  %174 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %173, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 0
  store i32 %170, i32* %176, align 8
  %177 = load i32, i32* %9, align 4
  %178 = sub i32 %177, 4
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %180 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %179, i32 0, i32 0
  %181 = load %struct.TYPE_8__*, %struct.TYPE_8__** %180, align 8
  %182 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %183 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %183, i32 0, i32 1
  store i32 %178, i32* %184, align 4
  %185 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %186 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %185, i64 14
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %188 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %187, i32 0, i32 0
  %189 = load %struct.TYPE_8__*, %struct.TYPE_8__** %188, align 8
  %190 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %189, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 4
  store %struct.ieee80211_channel* %186, %struct.ieee80211_channel** %192, align 8
  %193 = load %struct.ieee80211_rate*, %struct.ieee80211_rate** %8, align 8
  %194 = getelementptr inbounds %struct.ieee80211_rate, %struct.ieee80211_rate* %193, i64 4
  %195 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %196 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %199 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 3
  store %struct.ieee80211_rate* %194, %struct.ieee80211_rate** %200, align 8
  %201 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %202 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %201, i32 0, i32 0
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %202, align 8
  %204 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i64 %204
  %206 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %207 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %206, i32 0, i32 0
  %208 = load %struct.TYPE_7__*, %struct.TYPE_7__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %209, align 8
  %211 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %210, i64 %211
  store %struct.TYPE_8__* %205, %struct.TYPE_8__** %212, align 8
  %213 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %214 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %213, i32 0, i32 0
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %214, align 8
  %216 = load i64, i64* @NL80211_BAND_5GHZ, align 8
  %217 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i64 %216
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 2
  %219 = load %struct.hw_mode_spec*, %struct.hw_mode_spec** %5, align 8
  %220 = getelementptr inbounds %struct.hw_mode_spec, %struct.hw_mode_spec* %219, i32 0, i32 3
  %221 = call i32 @memcpy(i32* %218, i32* %220, i32 4)
  br label %222

222:                                              ; preds = %166, %159
  store i32 0, i32* %3, align 4
  br label %230

223:                                              ; preds = %52
  %224 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %7, align 8
  %225 = call i32 @kfree(%struct.ieee80211_channel* %224)
  %226 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %227 = call i32 @rt2x00_err(%struct.rt2x00_dev* %226, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %228 = load i32, i32* @ENOMEM, align 4
  %229 = sub nsw i32 0, %228
  store i32 %229, i32* %3, align 4
  br label %230

230:                                              ; preds = %223, %222, %42
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @rt2x00lib_rate(%struct.ieee80211_rate*, i32, i32) #1

declare dso_local i32 @rt2x00_get_rate(i32) #1

declare dso_local i32 @rt2x00lib_channel(%struct.ieee80211_channel*, i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_channel*) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
