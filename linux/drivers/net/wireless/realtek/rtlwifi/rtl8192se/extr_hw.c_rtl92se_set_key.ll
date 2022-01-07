; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_set_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192se/extr_hw.c_rtl92se_set_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32*, i64 }
%struct.rtl_mac = type { i64 }
%struct.rtl_efuse = type { i32* }

@rtl92se_set_key.cam_const_addr = internal global [4 x [6 x i32]] [[6 x i32] zeroinitializer, [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 2], [6 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 3]], align 16
@rtl92se_set_key.cam_const_broad = internal global [6 x i32] [i32 255, i32 255, i32 255, i32 255, i32 255, i32 255], align 16
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
define dso_local void @rtl92se_set_key(%struct.ieee80211_hw* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
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
  br label %233

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
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %97, %94
  %104 = load i64, i64* %9, align 8
  %105 = getelementptr inbounds [4 x [6 x i32]], [4 x [6 x i32]]* @rtl92se_set_key.cam_const_addr, i64 0, i64 %104
  %106 = getelementptr inbounds [6 x i32], [6 x i32]* %105, i64 0, i64 0
  store i32* %106, i32** %18, align 8
  %107 = load i64, i64* %9, align 8
  store i64 %107, i64* %19, align 8
  br label %134

108:                                              ; preds = %97
  %109 = load i32, i32* %11, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  store i32* getelementptr inbounds ([6 x i32], [6 x i32]* @rtl92se_set_key.cam_const_broad, i64 0, i64 0), i32** %18, align 8
  %112 = load i64, i64* %9, align 8
  store i64 %112, i64* %19, align 8
  br label %133

113:                                              ; preds = %108
  %114 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %115 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %129

119:                                              ; preds = %113
  %120 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw* %120, i32* %121)
  store i64 %122, i64* %19, align 8
  %123 = load i64, i64* %19, align 8
  %124 = load i64, i64* @TOTAL_CAM_ENTRY, align 8
  %125 = icmp uge i64 %123, %124
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %233

128:                                              ; preds = %119
  br label %131

129:                                              ; preds = %113
  %130 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  store i64 %130, i64* %19, align 8
  br label %131

131:                                              ; preds = %129, %128
  %132 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  store i64 %132, i64* %9, align 8
  store i32 1, i32* %20, align 4
  br label %133

133:                                              ; preds = %131, %111
  br label %134

134:                                              ; preds = %133, %103
  %135 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %136 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = load i64, i64* %9, align 8
  %140 = getelementptr inbounds i64, i64* %138, i64 %139
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %141, 0
  br i1 %142, label %143, label %163

143:                                              ; preds = %134
  %144 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %145 = load i32, i32* @COMP_SEC, align 4
  %146 = load i32, i32* @DBG_DMESG, align 4
  %147 = load i64, i64* %19, align 8
  %148 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %144, i32 %145, i32 %146, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %147)
  %149 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %150 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @NL80211_IFTYPE_AP, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %158

154:                                              ; preds = %143
  %155 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %156 = load i32*, i32** %10, align 8
  %157 = call i32 @rtl_cam_del_entry(%struct.ieee80211_hw* %155, i32* %156)
  br label %158

158:                                              ; preds = %154, %143
  %159 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %160 = load i32*, i32** %10, align 8
  %161 = load i64, i64* %19, align 8
  %162 = call i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw* %159, i32* %160, i64 %161)
  br label %232

163:                                              ; preds = %134
  %164 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %165 = load i32, i32* @COMP_SEC, align 4
  %166 = load i32, i32* @DBG_DMESG, align 4
  %167 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %164, i32 %165, i32 %166, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %168 = load i32, i32* %20, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %189

170:                                              ; preds = %163
  %171 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %172 = load i32, i32* @COMP_SEC, align 4
  %173 = load i32, i32* @DBG_DMESG, align 4
  %174 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %171, i32 %172, i32 %173, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  %175 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %176 = load i32*, i32** %18, align 8
  %177 = load i64, i64* %9, align 8
  %178 = load i64, i64* %19, align 8
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %181 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %182 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %182, i32 0, i32 1
  %184 = load i32*, i32** %183, align 8
  %185 = load i64, i64* %9, align 8
  %186 = getelementptr inbounds i32, i32* %184, i64 %185
  %187 = load i32, i32* %186, align 4
  %188 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %175, i32* %176, i64 %177, i64 %178, i32 %179, i32 %180, i32 %187)
  br label %231

189:                                              ; preds = %163
  %190 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %191 = load i32, i32* @COMP_SEC, align 4
  %192 = load i32, i32* @DBG_DMESG, align 4
  %193 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0))
  %194 = load %struct.rtl_mac*, %struct.rtl_mac** %16, align 8
  %195 = getelementptr inbounds %struct.rtl_mac, %struct.rtl_mac* %194, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = load i64, i64* @NL80211_IFTYPE_ADHOC, align 8
  %198 = icmp eq i64 %196, %197
  br i1 %198, label %199, label %216

199:                                              ; preds = %189
  %200 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %201 = load %struct.rtl_efuse*, %struct.rtl_efuse** %17, align 8
  %202 = getelementptr inbounds %struct.rtl_efuse, %struct.rtl_efuse* %201, i32 0, i32 0
  %203 = load i32*, i32** %202, align 8
  %204 = load i64, i64* @PAIRWISE_KEYIDX, align 8
  %205 = load i64, i64* @CAM_PAIRWISE_KEY_POSITION, align 8
  %206 = load i32, i32* %12, align 4
  %207 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %208 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %209 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = load i64, i64* %19, align 8
  %213 = getelementptr inbounds i32, i32* %211, i64 %212
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %200, i32* %203, i64 %204, i64 %205, i32 %206, i32 %207, i32 %214)
  br label %216

216:                                              ; preds = %199, %189
  %217 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %8, align 8
  %218 = load i32*, i32** %18, align 8
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* %19, align 8
  %221 = load i32, i32* %12, align 4
  %222 = load i32, i32* @CAM_CONFIG_NO_USEDK, align 4
  %223 = load %struct.rtl_priv*, %struct.rtl_priv** %15, align 8
  %224 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %223, i32 0, i32 0
  %225 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i64, i64* %19, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = call i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw* %217, i32* %218, i64 %219, i64 %220, i32 %221, i32 %222, i32 %229)
  br label %231

231:                                              ; preds = %216, %170
  br label %232

232:                                              ; preds = %231, %158
  br label %233

233:                                              ; preds = %126, %232, %79
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local %struct.rtl_mac* @rtl_mac(%struct.rtl_priv*) #1

declare dso_local %struct.rtl_efuse* @rtl_efuse(%struct.rtl_priv*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @rtl_cam_mark_invalid(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @rtl_cam_empty_entry(%struct.ieee80211_hw*, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @rtl_cam_get_free_entry(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl_cam_del_entry(%struct.ieee80211_hw*, i32*) #1

declare dso_local i32 @rtl_cam_delete_one_entry(%struct.ieee80211_hw*, i32*, i64) #1

declare dso_local i32 @rtl_cam_add_one_entry(%struct.ieee80211_hw*, i32*, i64, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
