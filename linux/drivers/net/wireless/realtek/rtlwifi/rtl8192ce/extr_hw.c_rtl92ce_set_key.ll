; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192ce/extr_hw.c_rtl92ce_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32**, i32, i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i32* }

@rtl92ce_set_key.cam_const_addr = internal global [4 x [6 x i32]] [[6 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 3]], align 16
@rtl92ce_set_key.cam_const_broad = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"clear_all\0A\00", align 1
@MAX_KEY_LEN = common dso_local global i32 0, align 4
@CAM_WEP40 = common dso_local global i32 0, align 4
@CAM_WEP104 = common dso_local global i32 0, align 4
@CAM_TKIP = common dso_local global i32 0, align 4
@CAM_AES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"switch case %#x not processed\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Can not find free hw security cam entry\0A\00", align 1
@CAM_PAIRWISE_KEY_POSITION = common dso_local global i64 0, align 8
@PAIRWISE_KEYIDX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"delete one entry, entry_id is %d\0A\00", align 1
@DBG_LOUD = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"The insert KEY length is %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"The insert KEY is %x %x\0A\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"add one entry\0A\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"Pairwise Key content\00", align 1
@.str.8 = private unnamed_addr constant [18 x i8] c"set Pairwise key\0A\00", align 1
@CAM_CONFIG_NO_USEDK = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"set group key\0A\00", align 1
@NL80211_IFTYPE_ADHOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtl92ce_set_key(%struct.ieee80211_hw* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  %61 = load i32**, i32*** %60, align 8
  %62 = load i32, i32* %21, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = load i32, i32* @MAX_KEY_LEN, align 4
  %67 = call i32 @memset(i32* %65, i32 0, i32 %66)
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
  br label %291

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
  br label %94

84:                                               ; preds = %80
  %85 = load i32, i32* @CAM_WEP104, align 4
  store i32 %85, i32* %12, align 4
  br label %94

86:                                               ; preds = %80
  %87 = load i32, i32* @CAM_TKIP, align 4
  store i32 %87, i32* %12, align 4
  br label %94

88:                                               ; preds = %80
  %89 = load i32, i32* @CAM_AES, align 4
  store i32 %89, i32* %12, align 4
  br label %94

90:                                               ; preds = %80
  %91 = load i32, i32* %12, align 4
  %92 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  %93 = load i32, i32* @CAM_TKIP, align 4
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %90, %88, %86, %84, %82
  %95 = load i32, i32* %13, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %103, label %97

97:                                               ; preds = %94
  %98 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %99 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97, %94
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @rtl92ce_set_key.cam_const_addr, i64 0, i64 %104
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %105, i64 0, i64 0
  store i32* %106, i32** %18, align 8
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %19, align 8
  br label %140

108:                                              ; preds = %97
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @rtl92ce_set_key.cam_const_broad, i64 0, i64 0), i32** %18, align 8
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %19, align 8
  br label %139

113:                                              ; preds = %108
  %114 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %115 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %121 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %119, %113
  %126 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %127 = load i32*, i32** %10, align 8
  %128 = call i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw* %126, i32* %127)
  store i64 %128, i64* %19, align 8
  %129 = load i64, i64* %19, align 8
  %130 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %131 = icmp uge i64 %129, %130
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %291

134:                                              ; preds = %125
  br label %137

135:                                              ; preds = %119
  %136 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  store i64 %136, i64* %19, align 8
  br label %137

137:                                              ; preds = %135, %134
  %138 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  store i64 %138, i64* %9, align 8
  store i32 1, i32* %20, align 4
  br label %139

139:                                              ; preds = %137, %111
  br label %140

140:                                              ; preds = %139, %103
  %141 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %142 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = load i64, i64* %9, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %175

149:                                              ; preds = %140
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %151 = load i32, i32* @COMP_SEC, align 4
  %152 = load i32, i32* @DBG_DMESG, align 4
  %153 = load i64, i64* %19, align 8
  %154 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %153)
  %155 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %156 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %159 = icmp eq i64 %157, %158
  br i1 %159, label %166, label %160

160:                                              ; preds = %149
  %161 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %162 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %170

166:                                              ; preds = %160, %149
  %167 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %168 = load i32*, i32** %10, align 8
  %169 = call i32 @rtl_cam_del_entry(%struct.ieee80211_hw* %167, i32* %168)
  br label %170

170:                                              ; preds = %166, %160
  %171 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %172 = load i32*, i32** %10, align 8
  %173 = load i64, i64* %19, align 8
  %174 = call i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw* %171, i32* %172, i64 %173)
  br label %290

