; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.cw1200_common* }
%struct.cw1200_common = type { i32, i32, %struct.wsm_add_key* }
%struct.wsm_add_key = type { %struct.TYPE_19__, i32, %struct.TYPE_18__, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_20__ }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32 }
%struct.TYPE_17__ = type { i32, i32*, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32*, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_20__ = type { i32, i32, i32 }
%struct.ieee80211_vif = type { i32 }
%struct.ieee80211_sta = type { i32* }
%struct.ieee80211_key_conf = type { i32, i32, i32, i32, i32, i32* }
%struct.ieee80211_key_seq = type { %struct.TYPE_16__, %struct.TYPE_13__ }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.wsm_remove_key = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@SET_KEY = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PAIRWISE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_PUT_IV_SPACE = common dso_local global i32 0, align 4
@IEEE80211_KEY_FLAG_RESERVE_TAILROOM = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_WEP_PAIRWISE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_WEP_DEFAULT = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_TKIP_PAIRWISE = common dso_local global i32 0, align 4
@NL80211_IFTYPE_AP = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_TKIP_GROUP = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_AES_PAIRWISE = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_AES_GROUP = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_WAPI_PAIRWISE = common dso_local global i32 0, align 4
@WSM_KEY_TYPE_WAPI_GROUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unhandled key type %d\0A\00", align 1
@DISABLE_KEY = common dso_local global i32 0, align 4
@WSM_KEY_MAX_INDEX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Unhandled key command %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_set_key(%struct.ieee80211_hw* %0, i32 %1, %struct.ieee80211_vif* %2, %struct.ieee80211_sta* %3, %struct.ieee80211_key_conf* %4) #0 {
  %6 = alloca %struct.ieee80211_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vif*, align 8
  %9 = alloca %struct.ieee80211_sta*, align 8
  %10 = alloca %struct.ieee80211_key_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.cw1200_common*, align 8
  %13 = alloca %struct.ieee80211_key_seq, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.wsm_add_key*, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.wsm_remove_key, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_vif* %2, %struct.ieee80211_vif** %8, align 8
  store %struct.ieee80211_sta* %3, %struct.ieee80211_sta** %9, align 8
  store %struct.ieee80211_key_conf* %4, %struct.ieee80211_key_conf** %10, align 8
  %20 = load i32, i32* @EOPNOTSUPP, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %22, i32 0, i32 0
  %24 = load %struct.cw1200_common*, %struct.cw1200_common** %23, align 8
  store %struct.cw1200_common* %24, %struct.cw1200_common** %12, align 8
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 0
  %27 = call i32 @mutex_lock(i32* %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @SET_KEY, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %499

31:                                               ; preds = %5
  store i32* null, i32** %14, align 8
  %32 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %33 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IEEE80211_KEY_FLAG_PAIRWISE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  %38 = zext i1 %37 to i64
  %39 = select i1 %37, i32 1, i32 0
  store i32 %39, i32* %15, align 4
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %41 = call i32 @cw1200_alloc_key(%struct.cw1200_common* %40)
  store i32 %41, i32* %16, align 4
  %42 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %43 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %42, i32 0, i32 2
  %44 = load %struct.wsm_add_key*, %struct.wsm_add_key** %43, align 8
  %45 = load i32, i32* %16, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %44, i64 %46
  store %struct.wsm_add_key* %47, %struct.wsm_add_key** %17, align 8
  %48 = load i32, i32* %16, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load i32, i32* @EINVAL, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %11, align 4
  br label %527

53:                                               ; preds = %31
  %54 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %55 = icmp ne %struct.ieee80211_sta* %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %9, align 8
  %58 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  store i32* %59, i32** %14, align 8
  br label %60

60:                                               ; preds = %56, %53
  %61 = load i32, i32* @IEEE80211_KEY_FLAG_PUT_IV_SPACE, align 4
  %62 = load i32, i32* @IEEE80211_KEY_FLAG_RESERVE_TAILROOM, align 4
  %63 = or i32 %61, %62
  %64 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %65 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = or i32 %66, %63
  store i32 %67, i32* %65, align 8
  %68 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %69 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  switch i32 %70, label %474 [
    i32 128, label %71
    i32 129, label %71
    i32 130, label %143
    i32 132, label %292
    i32 131, label %407
  ]

71:                                               ; preds = %60, %60
  %72 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %73 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp sgt i32 %74, 16
  br i1 %75, label %76, label %82

76:                                               ; preds = %71
  %77 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %78 = load i32, i32* %16, align 4
  %79 = call i32 @cw1200_free_key(%struct.cw1200_common* %77, i32 %78)
  %80 = load i32, i32* @EINVAL, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %11, align 4
  br label %527

82:                                               ; preds = %71
  %83 = load i32, i32* %15, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %82
  %86 = load i32, i32* @WSM_KEY_TYPE_WEP_PAIRWISE, align 4
  %87 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %88 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %90 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %89, i32 0, i32 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %14, align 8
  %94 = load i32, i32* @ETH_ALEN, align 4
  %95 = call i32 @memcpy(i32 %92, i32* %93, i32 %94)
  %96 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %97 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %96, i32 0, i32 8
  %98 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %101 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  %104 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %105 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @memcpy(i32 %99, i32* %103, i32 %106)
  %108 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %109 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %112 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %111, i32 0, i32 8
  %113 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %112, i32 0, i32 0
  store i32 %110, i32* %113, align 4
  br label %142

114:                                              ; preds = %82
  %115 = load i32, i32* @WSM_KEY_TYPE_WEP_DEFAULT, align 4
  %116 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %117 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %116, i32 0, i32 1
  store i32 %115, i32* %117, align 4
  %118 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %119 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %118, i32 0, i32 7
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 2
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %123 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %122, i32 0, i32 5
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %127 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @memcpy(i32 %121, i32* %125, i32 %128)
  %130 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %131 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %134 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %133, i32 0, i32 7
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 0
  store i32 %132, i32* %135, align 8
  %136 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %137 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %140 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %139, i32 0, i32 7
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  store i32 %138, i32* %141, align 4
  br label %142

142:                                              ; preds = %114, %85
  br label %484

143:                                              ; preds = %60
  %144 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %145 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %144, i32 0, %struct.ieee80211_key_seq* %13)
  %146 = load i32, i32* %15, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %186

148:                                              ; preds = %143
  %149 = load i32, i32* @WSM_KEY_TYPE_TKIP_PAIRWISE, align 4
  %150 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %151 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  %152 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %153 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %152, i32 0, i32 6
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = load i32*, i32** %14, align 8
  %157 = load i32, i32* @ETH_ALEN, align 4
  %158 = call i32 @memcpy(i32 %155, i32* %156, i32 %157)
  %159 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %160 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %159, i32 0, i32 6
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 8
  %163 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %164 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %163, i32 0, i32 5
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 0
  %167 = call i32 @memcpy(i32 %162, i32* %166, i32 16)
  %168 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %169 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %168, i32 0, i32 6
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %173 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %172, i32 0, i32 5
  %174 = load i32*, i32** %173, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 16
  %176 = call i32 @memcpy(i32 %171, i32* %175, i32 8)
  %177 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %178 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %177, i32 0, i32 6
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %182 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %181, i32 0, i32 5
  %183 = load i32*, i32** %182, align 8
  %184 = getelementptr inbounds i32, i32* %183, i64 24
  %185 = call i32 @memcpy(i32 %180, i32* %184, i32 8)
  br label %291

186:                                              ; preds = %143
  %187 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %188 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* @NL80211_IFTYPE_AP, align 4
  %191 = icmp eq i32 %189, %190
  %192 = zext i1 %191 to i64
  %193 = select i1 %191, i32 16, i32 24
  %194 = sext i32 %193 to i64
  store i64 %194, i64* %18, align 8
  %195 = load i32, i32* @WSM_KEY_TYPE_TKIP_GROUP, align 4
  %196 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %197 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %196, i32 0, i32 1
  store i32 %195, i32* %197, align 4
  %198 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %199 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %198, i32 0, i32 5
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %203 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %202, i32 0, i32 5
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  %206 = call i32 @memcpy(i32 %201, i32* %205, i32 16)
  %207 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %208 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %207, i32 0, i32 5
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %212 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %211, i32 0, i32 5
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* %18, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  %216 = call i32 @memcpy(i32 %210, i32* %215, i32 8)
  %217 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 1
  %218 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = and i32 %219, 255
  %221 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %222 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %221, i32 0, i32 5
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  store i32 %220, i32* %225, align 4
  %226 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = ashr i32 %228, 8
  %230 = and i32 %229, 255
  %231 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %232 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %231, i32 0, i32 5
  %233 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 1
  store i32 %230, i32* %235, align 4
  %236 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = and i32 %238, 255
  %240 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %241 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %240, i32 0, i32 5
  %242 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 2
  store i32 %239, i32* %244, align 4
  %245 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = ashr i32 %247, 8
  %249 = and i32 %248, 255
  %250 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %251 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %250, i32 0, i32 5
  %252 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 3
  store i32 %249, i32* %254, align 4
  %255 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 4
  %258 = ashr i32 %257, 16
  %259 = and i32 %258, 255
  %260 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %261 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %260, i32 0, i32 5
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i32*, i32** %262, align 8
  %264 = getelementptr inbounds i32, i32* %263, i64 4
  store i32 %259, i32* %264, align 4
  %265 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = ashr i32 %267, 24
  %269 = and i32 %268, 255
  %270 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %271 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %270, i32 0, i32 5
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 5
  store i32 %269, i32* %274, align 4
  %275 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %276 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %275, i32 0, i32 5
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 0
  %278 = load i32*, i32** %277, align 8
  %279 = getelementptr inbounds i32, i32* %278, i64 6
  store i32 0, i32* %279, align 4
  %280 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %281 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %280, i32 0, i32 5
  %282 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %281, i32 0, i32 0
  %283 = load i32*, i32** %282, align 8
  %284 = getelementptr inbounds i32, i32* %283, i64 7
  store i32 0, i32* %284, align 4
  %285 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %286 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %285, i32 0, i32 4
  %287 = load i32, i32* %286, align 8
  %288 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %289 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %288, i32 0, i32 5
  %290 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %289, i32 0, i32 1
  store i32 %287, i32* %290, align 8
  br label %291

291:                                              ; preds = %186, %148
  br label %484

292:                                              ; preds = %60
  %293 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %294 = call i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf* %293, i32 0, %struct.ieee80211_key_seq* %13)
  %295 = load i32, i32* %15, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %317

