; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c_rtl92ee_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ee/extr_hw.c_rtl92ee_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32*, i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i32* }

@rtl92ee_set_key.cam_const_addr = internal global [4 x [6 x i32]] [[6 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 3]], align 16
@rtl92ee_set_key.cam_const_broad = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"clear_all\0A\00", align 1
@MAX_KEY_LEN = common dso_local global i32 0, align 4
@CAM_WEP40 = common dso_local global i32 0, align 4
@CAM_WEP104 = common dso_local global i32 0, align 4
@CAM_TKIP = common dso_local global i32 0, align 4
@CAM_AES = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Can not find free hw security cam entry\0A\00", align 1
@CAM_PAIRWISE_KEY_POSITION = common dso_local global i64 0, align 8
@PAIRWISE_KEYIDX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"delete one entry, entry_id is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"add one entry\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"set Pairwise key\0A\00", align 1
@CAM_CONFIG_NO_USEDK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"set group key\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ee_set_key(%struct.ieee80211_hw* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.ieee80211_hw*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.rtl_priv*, align 8
  %16 = alloca %struct.rtl_mac*, align 8
  %17 = alloca %struct.rtl_efuse*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %24 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %25 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %24)
  store %struct.rtl_priv* %25, %struct.rtl_priv** %15, align 8
  %26 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %27 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %26)
  %28 = call %struct.rtl_mac* @rtl_mac(%struct.rtl_priv* %27)
  store %struct.rtl_mac* %28, %struct.rtl_mac** %16, align 8
  %29 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %30 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %29)
  %31 = call %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv* %30)
  store %struct.rtl_efuse* %31, %struct.rtl_efuse** %17, align 8
  %32 = load i32*, i32** %10, align 8
  store i32* %32, i32** %18, align 8
  store i64 0, i64* %19, align 8
  store i32 0, i32* %20, align 4
  %33 = load i32, i32* %14, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %80

35:                                               ; preds = %7
  store i32 0, i32* %21, align 4
  store i32 0, i32* %22, align 4
  store i32 5, i32* %23, align 4
  %36 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %37 = load i32, i32* @COMP_SEC, align 4
  %38 = load i32, i32* @DBG_DMESG, align 4
  %39 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %36, i32 %37, i32 %38, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %21, align 4
  br label %40

40:                                               ; preds = %76, %35
  %41 = load i32, i32* %21, align 4
  %42 = load i32, i32* %23, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %79

44:                                               ; preds = %40
  %45 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %46 = load i32, i32* %22, align 4
  %47 = load i32, i32* %21, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @rtl_cam_mark_invalid(%struct.ieee80211_hw* %45, i32 %48)
  %50 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %51 = load i32, i32* %22, align 4
  %52 = load i32, i32* %21, align 4
  %53 = add nsw i32 %51, %52
  %54 = call i32 @rtl_cam_empty_entry(%struct.ieee80211_hw* %50, i32 %53)
  %55 = load i32, i32* %21, align 4
  %56 = icmp slt i32 %55, 5
  br i1 %56, label %57, label %75

57:                                               ; preds = %44
  %58 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %59 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX_KEY_LEN, align 4
  %67 = call i32 @memset(i32 %65, i32 0, i32 %66)
  %68 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %69 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i64*, i64** %70, align 8
  %72 = load i32, i32* %21, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i64, i64* %71, i64 %73
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %57, %44
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %21, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %21, align 4
  br label %40

79:                                               ; preds = %40
  br label %248

80:                                               ; preds = %7
  %81 = load i32, i32* %12, align 4
  switch i32 %81, label %90 [
    i32 128, label %82
    i32 129, label %84
    i32 130, label %86
    i32 131, label %88
  ]

82:                                               ; preds = %80
  %83 = load i32, i32* @CAM_WEP40, align 4
  store i32 %83, i32* %12, align 4
  br label %97

84:                                               ; preds = %80
  %85 = load i32, i32* @CAM_WEP104, align 4
  store i32 %85, i32* %12, align 4
  br label %97

86:                                               ; preds = %80
  %87 = load i32, i32* @CAM_TKIP, align 4
  store i32 %87, i32* %12, align 4
  br label %97

88:                                               ; preds = %80
  %89 = load i32, i32* @CAM_AES, align 4
  store i32 %89, i32* %12, align 4
  br label %97

90:                                               ; preds = %80
  %91 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %92 = load i32, i32* @COMP_ERR, align 4
  %93 = load i32, i32* @DBG_DMESG, align 4
  %94 = load i32, i32* %12, align 4
  %95 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %91, i32 %92, i32 %93, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* @CAM_TKIP, align 4
  store i32 %96, i32* %12, align 4
  br label %97

97:                                               ; preds = %90, %88, %86, %84, %82
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %106, label %100

