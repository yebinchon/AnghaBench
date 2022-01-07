; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8821ae/extr_hw.c_rtl8821ae_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32*, i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i32* }

@rtl8821ae_set_key.cam_const_addr = internal global [4 x [6 x i32]] [[6 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 3]], align 16
@rtl8821ae_set_key.cam_const_broad = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"clear_all\0A\00", align 1
@MAX_KEY_LEN = common dso_local global i32 0, align 4
@CAM_WEP40 = common dso_local global i32 0, align 4
@CAM_WEP104 = common dso_local global i32 0, align 4
@CAM_TKIP = common dso_local global i32 0, align 4
@CAM_AES = common dso_local global i32 0, align 4
@COMP_ERR = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"an not find free hwsecurity cam entry\0A\00", align 1
@CAM_PAIRWISE_KEY_POSITION = common dso_local global i64 0, align 8
@PAIRWISE_KEYIDX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"delete one entry, entry_id is %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"add one entry\0A\00", align 1
@.str.5 = private unnamed_addr constant [18 x i8] c"set Pairwise key\0A\00", align 1
@CAM_CONFIG_NO_USEDK = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [15 x i8] c"set group key\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl8821ae_set_key(%struct.ieee80211_hw* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  br label %236

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
  %93 = load i32, i32* @DBG_LOUD, align 4
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
  %108 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @rtl8821ae_set_key.cam_const_addr, i64 0, i64 %107
  %109 = getelementptr inbounds [6 x i32], [6 x i32]* %108, i64 0, i64 0
  store i32* %109, i32** %18, align 8
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %19, align 8
  br label %137

111:                                              ; preds = %100
  %112 = load i32, i32* %11, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %116

114:                                              ; preds = %111
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @rtl8821ae_set_key.cam_const_broad, i64 0, i64 0), i32** %18, align 8
  %115 = load i64, i64* %9, align 8
  store i64 %115, i64* %19, align 8
  br label %136

116:                                              ; preds = %111
  %117 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %118 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %116
  %123 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = call i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw* %123, i32* %124)
  store i64 %125, i64* %19, align 8
  %126 = load i64, i64* %19, align 8
  %127 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %128 = icmp uge i64 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %236

131:                                              ; preds = %122
  br label %134

132:                                              ; preds = %116
  %133 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  store i64 %133, i64* %19, align 8
  br label %134

134:                                              ; preds = %132, %131
  %135 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  store i64 %135, i64* %9, align 8
  store i32 1, i32* %20, align 4
  br label %136

136:                                              ; preds = %134, %114
  br label %137

137:                                              ; preds = %136, %106
  %138 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %139 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i64*, i64** %140, align 8
  %142 = load i64, i64* %9, align 8
  %143 = getelementptr inbounds i64, i64* %141, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %166

146:                                              ; preds = %137
  %147 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %148 = load i32, i32* @COMP_SEC, align 4
  %149 = load i32, i32* @DBG_DMESG, align 4
  %150 = load i64, i64* %19, align 8
  %151 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %147, i32 %148, i32 %149, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %150)
  %152 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %153 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %152, i32 0, i32 0
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %156 = icmp eq i64 %154, %155
  br i1 %156, label %157, label %161

157:                                              ; preds = %146
  %158 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = call i32 @rtl_cam_del_entry(%struct.ieee80211_hw* %158, i32* %159)
  br label %161

161:                                              ; preds = %157, %146
  %162 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %163 = load i32*, i32** %10, align 8
  %164 = load i64, i64* %19, align 8
  %165 = call i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw* %162, i32* %163, i64 %164)
  br label %235

166:                                              ; preds = %137
  %167 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %168 = load i32, i32* @COMP_SEC, align 4
  %169 = load i32, i32* @DBG_DMESG, align 4
  %170 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %167, i32 %168, i32 %169, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %171 = load i32, i32* %20, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %192

173:                                              ; preds = %166
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %175 = load i32, i32* @COMP_SEC, align 4
  %176 = load i32, i32* @DBG_DMESG, align 4
  %177 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %178 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %179 = load i32*, i32** %18, align 8
  %180 = load i64, i64* %9, align 8
  %181 = load i64, i64* %19, align 8
  %182 = load i32, i32* %12, align 4
  %183 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %184 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %185 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i32 0, i32 1
  %187 = load i32*, i32** %186, align 8
  %188 = load i64, i64* %9, align 8
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  %190 = load i32, i32* %189, align 4
  %191 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %178, i32* %179, i64 %180, i64 %181, i32 %182, i32 %183, i32 %190)
  br label %234

192:                                              ; preds = %166
  %193 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %194 = load i32, i32* @COMP_SEC, align 4
  %195 = load i32, i32* @DBG_DMESG, align 4
  %196 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %193, i32 %194, i32 %195, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %197 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %198 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %219

202:                                              ; preds = %192
  %203 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %204 = load %struct.rtl_efuse*, %struct.rtl_efuse** %17, align 8
  %205 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %204, i32 0, i32 0
  %206 = load i32*, i32** %205, align 8
  %207 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %208 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  %209 = load i32, i32* %12, align 4
  %210 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %211 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %212 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %212, i32 0, i32 1
  %214 = load i32*, i32** %213, align 8
  %215 = load i64, i64* %19, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  %217 = load i32, i32* %216, align 4
  %218 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %203, i32* %206, i64 %207, i64 %208, i32 %209, i32 %210, i32 %217)
  br label %219

219:                                              ; preds = %202, %192
  %220 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %221 = load i32*, i32** %18, align 8
  %222 = load i64, i64* %9, align 8
  %223 = load i64, i64* %19, align 8
  %224 = load i32, i32* %12, align 4
  %225 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %226 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %227 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %227, i32 0, i32 1
  %229 = load i32*, i32** %228, align 8
  %230 = load i64, i64* %19, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %220, i32* %221, i64 %222, i64 %223, i32 %224, i32 %225, i32 %232)
  br label %234

234:                                              ; preds = %219, %173
  br label %235

235:                                              ; preds = %234, %161
  br label %236

236:                                              ; preds = %129, %235, %79
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