297:                                              ; preds = %292
  %298 = load i32, i32* @WSM_KEY_TYPE_AES_PAIRWISE, align 4
  %299 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %300 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %299, i32 0, i32 1
  store i32 %298, i32* %300, align 4
  %301 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %302 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %301, i32 0, i32 4
  %303 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %302, i32 0, i32 1
  %304 = load i32, i32* %303, align 4
  %305 = load i32*, i32** %14, align 8
  %306 = load i32, i32* @ETH_ALEN, align 4
  %307 = call i32 @memcpy(i32 %304, i32* %305, i32 %306)
  %308 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %309 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %308, i32 0, i32 4
  %310 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %313 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %312, i32 0, i32 5
  %314 = load i32*, i32** %313, align 8
  %315 = getelementptr inbounds i32, i32* %314, i64 0
  %316 = call i32 @memcpy(i32 %311, i32* %315, i32 16)
  br label %406

317:                                              ; preds = %292
  %318 = load i32, i32* @WSM_KEY_TYPE_AES_GROUP, align 4
  %319 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %320 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %319, i32 0, i32 1
  store i32 %318, i32* %320, align 4
  %321 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %322 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %321, i32 0, i32 3
  %323 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %322, i32 0, i32 2
  %324 = load i32, i32* %323, align 8
  %325 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %326 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %325, i32 0, i32 5
  %327 = load i32*, i32** %326, align 8
  %328 = getelementptr inbounds i32, i32* %327, i64 0
  %329 = call i32 @memcpy(i32 %324, i32* %328, i32 16)
  %330 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 0
  %332 = load i32*, i32** %331, align 8
  %333 = getelementptr inbounds i32, i32* %332, i64 5
  %334 = load i32, i32* %333, align 4
  %335 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %336 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %335, i32 0, i32 3
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %336, i32 0, i32 1
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 0
  store i32 %334, i32* %339, align 4
  %340 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 0
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 0
  %342 = load i32*, i32** %341, align 8
  %343 = getelementptr inbounds i32, i32* %342, i64 4
  %344 = load i32, i32* %343, align 4
  %345 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %346 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %345, i32 0, i32 3
  %347 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %346, i32 0, i32 1
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 1
  store i32 %344, i32* %349, align 4
  %350 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 0
  %352 = load i32*, i32** %351, align 8
  %353 = getelementptr inbounds i32, i32* %352, i64 3
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %356 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %355, i32 0, i32 3
  %357 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %356, i32 0, i32 1
  %358 = load i32*, i32** %357, align 8
  %359 = getelementptr inbounds i32, i32* %358, i64 2
  store i32 %354, i32* %359, align 4
  %360 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 0
  %362 = load i32*, i32** %361, align 8
  %363 = getelementptr inbounds i32, i32* %362, i64 2
  %364 = load i32, i32* %363, align 4
  %365 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %366 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %365, i32 0, i32 3
  %367 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %366, i32 0, i32 1
  %368 = load i32*, i32** %367, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 3
  store i32 %364, i32* %369, align 4
  %370 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 0
  %371 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %370, i32 0, i32 0
  %372 = load i32*, i32** %371, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 1
  %374 = load i32, i32* %373, align 4
  %375 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %376 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %375, i32 0, i32 3
  %377 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %376, i32 0, i32 1
  %378 = load i32*, i32** %377, align 8
  %379 = getelementptr inbounds i32, i32* %378, i64 4
  store i32 %374, i32* %379, align 4
  %380 = getelementptr inbounds %struct.ieee80211_key_seq, %struct.ieee80211_key_seq* %13, i32 0, i32 0
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 0
  %382 = load i32*, i32** %381, align 8
  %383 = getelementptr inbounds i32, i32* %382, i64 0
  %384 = load i32, i32* %383, align 4
  %385 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %386 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %385, i32 0, i32 3
  %387 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %386, i32 0, i32 1
  %388 = load i32*, i32** %387, align 8
  %389 = getelementptr inbounds i32, i32* %388, i64 5
  store i32 %384, i32* %389, align 4
  %390 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %391 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %390, i32 0, i32 3
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 1
  %393 = load i32*, i32** %392, align 8
  %394 = getelementptr inbounds i32, i32* %393, i64 6
  store i32 0, i32* %394, align 4
  %395 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %396 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %395, i32 0, i32 3
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 1
  %398 = load i32*, i32** %397, align 8
  %399 = getelementptr inbounds i32, i32* %398, i64 7
  store i32 0, i32* %399, align 4
  %400 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %401 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %400, i32 0, i32 4
  %402 = load i32, i32* %401, align 8
  %403 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %404 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %403, i32 0, i32 3
  %405 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %404, i32 0, i32 0
  store i32 %402, i32* %405, align 8
  br label %406