175:                                              ; preds = %140
  %176 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %177 = load i32, i32* @COMP_SEC, align 4
  %178 = load i32, i32* @DBG_LOUD, align 4
  %179 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %180 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %180, i32 0, i32 0
  %182 = load i64*, i64** %181, align 8
  %183 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %184 = getelementptr inbounds i64, i64* %182, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %176, i32 %177, i32 %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %185)
  %187 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %188 = load i32, i32* @COMP_SEC, align 4
  %189 = load i32, i32* @DBG_LOUD, align 4
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %191 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %191, i32 0, i32 1
  %193 = load i32**, i32*** %192, align 8
  %194 = getelementptr inbounds i32*, i32** %193, i64 0
  %195 = load i32*, i32** %194, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %199 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  %201 = load i32**, i32*** %200, align 8
  %202 = getelementptr inbounds i32*, i32** %201, i64 0
  %203 = load i32*, i32** %202, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 1
  %205 = load i32, i32* %204, align 4
  %206 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %187, i32 %188, i32 %189, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %197, i32 %205)
  %207 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %208 = load i32, i32* @COMP_SEC, align 4
  %209 = load i32, i32* @DBG_DMESG, align 4
  %210 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %207, i32 %208, i32 %209, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %211 = load i32, i32* %20, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %247

213:                                              ; preds = %175
  %214 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %215 = load i32, i32* @COMP_SEC, align 4
  %216 = load i32, i32* @DBG_LOUD, align 4
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %218 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 8
  %221 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %222 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %221, i32 0, i32 0
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %226 = getelementptr inbounds i64, i64* %224, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %214, i32 %215, i32 %216, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %220, i64 %227)
  %229 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %230 = load i32, i32* @COMP_SEC, align 4
  %231 = load i32, i32* @DBG_DMESG, align 4
  %232 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %229, i32 %230, i32 %231, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %233 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %234 = load i32*, i32** %18, align 8
  %235 = load i64, i64* %9, align 8
  %236 = load i64, i64* %19, align 8
  %237 = load i32, i32* %12, align 4
  %238 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %239 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %240 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %239, i32 0, i32 0
  %241 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %240, i32 0, i32 1
  %242 = load i32**, i32*** %241, align 8
  %243 = load i64, i64* %9, align 8
  %244 = getelementptr inbounds i32*, i32** %242, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %233, i32* %234, i64 %235, i64 %236, i32 %237, i32 %238, i32* %245)
  br label %289

247:                                              ; preds = %175
  %248 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %249 = load i32, i32* @COMP_SEC, align 4
  %250 = load i32, i32* @DBG_DMESG, align 4
  %251 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %248, i32 %249, i32 %250, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %252 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %253 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %252, i32 0, i32 0
  %254 = load i64, i64* %253, align 8
  %255 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %257, label %274

257:                                              ; preds = %247
  %258 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %259 = load %struct.rtl_efuse*, %struct.rtl_efuse** %17, align 8
  %260 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %259, i32 0, i32 0
  %261 = load i32*, i32** %260, align 8
  %262 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %263 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  %264 = load i32, i32* %12, align 4
  %265 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %266 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %267 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %266, i32 0, i32 0
  %268 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %267, i32 0, i32 1
  %269 = load i32**, i32*** %268, align 8
  %270 = load i64, i64* %19, align 8
  %271 = getelementptr inbounds i32*, i32** %269, i64 %270
  %272 = load i32*, i32** %271, align 8
  %273 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %258, i32* %261, i64 %262, i64 %263, i32 %264, i32 %265, i32* %272)
  br label %274

274:                                              ; preds = %257, %247
  %275 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %276 = load i32*, i32** %18, align 8
  %277 = load i64, i64* %9, align 8
  %278 = load i64, i64* %19, align 8
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %281 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %282 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %282, i32 0, i32 1
  %284 = load i32**, i32*** %283, align 8
  %285 = load i64, i64* %19, align 8
  %286 = getelementptr inbounds i32*, i32** %284, i64 %285
  %287 = load i32*, i32** %286, align 8
  %288 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %275, i32* %276, i64 %277, i64 %278, i32 %279, i32 %280, i32* %287)
  br label %289

289:                                              ; preds = %274, %213
  br label %290

290:                                              ; preds = %289, %170
  br label %291

291:                                              ; preds = %132, %290, %79
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_cam_mark_invalid(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_cam_empty_entry(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl_cam_del_entry(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32, i64) #1

declare dso_local i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw*, i32*, i64, i64, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