100:                                              ; preds = %97
  %101 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %102 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %100, %97
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @rtl92ee_set_key.cam_const_addr, i64 0, i64 %107
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %108, i64 0, i64 0
  store i32* %109, i32** %18, align 8
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %19, align 8
  br label %143

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @rtl92ee_set_key.cam_const_broad, i64 0, i64 0), i32** %18, align 8
  %115 = load i64, i64* %9, align 8
  store i64 %115, i64* %19, align 8
  br label %142

116:                                              ; preds = %111
  %117 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %118 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %128, label %122

122:                                              ; preds = %116
  %123 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %124 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %122, %116
  %129 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %130 = load i32*, i32** %10, align 8
  %131 = call i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw* %129, i32* %130)
  store i64 %131, i64* %19, align 8
  %132 = load i64, i64* %19, align 8
  %133 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %134 = icmp uge i64 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %128
  %136 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %248

137:                                              ; preds = %128
  br label %140

138:                                              ; preds = %122
  %139 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  store i64 %139, i64* %19, align 8
  br label %140

140:                                              ; preds = %138, %137
  %141 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  store i64 %141, i64* %9, align 8
  store i32 1, i32* %20, align 4
  br label %142

142:                                              ; preds = %140, %114
  br label %143

143:                                              ; preds = %142, %106
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %145 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i64*, i64** %146, align 8
  %148 = load i64, i64* %9, align 8
  %149 = getelementptr inbounds i64, i64* %147, i64 %148
  %150 = load i64, i64* %149, align 8
  %151 = icmp eq i64 %150, 0
  br i1 %151, label %152, label %178

152:                                              ; preds = %143
  %153 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %154 = load i32, i32* @COMP_SEC, align 4
  %155 = load i32, i32* @DBG_DMESG, align 4
  %156 = load i64, i64* %19, align 8
  %157 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %153, i32 %154, i32 %155, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %156)
  %158 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %159 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %169, label %163

163:                                              ; preds = %152
  %164 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %165 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %168 = icmp eq i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %152
  %170 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %171 = load i32*, i32** %10, align 8
  %172 = call i32 @rtl_cam_del_entry(%struct.ieee80211_hw* %170, i32* %171)
  br label %173

173:                                              ; preds = %169, %163
  %174 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = load i64, i64* %19, align 8
  %177 = call i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw* %174, i32* %175, i64 %176)
  br label %247

178:                                              ; preds = %143
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %180 = load i32, i32* @COMP_SEC, align 4
  %181 = load i32, i32* @DBG_DMESG, align 4
  %182 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %179, i32 %180, i32 %181, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %183 = load i32, i32* %20, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %204

185:                                              ; preds = %178
  %186 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %187 = load i32, i32* @COMP_SEC, align 4
  %188 = load i32, i32* @DBG_DMESG, align 4
  %189 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %186, i32 %187, i32 %188, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %190 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %191 = load i32*, i32** %18, align 8
  %192 = load i64, i64* %9, align 8
  %193 = load i64, i64* %19, align 8
  %194 = load i32, i32* %12, align 4
  %195 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %197 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32*, i32** %198, align 8
  %200 = load i64, i64* %9, align 8
  %201 = getelementptr inbounds i32, i32* %199, i64 %200
  %202 = load i32, i32* %201, align 4
  %203 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %190, i32* %191, i64 %192, i64 %193, i32 %194, i32 %195, i32 %202)
  br label %246

204:                                              ; preds = %178
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %206 = load i32, i32* @COMP_SEC, align 4
  %207 = load i32, i32* @DBG_DMESG, align 4
  %208 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %205, i32 %206, i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %209 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %210 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %213 = icmp eq i64 %211, %212
  br i1 %213, label %214, label %231

214:                                              ; preds = %204
  %215 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %216 = load %struct.rtl_efuse*, %struct.rtl_efuse** %17, align 8
  %217 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %220 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %224 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* %19, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %215, i32* %218, i64 %219, i64 %220, i32 %221, i32 %222, i32 %229)
  br label %231

231:                                              ; preds = %214, %204
  %232 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %233 = load i32*, i32** %18, align 8
  %234 = load i64, i64* %9, align 8
  %235 = load i64, i64* %19, align 8
  %236 = load i32, i32* %12, align 4
  %237 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %238 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %239 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %238, i32 0, i32 0
  %240 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %239, i32 0, i32 1
  %241 = load i32*, i32** %240, align 8
  %242 = load i64, i64* %19, align 8
  %243 = getelementptr inbounds i32, i32* %241, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %232, i32* %233, i64 %234, i64 %235, i32 %236, i32 %237, i32 %244)
  br label %246

246:                                              ; preds = %231, %185
  br label %247

247:                                              ; preds = %246, %173
  br label %248

248:                                              ; preds = %135, %247, %79
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_cam_mark_invalid(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_cam_empty_entry(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @rtl_cam_del_entry(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw*, i32*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
