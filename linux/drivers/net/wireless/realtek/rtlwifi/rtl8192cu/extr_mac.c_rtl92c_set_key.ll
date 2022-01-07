; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192cu/extr_mac.c_rtl92c_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32**, i32, i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i32* }

@rtl92c_set_key.cam_const_addr = internal global [4 x [6 x i32]] [[6 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 3]], align 16
@rtl92c_set_key.cam_const_broad = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
@COMP_SEC = common dso_local global i32 0, align 4
@DBG_DMESG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"clear_all\0A\00", align 1
@MAX_KEY_LEN = common dso_local global i32 0, align 4
@CAM_WEP40 = common dso_local global i32 0, align 4
@CAM_WEP104 = common dso_local global i32 0, align 4
@CAM_TKIP = common dso_local global i32 0, align 4
@CAM_AES = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"illegal switch case\0A\00", align 1
@NL80211_IFTYPE_AP = common dso_local global i64 0, align 8
@NL80211_IFTYPE_MESH_POINT = common dso_local global i64 0, align 8
@TOTAL_CAM_ENTRY = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [41 x i8] c"Can not find free hw security cam entry\0A\00", align 1
@CAM_PAIRWISE_KEY_POSITION = common dso_local global i64 0, align 8
@PAIRWISE_KEYIDX = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"delete one entry\0A\00", align 1
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
define dso_local void @rtl92c_set_key(%struct.ieee80211_hw* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  br label %289

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
  br label %93

84:                                               ; preds = %80
  %85 = load i32, i32* @CAM_WEP104, align 4
  store i32 %85, i32* %12, align 4
  br label %93

86:                                               ; preds = %80
  %87 = load i32, i32* @CAM_TKIP, align 4
  store i32 %87, i32* %12, align 4
  br label %93

88:                                               ; preds = %80
  %89 = load i32, i32* @CAM_AES, align 4
  store i32 %89, i32* %12, align 4
  br label %93

90:                                               ; preds = %80
  %91 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %92 = load i32, i32* @CAM_TKIP, align 4
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %90, %88, %86, %84, %82
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %93
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %98 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 3
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %96, %93
  %103 = load i64, i64* %9, align 8
  %104 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @rtl92c_set_key.cam_const_addr, i64 0, i64 %103
  %105 = getelementptr inbounds [6 x i32], [6 x i32]* %104, i64 0, i64 0
  store i32* %105, i32** %18, align 8
  %106 = load i64, i64* %9, align 8
  store i64 %106, i64* %19, align 8
  br label %139

107:                                              ; preds = %96
  %108 = load i32, i32* %11, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %107
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @rtl92c_set_key.cam_const_broad, i64 0, i64 0), i32** %18, align 8
  %111 = load i64, i64* %9, align 8
  store i64 %111, i64* %19, align 8
  br label %138

112:                                              ; preds = %107
  %113 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %114 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %124, label %118

118:                                              ; preds = %112
  %119 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %120 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %134

124:                                              ; preds = %118, %112
  %125 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %126 = load i32*, i32** %10, align 8
  %127 = call i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw* %125, i32* %126)
  store i64 %127, i64* %19, align 8
  %128 = load i64, i64* %19, align 8
  %129 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %130 = icmp uge i64 %128, %129
  br i1 %130, label %131, label %133

131:                                              ; preds = %124
  %132 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %289

133:                                              ; preds = %124
  br label %136

134:                                              ; preds = %118
  %135 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  store i64 %135, i64* %19, align 8
  br label %136

136:                                              ; preds = %134, %133
  %137 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  store i64 %137, i64* %9, align 8
  store i32 1, i32* %20, align 4
  br label %138

138:                                              ; preds = %136, %110
  br label %139

139:                                              ; preds = %138, %102
  %140 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %141 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %9, align 8
  %145 = getelementptr inbounds i64, i64* %143, i64 %144
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %146, 0
  br i1 %147, label %148, label %173

148:                                              ; preds = %139
  %149 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %150 = load i32, i32* @COMP_SEC, align 4
  %151 = load i32, i32* @DBG_DMESG, align 4
  %152 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %149, i32 %150, i32 %151, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %153 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %154 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %164, label %158

158:                                              ; preds = %148
  %159 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %160 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @NL80211_IFTYPE_MESH_POINT, align 8
  %163 = icmp eq i64 %161, %162
  br i1 %163, label %164, label %168

164:                                              ; preds = %158, %148
  %165 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %166 = load i32*, i32** %10, align 8
  %167 = call i32 @rtl_cam_del_entry(%struct.ieee80211_hw* %165, i32* %166)
  br label %168

