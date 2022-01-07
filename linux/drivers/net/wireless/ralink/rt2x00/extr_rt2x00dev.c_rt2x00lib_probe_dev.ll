; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_probe_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ralink/rt2x00/extr_rt2x00dev.c_rt2x00lib_probe_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_10__*, %struct.TYPE_9__*, i32, %struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32, i64* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_7__ = type { {}* }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@HRTIMER_MODE_REL = common dso_local global i32 0, align 4
@DEVICE_STATE_PRESENT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@rt2x00lib_intf_scheduled = common dso_local global i32 0, align 4
@rt2x00lib_autowakeup = common dso_local global i32 0, align 4
@rt2x00lib_sleep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Failed to allocate device\0A\00", align 1
@NL80211_IFTYPE_STATION = common dso_local global i32 0, align 4
@NL80211_IFTYPE_ADHOC = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@WIPHY_FLAG_IBSS_RSN = common dso_local global i32 0, align 4
@NL80211_EXT_FEATURE_CQM_RSSI_LIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"Failed to initialize hw\0A\00", align 1
@REQUIRE_DELAYED_RFKILL = common dso_local global i32 0, align 4
@NL80211_IFTYPE_MESH_POINT = common dso_local global i32 0, align 4
@NL80211_IFTYPE_WDS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rt2x00lib_probe_dev(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load i32, i32* @ENOMEM, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %4, align 4
  %7 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %8 = call i32 @rt2x00lib_set_if_combinations(%struct.rt2x00_dev* %7)
  %9 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %9, i32 0, i32 3
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %13, 0
  br i1 %14, label %15, label %33

15:                                               ; preds = %1
  %16 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %16, i32 0, i32 3
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kzalloc(i64 %20, i32 %21)
  %23 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %24 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %23, i32 0, i32 15
  store i32 %22, i32* %24, align 4
  %25 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %26 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %25, i32 0, i32 15
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %15
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %201

32:                                               ; preds = %15
  br label %33

33:                                               ; preds = %32, %1
  %34 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %35 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %34, i32 0, i32 14
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %38 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %37, i32 0, i32 13
  %39 = call i32 @mutex_init(i32* %38)
  %40 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %40, i32 0, i32 12
  %42 = call i32 @mutex_init(i32* %41)
  %43 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %43, i32 0, i32 11
  %45 = call i32 @INIT_LIST_HEAD(i32* %44)
  %46 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %47 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %46, i32 0, i32 10
  %48 = call i32 @spin_lock_init(i32* %47)
  %49 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %50 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %49, i32 0, i32 9
  %51 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %52 = load i32, i32* @HRTIMER_MODE_REL, align 4
  %53 = call i32 @hrtimer_init(i32* %50, i32 %51, i32 %52)
  %54 = load i32, i32* @DEVICE_STATE_PRESENT, align 4
  %55 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %56 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %55, i32 0, i32 8
  %57 = call i32 @set_bit(i32 %54, i32* %56)
  %58 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %59 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  store i32 4, i32* %61, align 8
  %62 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %63 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %62, i32 0, i32 3
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 2
  %66 = load i64, i64* %65, align 8
  %67 = sub nsw i64 %66, 1
  %68 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %69 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %74, i64 %77
  store i64 %67, i64* %78, align 8
  %79 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %80 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %79, i32 0, i32 0
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_11__*, %struct.TYPE_11__** %82, align 8
  %84 = call i32 @wiphy_name(%struct.TYPE_11__* %83)
  %85 = call i32 @alloc_ordered_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 0, i32 %84)
  %86 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %87 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %86, i32 0, i32 7
  store i32 %85, i32* %87, align 4
  %88 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %89 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %88, i32 0, i32 7
  %90 = load i32, i32* %89, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %95, label %92

92:                                               ; preds = %33
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %4, align 4
  br label %201