406:                                              ; preds = %317, %297
  br label %484

407:                                              ; preds = %60
  %408 = load i32, i32* %15, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %445

410:                                              ; preds = %407
  %411 = load i32, i32* @WSM_KEY_TYPE_WAPI_PAIRWISE, align 4
  %412 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %413 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %412, i32 0, i32 1
  store i32 %411, i32* %413, align 4
  %414 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %415 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %414, i32 0, i32 2
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 3
  %417 = load i32, i32* %416, align 4
  %418 = load i32*, i32** %14, align 8
  %419 = load i32, i32* @ETH_ALEN, align 4
  %420 = call i32 @memcpy(i32 %417, i32* %418, i32 %419)
  %421 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %422 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %421, i32 0, i32 2
  %423 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %422, i32 0, i32 2
  %424 = load i32, i32* %423, align 8
  %425 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %426 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %425, i32 0, i32 5
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = call i32 @memcpy(i32 %424, i32* %428, i32 16)
  %430 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %431 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %430, i32 0, i32 2
  %432 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %431, i32 0, i32 1
  %433 = load i32, i32* %432, align 4
  %434 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %435 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %434, i32 0, i32 5
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 16
  %438 = call i32 @memcpy(i32 %433, i32* %437, i32 16)
  %439 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %440 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %439, i32 0, i32 4
  %441 = load i32, i32* %440, align 8
  %442 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %443 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %442, i32 0, i32 2
  %444 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %443, i32 0, i32 0
  store i32 %441, i32* %444, align 8
  br label %473