168:                                              ; preds = %164, %158
  %169 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %170 = load i32*, i32** %10, align 8
  %171 = load i64, i64* %19, align 8
  %172 = call i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw* %169, i32* %170, i64 %171)
  br label %288

173:                                              ; preds = %139
  %174 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %175 = load i32, i32* @COMP_SEC, align 4
  %176 = load i32, i32* @DBG_LOUD, align 4
  %177 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %178 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 0
  %180 = load i64*, i64** %179, align 8
  %181 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %182 = getelementptr inbounds i64, i64* %180, i64 %181
  %183 = load i64, i64* %182, align 8
  %184 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %174, i32 %175, i32 %176, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i64 %183)
  %185 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %186 = load i32, i32* @COMP_SEC, align 4
  %187 = load i32, i32* @DBG_LOUD, align 4
  %188 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %189 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %188, i32 0, i32 0
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %189, i32 0, i32 1
  %191 = load i32**, i32*** %190, align 8
  %192 = getelementptr inbounds i32*, i32** %191, i64 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 0
  %195 = load i32, i32* %194, align 4
  %196 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %197 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %197, i32 0, i32 1
  %199 = load i32**, i32*** %198, align 8
  %200 = getelementptr inbounds i32*, i32** %199, i64 0
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 1
  %203 = load i32, i32* %202, align 4
  %204 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %185, i32 %186, i32 %187, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i32 %195, i32 %203)
  %205 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %206 = load i32, i32* @COMP_SEC, align 4
  %207 = load i32, i32* @DBG_DMESG, align 4
  %208 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %205, i32 %206, i32 %207, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %209 = load i32, i32* %20, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %245

211:                                              ; preds = %173
  %212 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %213 = load i32, i32* @COMP_SEC, align 4
  %214 = load i32, i32* @DBG_LOUD, align 4
  %215 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %216 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %220 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 0
  %222 = load i64*, i64** %221, align 8
  %223 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %224 = getelementptr inbounds i64, i64* %222, i64 %223
  %225 = load i64, i64* %224, align 8
  %226 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %212, i32 %213, i32 %214, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 %218, i64 %225)
  %227 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %228 = load i32, i32* @COMP_SEC, align 4
  %229 = load i32, i32* @DBG_DMESG, align 4
  %230 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %227, i32 %228, i32 %229, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.8, i64 0, i64 0))
  %231 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %232 = load i32*, i32** %18, align 8
  %233 = load i64, i64* %9, align 8
  %234 = load i64, i64* %19, align 8
  %235 = load i32, i32* %12, align 4
  %236 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %237 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %238 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32**, i32*** %239, align 8
  %241 = load i64, i64* %9, align 8
  %242 = getelementptr inbounds i32*, i32** %240, i64 %241
  %243 = load i32*, i32** %242, align 8
  %244 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %231, i32* %232, i64 %233, i64 %234, i32 %235, i32 %236, i32* %243)
  br label %287

245:                                              ; preds = %173
  %246 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %247 = load i32, i32* @COMP_SEC, align 4
  %248 = load i32, i32* @DBG_DMESG, align 4
  %249 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %246, i32 %247, i32 %248, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %250 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %251 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %254 = icmp eq i64 %252, %253
  br i1 %254, label %255, label %272

255:                                              ; preds = %245
  %256 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %257 = load %struct.rtl_efuse*, %struct.rtl_efuse** %17, align 8
  %258 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %257, i32 0, i32 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %261 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %264 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %265 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %265, i32 0, i32 1
  %267 = load i32**, i32*** %266, align 8
  %268 = load i64, i64* %19, align 8
  %269 = getelementptr inbounds i32*, i32** %267, i64 %268
  %270 = load i32*, i32** %269, align 8
  %271 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %256, i32* %259, i64 %260, i64 %261, i32 %262, i32 %263, i32* %270)
  br label %272

272:                                              ; preds = %255, %245
  %273 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %274 = load i32*, i32** %18, align 8
  %275 = load i64, i64* %9, align 8
  %276 = load i64, i64* %19, align 8
  %277 = load i32, i32* %12, align 4
  %278 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %279 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %280 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %280, i32 0, i32 1
  %282 = load i32**, i32*** %281, align 8
  %283 = load i64, i64* %19, align 8
  %284 = getelementptr inbounds i32*, i32** %282, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %273, i32* %274, i64 %275, i64 %276, i32 %277, i32 %278, i32* %285)
  br label %287

287:                                              ; preds = %272, %211
  br label %288

288:                                              ; preds = %287, %168
  br label %289

289:                                              ; preds = %131, %288, %79
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_cam_mark_invalid(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_cam_empty_entry(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

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
