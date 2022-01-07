; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00config.c_rt2x00lib_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00config.c_rt2x00lib_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)* }
%struct.rt2x00lib_conf = type { %struct.TYPE_12__, %struct.TYPE_12__, %struct.ieee80211_conf* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.ieee80211_conf = type { i32, i64, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32, i32 }

@IEEE80211_CONF_CHANGE_CHANNEL = common dso_local global i32 0, align 4
@CONFIG_HT_DISABLED = common dso_local global i32 0, align 4
@CONFIG_CHANNEL_HT40 = common dso_local global i32 0, align 4
@REQUIRE_PS_AUTOWAKE = common dso_local global i32 0, align 4
@IEEE80211_CONF_CHANGE_PS = common dso_local global i32 0, align 4
@IEEE80211_CONF_PS = common dso_local global i32 0, align 4
@CONFIG_POWERSAVING = common dso_local global i32 0, align 4
@IEEE80211_CONF_MONITOR = common dso_local global i32 0, align 4
@CONFIG_MONITORING = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rt2x00lib_config(%struct.rt2x00_dev* %0, %struct.ieee80211_conf* %1, i32 %2) #0 {
  %4 = alloca %struct.rt2x00_dev*, align 8
  %5 = alloca %struct.ieee80211_conf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rt2x00lib_conf, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %4, align 8
  store %struct.ieee80211_conf* %1, %struct.ieee80211_conf** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = call i32 @memset(%struct.rt2x00lib_conf* %7, i32 0, i32 16)
  %13 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %14 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 2
  store %struct.ieee80211_conf* %13, %struct.ieee80211_conf** %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %78

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %21 = call i32 @conf_is_ht(%struct.ieee80211_conf* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @CONFIG_HT_DISABLED, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 4
  %27 = call i32 @set_bit(i32 %24, i32* %26)
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* @CONFIG_HT_DISABLED, align 4
  %30 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %31 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %30, i32 0, i32 4
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %35 = call i64 @conf_is_ht40(%struct.ieee80211_conf* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %39 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %40 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %39, i32 0, i32 4
  %41 = call i32 @set_bit(i32 %38, i32* %40)
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %43 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %44 = call i64 @rt2x00ht_center_channel(%struct.rt2x00_dev* %42, %struct.ieee80211_conf* %43)
  store i64 %44, i64* %8, align 8
  br label %56

45:                                               ; preds = %33
  %46 = load i32, i32* @CONFIG_CHANNEL_HT40, align 4
  %47 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %48 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %47, i32 0, i32 4
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  %50 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %51 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  store i64 %55, i64* %8, align 8
  br label %56

56:                                               ; preds = %45, %37
  %57 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %59 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %58, i32 0, i32 12
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i64, i64* %8, align 8
  %63 = getelementptr inbounds i32, i32* %61, i64 %62
  %64 = call i32 @memcpy(%struct.TYPE_12__* %57, i32* %63, i32 4)
  %65 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 1
  %66 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %67 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %66, i32 0, i32 12
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i64, i64* %8, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = call i32 @memcpy(%struct.TYPE_12__* %65, i32* %71, i32 4)
  %73 = getelementptr inbounds %struct.rt2x00lib_conf, %struct.rt2x00lib_conf* %7, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %77 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %76, i32 0, i32 11
  store i32 %75, i32* %77, align 8
  br label %78

78:                                               ; preds = %56, %3
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %80 = load i32, i32* @REQUIRE_PS_AUTOWAKE, align 4
  %81 = call i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %79, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %78
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %90 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %89, i32 0, i32 0
  %91 = call i32 @cancel_delayed_work_sync(i32* %90)
  br label %92

92:                                               ; preds = %88, %83, %78
  %93 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %94 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %93, i32 0, i32 10
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)*, i32 (%struct.rt2x00_dev*, %struct.rt2x00lib_conf*, i32)** %98, align 8
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %101 = load i32, i32* %6, align 4
  %102 = call i32 %99(%struct.rt2x00_dev* %100, %struct.rt2x00lib_conf* %7, i32 %101)
  %103 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %92
  %110 = load i32, i32* @CONFIG_POWERSAVING, align 4
  %111 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %112 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %111, i32 0, i32 4
  %113 = call i32 @set_bit(i32 %110, i32* %112)
  br label %119

114:                                              ; preds = %92
  %115 = load i32, i32* @CONFIG_POWERSAVING, align 4
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %117 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %116, i32 0, i32 4
  %118 = call i32 @clear_bit(i32 %115, i32* %117)
  br label %119

119:                                              ; preds = %114, %109
  %120 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %121 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IEEE80211_CONF_MONITOR, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %119
  %127 = load i32, i32* @CONFIG_MONITORING, align 4
  %128 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %129 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %128, i32 0, i32 4
  %130 = call i32 @set_bit(i32 %127, i32* %129)
  br label %136

131:                                              ; preds = %119
  %132 = load i32, i32* @CONFIG_MONITORING, align 4
  %133 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %134 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %133, i32 0, i32 4
  %135 = call i32 @clear_bit(i32 %132, i32* %134)
  br label %136

136:                                              ; preds = %131, %126
  %137 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %138 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %144 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %143, i32 0, i32 9
  store i32 %142, i32* %144, align 4
  %145 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %146 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 0
  %148 = load %struct.TYPE_10__*, %struct.TYPE_10__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %152 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %151, i32 0, i32 8
  store i32 %150, i32* %152, align 8
  %153 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %154 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %157 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %159 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %158, i32 0, i32 3
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %162 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %161, i32 0, i32 6
  store i32 %160, i32* %162, align 8
  %163 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %164 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %167 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %166, i32 0, i32 5
  store i32 %165, i32* %167, align 4
  %168 = load i32, i32* %6, align 4
  %169 = load i32, i32* @IEEE80211_CONF_CHANGE_CHANNEL, align 4
  %170 = and i32 %168, %169
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %136
  %173 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %174 = call i32 @rt2x00link_reset_tuner(%struct.rt2x00_dev* %173, i32 0)
  br label %175

175:                                              ; preds = %172, %136
  %176 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %177 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %178 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %177, i32 0, i32 4
  %179 = call i64 @test_bit(i32 %176, i32* %178)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %228

181:                                              ; preds = %175
  %182 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %183 = load i32, i32* @REQUIRE_PS_AUTOWAKE, align 4
  %184 = call i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %182, i32 %183)
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %228

186:                                              ; preds = %181
  %187 = load i32, i32* %6, align 4
  %188 = load i32, i32* @IEEE80211_CONF_CHANGE_PS, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %228

191:                                              ; preds = %186
  %192 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %193 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load i32, i32* @IEEE80211_CONF_PS, align 4
  %196 = and i32 %194, %195
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %228

198:                                              ; preds = %191
  %199 = load i64, i64* @jiffies, align 8
  %200 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %201 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = sub nsw i64 %199, %202
  store i64 %203, i64* %11, align 8
  %204 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %205 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = call i64 @msecs_to_jiffies(i32 %206)
  store i64 %207, i64* %10, align 8
  %208 = load i64, i64* %11, align 8
  %209 = load i64, i64* %10, align 8
  %210 = icmp ugt i64 %208, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %198
  store i64 0, i64* %11, align 8
  br label %212

212:                                              ; preds = %211, %198
  %213 = load %struct.ieee80211_conf*, %struct.ieee80211_conf** %5, align 8
  %214 = getelementptr inbounds %struct.ieee80211_conf, %struct.ieee80211_conf* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = load i64, i64* %10, align 8
  %217 = mul i64 %215, %216
  %218 = load i64, i64* %11, align 8
  %219 = sub i64 %217, %218
  store i64 %219, i64* %9, align 8
  %220 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %221 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %4, align 8
  %224 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %223, i32 0, i32 0
  %225 = load i64, i64* %9, align 8
  %226 = sub i64 %225, 15
  %227 = call i32 @queue_delayed_work(i32 %222, i32* %224, i64 %226)
  br label %228

228:                                              ; preds = %212, %191, %186, %181, %175
  ret void
}

declare dso_local i32 @memset(%struct.rt2x00lib_conf*, i32, i32) #1

declare dso_local i32 @conf_is_ht(%struct.ieee80211_conf*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @conf_is_ht40(%struct.ieee80211_conf*) #1

declare dso_local i64 @rt2x00ht_center_channel(%struct.rt2x00_dev*, %struct.ieee80211_conf*) #1

declare dso_local i32 @memcpy(%struct.TYPE_12__*, i32*, i32) #1

declare dso_local i64 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @rt2x00link_reset_tuner(%struct.rt2x00_dev*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