445:                                              ; preds = %407
  %446 = load i32, i32* @WSM_KEY_TYPE_WAPI_GROUP, align 4
  %447 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %448 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %447, i32 0, i32 1
  store i32 %446, i32* %448, align 4
  %449 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %450 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %449, i32 0, i32 0
  %451 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %450, i32 0, i32 2
  %452 = load i32, i32* %451, align 8
  %453 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %454 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %453, i32 0, i32 5
  %455 = load i32*, i32** %454, align 8
  %456 = getelementptr inbounds i32, i32* %455, i64 0
  %457 = call i32 @memcpy(i32 %452, i32* %456, i32 16)
  %458 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %459 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %458, i32 0, i32 0
  %460 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %459, i32 0, i32 1
  %461 = load i32, i32* %460, align 4
  %462 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %463 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %462, i32 0, i32 5
  %464 = load i32*, i32** %463, align 8
  %465 = getelementptr inbounds i32, i32* %464, i64 16
  %466 = call i32 @memcpy(i32 %461, i32* %465, i32 16)
  %467 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %468 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %467, i32 0, i32 4
  %469 = load i32, i32* %468, align 8
  %470 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %471 = getelementptr inbounds %struct.wsm_add_key, %struct.wsm_add_key* %470, i32 0, i32 0
  %472 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %471, i32 0, i32 0
  store i32 %469, i32* %472, align 8
  br label %473