95:                                               ; preds = %33
  %96 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %97 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %96, i32 0, i32 6
  %98 = load i32, i32* @rt2x00lib_intf_scheduled, align 4
  %99 = call i32 @INIT_WORK(i32* %97, i32 %98)
  %100 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %101 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %100, i32 0, i32 5
  %102 = load i32, i32* @rt2x00lib_autowakeup, align 4
  %103 = call i32 @INIT_DELAYED_WORK(i32* %101, i32 %102)
  %104 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %105 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %104, i32 0, i32 4
  %106 = load i32, i32* @rt2x00lib_sleep, align 4
  %107 = call i32 @INIT_WORK(i32* %105, i32 %106)
  %108 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %109 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = bitcast {}** %113 to i32 (%struct.rt2x00_dev*)**
  %115 = load i32 (%struct.rt2x00_dev*)*, i32 (%struct.rt2x00_dev*)** %114, align 8
  %116 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %117 = call i32 %115(%struct.rt2x00_dev* %116)
  store i32 %117, i32* %4, align 4
  %118 = load i32, i32* %4, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %95
  %121 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %122 = call i32 @rt2x00_err(%struct.rt2x00_dev* %121, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %201

123:                                              ; preds = %95
  %124 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %125 = call i32 @rt2x00queue_allocate(%struct.rt2x00_dev* %124)
  store i32 %125, i32* %4, align 4
  %126 = load i32, i32* %4, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %123
  br label %201

129:                                              ; preds = %123
  %130 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %131 = call i32 @rt2x00dev_extra_tx_headroom(%struct.rt2x00_dev* %130)
  %132 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %133 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 8
  %134 = load i32, i32* @NL80211_IFTYPE_STATION, align 4
  %135 = call i32 @BIT(i32 %134)
  %136 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %137 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %136, i32 0, i32 0
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  store i32 %135, i32* %141, align 8
  %142 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %143 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %142, i32 0, i32 1
  %144 = load %struct.TYPE_9__*, %struct.TYPE_9__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %162

148:                                              ; preds = %129
  %149 = load i32, i32* @NL80211_IFTYPE_ADHOC, align 4
  %150 = call i32 @BIT(i32 %149)
  %151 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %152 = call i32 @BIT(i32 %151)
  %153 = or i32 %150, %152
  %154 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %155 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %154, i32 0, i32 0
  %156 = load %struct.TYPE_10__*, %struct.TYPE_10__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %156, i32 0, i32 1
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = or i32 %160, %153
  store i32 %161, i32* %159, align 8
  br label %162

162:                                              ; preds = %148, %129
  %163 = load i32, i32* @WIPHY_FLAG_IBSS_RSN, align 4
  %164 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %165 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %164, i32 0, i32 0
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %163
  store i32 %171, i32* %169, align 4
  %172 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %173 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %172, i32 0, i32 0
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 1
  %176 = load %struct.TYPE_11__*, %struct.TYPE_11__** %175, align 8
  %177 = load i32, i32* @NL80211_EXT_FEATURE_CQM_RSSI_LIST, align 4
  %178 = call i32 @wiphy_ext_feature_set(%struct.TYPE_11__* %176, i32 %177)
  %179 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %180 = call i32 @rt2x00lib_probe_hw(%struct.rt2x00_dev* %179)
  store i32 %180, i32* %4, align 4
  %181 = load i32, i32* %4, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %162
  %184 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %185 = call i32 @rt2x00_err(%struct.rt2x00_dev* %184, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0))
  br label %201

186:                                              ; preds = %162
  %187 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %188 = call i32 @rt2x00link_register(%struct.rt2x00_dev* %187)
  %189 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %190 = call i32 @rt2x00leds_register(%struct.rt2x00_dev* %189)
  %191 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %192 = call i32 @rt2x00debug_register(%struct.rt2x00_dev* %191)
  %193 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %194 = load i32, i32* @REQUIRE_DELAYED_RFKILL, align 4
  %195 = call i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev* %193, i32 %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %186
  %198 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %199 = call i32 @rt2x00rfkill_register(%struct.rt2x00_dev* %198)
  br label %200

200:                                              ; preds = %197, %186
  store i32 0, i32* %2, align 4
  br label %205

201:                                              ; preds = %183, %128, %120, %92, %29
  %202 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %203 = call i32 @rt2x00lib_remove_dev(%struct.rt2x00_dev* %202)
  %204 = load i32, i32* %4, align 4
  store i32 %204, i32* %2, align 4
  br label %205

205:                                              ; preds = %201, %200
  %206 = load i32, i32* %2, align 4
  ret i32 %206
}

declare dso_local i32 @rt2x00lib_set_if_combinations(%struct.rt2x00_dev*) #1

declare dso_local i32 @kzalloc(i64, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @hrtimer_init(i32*, i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @alloc_ordered_workqueue(i8*, i32, i32) #1

declare dso_local i32 @wiphy_name(%struct.TYPE_11__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @rt2x00_err(%struct.rt2x00_dev*, i8*) #1

declare dso_local i32 @rt2x00queue_allocate(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00dev_extra_tx_headroom(%struct.rt2x00_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @wiphy_ext_feature_set(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @rt2x00lib_probe_hw(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00link_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00leds_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00debug_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00_has_cap_flag(%struct.rt2x00_dev*, i32) #1

declare dso_local i32 @rt2x00rfkill_register(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_remove_dev(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