473:                                              ; preds = %445, %410
  br label %484

474:                                              ; preds = %60
  %475 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %476 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %475, i32 0, i32 1
  %477 = load i32, i32* %476, align 4
  %478 = call i32 @pr_warn(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %477)
  %479 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %480 = load i32, i32* %16, align 4
  %481 = call i32 @cw1200_free_key(%struct.cw1200_common* %479, i32 %480)
  %482 = load i32, i32* @EOPNOTSUPP, align 4
  %483 = sub nsw i32 0, %482
  store i32 %483, i32* %11, align 4
  br label %527

484:                                              ; preds = %473, %406, %291, %142
  %485 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %486 = load %struct.wsm_add_key*, %struct.wsm_add_key** %17, align 8
  %487 = call i32 @wsm_add_key(%struct.cw1200_common* %485, %struct.wsm_add_key* %486)
  store i32 %487, i32* %11, align 4
  %488 = load i32, i32* %11, align 4
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %494, label %490

490:                                              ; preds = %484
  %491 = load i32, i32* %16, align 4
  %492 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %493 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %492, i32 0, i32 3
  store i32 %491, i32* %493, align 4
  br label %498

494:                                              ; preds = %484
  %495 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %496 = load i32, i32* %16, align 4
  %497 = call i32 @cw1200_free_key(%struct.cw1200_common* %495, i32 %496)
  br label %498

498:                                              ; preds = %494, %490
  br label %526

499:                                              ; preds = %5
  %500 = load i32, i32* %7, align 4
  %501 = load i32, i32* @DISABLE_KEY, align 4
  %502 = icmp eq i32 %500, %501
  br i1 %502, label %503, label %522

503:                                              ; preds = %499
  %504 = getelementptr inbounds %struct.wsm_remove_key, %struct.wsm_remove_key* %19, i32 0, i32 0
  %505 = load %struct.ieee80211_key_conf*, %struct.ieee80211_key_conf** %10, align 8
  %506 = getelementptr inbounds %struct.ieee80211_key_conf, %struct.ieee80211_key_conf* %505, i32 0, i32 3
  %507 = load i32, i32* %506, align 4
  store i32 %507, i32* %504, align 4
  %508 = getelementptr inbounds %struct.wsm_remove_key, %struct.wsm_remove_key* %19, i32 0, i32 0
  %509 = load i32, i32* %508, align 4
  %510 = load i32, i32* @WSM_KEY_MAX_INDEX, align 4
  %511 = icmp sgt i32 %509, %510
  br i1 %511, label %512, label %515

512:                                              ; preds = %503
  %513 = load i32, i32* @EINVAL, align 4
  %514 = sub nsw i32 0, %513
  store i32 %514, i32* %11, align 4
  br label %527

515:                                              ; preds = %503
  %516 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %517 = getelementptr inbounds %struct.wsm_remove_key, %struct.wsm_remove_key* %19, i32 0, i32 0
  %518 = load i32, i32* %517, align 4
  %519 = call i32 @cw1200_free_key(%struct.cw1200_common* %516, i32 %518)
  %520 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %521 = call i32 @wsm_remove_key(%struct.cw1200_common* %520, %struct.wsm_remove_key* %19)
  store i32 %521, i32* %11, align 4
  br label %525

522:                                              ; preds = %499
  %523 = load i32, i32* %7, align 4
  %524 = call i32 @pr_warn(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %523)
  br label %525

525:                                              ; preds = %522, %515
  br label %526

526:                                              ; preds = %525, %498
  br label %527

527:                                              ; preds = %526, %512, %474, %76, %50
  %528 = load %struct.cw1200_common*, %struct.cw1200_common** %12, align 8
  %529 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %528, i32 0, i32 0
  %530 = call i32 @mutex_unlock(i32* %529)
  %531 = load i32, i32* %11, align 4
  ret i32 %531
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cw1200_alloc_key(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_free_key(%struct.cw1200_common*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ieee80211_get_key_rx_seq(%struct.ieee80211_key_conf*, i32, %struct.ieee80211_key_seq*) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @wsm_add_key(%struct.cw1200_common*, %struct.wsm_add_key*) #1

declare dso_local i32 @wsm_remove_key(%struct.cw1200_common*, %struct.wsm_remove_key*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
