; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_bt_info_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_coex.c_rtw_coex_bt_info_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.rtw_chip_info*, %struct.rtw_coex }
%struct.rtw_chip_info = type { i64 }
%struct.rtw_coex = type { i32, i32, %struct.rtw_coex_stat }
%struct.rtw_coex_stat = type { i32, i32*, i32, i32, i32, i32**, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@COEX_BTINFO_SRC_MAX = common dso_local global i32 0, align 4
@COEX_BTINFO_SRC_WL_FW = common dso_local global i32 0, align 4
@COEX_BTINFO_SRC_BT_IQK = common dso_local global i32 0, align 4
@COEX_CNT_BT_IQK = common dso_local global i64 0, align 8
@COEX_CNT_BT_IQKFAIL = common dso_local global i64 0, align 8
@COEX_BTINFO_SRC_BT_SCBD = common dso_local global i32 0, align 4
@COEX_RSN_BTINFO = common dso_local global i32 0, align 4
@COEX_BTINFO_SRC_BT_RSP = common dso_local global i32 0, align 4
@COEX_BTINFO_SRC_BT_ACT = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@COEX_BTINFO_LENGTH_MAX = common dso_local global i32 0, align 4
@COEX_CNT_BT_RETRY = common dso_local global i64 0, align 8
@COEX_CNT_BT_POPEVENT = common dso_local global i64 0, align 8
@COEX_CNT_BT_INQ = common dso_local global i64 0, align 8
@COEX_CNT_BT_PAGE = common dso_local global i64 0, align 8
@COEX_SCBD_SCAN = common dso_local global i32 0, align 4
@COEX_BTRSSI_RATIO = common dso_local global i64 0, align 8
@COEX_CNT_BT_REINIT = common dso_local global i64 0, align 8
@COEX_CNT_BT_SETUPLINK = common dso_local global i64 0, align 8
@COEX_CNT_BT_IGNWLANACT = common dso_local global i64 0, align 8
@COEX_CNT_BT_ROLESWITCH = common dso_local global i64 0, align 8
@COEX_MEDIA_CONNECT = common dso_local global i32 0, align 4
@COEX_MEDIA_DISCONNECT = common dso_local global i32 0, align 4
@COEX_CNT_BT_AFHUPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtw_coex_bt_info_notify(%struct.rtw_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtw_coex*, align 8
  %8 = alloca %struct.rtw_coex_stat*, align 8
  %9 = alloca %struct.rtw_chip_info*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %14, i32 0, i32 2
  store %struct.rtw_coex* %15, %struct.rtw_coex** %7, align 8
  %16 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %17 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %16, i32 0, i32 2
  store %struct.rtw_coex_stat* %17, %struct.rtw_coex_stat** %8, align 8
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  %20 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %19, align 8
  store %struct.rtw_chip_info* %20, %struct.rtw_chip_info** %9, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, 15
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @COEX_BTINFO_SRC_MAX, align 4
  %27 = icmp sge i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @COEX_BTINFO_SRC_WL_FW, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %3
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @COEX_BTINFO_SRC_BT_IQK, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %67

34:                                               ; preds = %30
  %35 = load i32*, i32** %5, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %39 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %41 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %46 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = load i64, i64* @COEX_CNT_BT_IQK, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %49, align 4
  br label %66

52:                                               ; preds = %34
  %53 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %54 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %65

57:                                               ; preds = %52
  %58 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %59 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i64, i64* @COEX_CNT_BT_IQKFAIL, align 8
  %62 = getelementptr inbounds i32, i32* %60, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %57, %52
  br label %66

66:                                               ; preds = %65, %44
  br label %763

67:                                               ; preds = %30
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* @COEX_BTINFO_SRC_BT_SCBD, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %67
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %73 = call i32 @rtw_coex_monitor_bt_enable(%struct.rtw_dev* %72)
  %74 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %75 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %78 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %76, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %71
  %82 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %83 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %86 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 4
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %88 = load i32, i32* @COEX_RSN_BTINFO, align 4
  %89 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %87, i32 %88)
  br label %90

90:                                               ; preds = %81, %71
  br label %763

91:                                               ; preds = %67
  %92 = load i32, i32* %12, align 4
  %93 = load i32, i32* @COEX_BTINFO_SRC_BT_RSP, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @COEX_BTINFO_SRC_BT_ACT, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %119

99:                                               ; preds = %95, %91
  %100 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %101 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %118

104:                                              ; preds = %99
  %105 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %106 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %105, i32 0, i32 2
  store i32 0, i32* %106, align 8
  %107 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %108 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %107, i32 0, i32 4
  store i32 1, i32* %108, align 8
  %109 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %110 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %113 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %112, i32 0, i32 1
  %114 = load i32, i32* @HZ, align 4
  %115 = mul nsw i32 15, %114
  %116 = sext i32 %115 to i64
  %117 = call i32 @ieee80211_queue_delayed_work(i32 %111, i32* %113, i64 %116)
  br label %118

118:                                              ; preds = %104, %99
  br label %119

119:                                              ; preds = %118, %95
  store i32 0, i32* %11, align 4
  br label %120

120:                                              ; preds = %146, %119
  %121 = load i32, i32* %11, align 4
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %149

124:                                              ; preds = %120
  %125 = load i32, i32* %11, align 4
  %126 = load i32, i32* @COEX_BTINFO_LENGTH_MAX, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %124
  %129 = load i32*, i32** %5, align 8
  %130 = load i32, i32* %11, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %129, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %135 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %134, i32 0, i32 5
  %136 = load i32**, i32*** %135, align 8
  %137 = load i32, i32* %12, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32*, i32** %136, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %133, i32* %143, align 4
  br label %145

144:                                              ; preds = %124
  br label %149

145:                                              ; preds = %128
  br label %146

146:                                              ; preds = %145
  %147 = load i32, i32* %11, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %11, align 4
  br label %120

149:                                              ; preds = %144, %120
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* @COEX_BTINFO_SRC_WL_FW, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %153, label %159

153:                                              ; preds = %149
  %154 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %155 = call i32 @rtw_coex_update_bt_link_info(%struct.rtw_dev* %154)
  %156 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %157 = load i32, i32* @COEX_RSN_BTINFO, align 4
  %158 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %156, i32 %157)
  br label %763

159:                                              ; preds = %149
  %160 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %161 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %160, i32 0, i32 5
  %162 = load i32**, i32*** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds i32*, i32** %162, i64 %164
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 1
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %170 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 8
  %172 = icmp eq i32 %168, %171
  br i1 %172, label %173, label %244

173:                                              ; preds = %159
  %174 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %175 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %174, i32 0, i32 5
  %176 = load i32**, i32*** %175, align 8
  %177 = load i32, i32* %12, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i32*, i32** %176, i64 %178
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 2
  %182 = load i32, i32* %181, align 4
  %183 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %184 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %183, i32 0, i32 7
  %185 = load i32, i32* %184, align 4
  %186 = icmp eq i32 %182, %185
  br i1 %186, label %187, label %244

187:                                              ; preds = %173
  %188 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %189 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %188, i32 0, i32 5
  %190 = load i32**, i32*** %189, align 8
  %191 = load i32, i32* %12, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32*, i32** %190, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 3
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %198 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = icmp eq i32 %196, %199
  br i1 %200, label %201, label %244

201:                                              ; preds = %187
  %202 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %203 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %202, i32 0, i32 5
  %204 = load i32**, i32*** %203, align 8
  %205 = load i32, i32* %12, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i32*, i32** %204, i64 %206
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 4
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %212 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %211, i32 0, i32 9
  %213 = load i32, i32* %212, align 4
  %214 = icmp eq i32 %210, %213
  br i1 %214, label %215, label %244

215:                                              ; preds = %201
  %216 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %217 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %216, i32 0, i32 5
  %218 = load i32**, i32*** %217, align 8
  %219 = load i32, i32* %12, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32*, i32** %218, i64 %220
  %222 = load i32*, i32** %221, align 8
  %223 = getelementptr inbounds i32, i32* %222, i64 5
  %224 = load i32, i32* %223, align 4
  %225 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %226 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %225, i32 0, i32 10
  %227 = load i32, i32* %226, align 8
  %228 = icmp eq i32 %224, %227
  br i1 %228, label %229, label %244

229:                                              ; preds = %215
  %230 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %231 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %230, i32 0, i32 5
  %232 = load i32**, i32*** %231, align 8
  %233 = load i32, i32* %12, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i32*, i32** %232, i64 %234
  %236 = load i32*, i32** %235, align 8
  %237 = getelementptr inbounds i32, i32* %236, i64 6
  %238 = load i32, i32* %237, align 4
  %239 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %240 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %239, i32 0, i32 11
  %241 = load i32, i32* %240, align 4
  %242 = icmp eq i32 %238, %241
  br i1 %242, label %243, label %244

243:                                              ; preds = %229
  br label %763

244:                                              ; preds = %229, %215, %201, %187, %173, %159
  %245 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %246 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %245, i32 0, i32 5
  %247 = load i32**, i32*** %246, align 8
  %248 = load i32, i32* %12, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i32*, i32** %247, i64 %249
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %255 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %254, i32 0, i32 6
  store i32 %253, i32* %255, align 8
  %256 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %257 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %256, i32 0, i32 5
  %258 = load i32**, i32*** %257, align 8
  %259 = load i32, i32* %12, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i32*, i32** %258, i64 %260
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 2
  %264 = load i32, i32* %263, align 4
  %265 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %266 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %265, i32 0, i32 7
  store i32 %264, i32* %266, align 4
  %267 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %268 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %267, i32 0, i32 5
  %269 = load i32**, i32*** %268, align 8
  %270 = load i32, i32* %12, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds i32*, i32** %269, i64 %271
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 3
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %277 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %276, i32 0, i32 8
  store i32 %275, i32* %277, align 8
  %278 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %279 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %278, i32 0, i32 5
  %280 = load i32**, i32*** %279, align 8
  %281 = load i32, i32* %12, align 4
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32*, i32** %280, i64 %282
  %284 = load i32*, i32** %283, align 8
  %285 = getelementptr inbounds i32, i32* %284, i64 4
  %286 = load i32, i32* %285, align 4
  %287 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %288 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %287, i32 0, i32 9
  store i32 %286, i32* %288, align 4
  %289 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %290 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %289, i32 0, i32 5
  %291 = load i32**, i32*** %290, align 8
  %292 = load i32, i32* %12, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds i32*, i32** %291, i64 %293
  %295 = load i32*, i32** %294, align 8
  %296 = getelementptr inbounds i32, i32* %295, i64 5
  %297 = load i32, i32* %296, align 4
  %298 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %299 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %298, i32 0, i32 10
  store i32 %297, i32* %299, align 8
  %300 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %301 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %300, i32 0, i32 5
  %302 = load i32**, i32*** %301, align 8
  %303 = load i32, i32* %12, align 4
  %304 = sext i32 %303 to i64
  %305 = getelementptr inbounds i32*, i32** %302, i64 %304
  %306 = load i32*, i32** %305, align 8
  %307 = getelementptr inbounds i32, i32* %306, i64 6
  %308 = load i32, i32* %307, align 4
  %309 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %310 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %309, i32 0, i32 11
  store i32 %308, i32* %310, align 4
  %311 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %312 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %311, i32 0, i32 6
  %313 = load i32, i32* %312, align 8
  %314 = icmp eq i32 %313, 255
  %315 = zext i1 %314 to i32
  %316 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %317 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %316, i32 0, i32 12
  store i32 %315, i32* %317, align 8
  %318 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %319 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %318, i32 0, i32 6
  %320 = load i32, i32* %319, align 8
  %321 = call i32 @BIT(i32 2)
  %322 = and i32 %320, %321
  %323 = call i32 @BIT(i32 2)
  %324 = icmp eq i32 %322, %323
  %325 = zext i1 %324 to i32
  %326 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %327 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %326, i32 0, i32 13
  store i32 %325, i32* %327, align 4
  %328 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %329 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %328, i32 0, i32 6
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @BIT(i32 3)
  %332 = and i32 %330, %331
  %333 = call i32 @BIT(i32 3)
  %334 = icmp eq i32 %332, %333
  %335 = zext i1 %334 to i32
  %336 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %337 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %336, i32 0, i32 14
  store i32 %335, i32* %337, align 8
  %338 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %339 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = and i32 %340, 15
  %342 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %343 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %342, i32 0, i32 1
  %344 = load i32*, i32** %343, align 8
  %345 = load i64, i64* @COEX_CNT_BT_RETRY, align 8
  %346 = getelementptr inbounds i32, i32* %344, i64 %345
  store i32 %341, i32* %346, align 4
  %347 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %348 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load i64, i64* @COEX_CNT_BT_RETRY, align 8
  %351 = getelementptr inbounds i32, i32* %349, i64 %350
  %352 = load i32, i32* %351, align 4
  %353 = icmp sge i32 %352, 1
  br i1 %353, label %354, label %362

354:                                              ; preds = %244
  %355 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %356 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %355, i32 0, i32 1
  %357 = load i32*, i32** %356, align 8
  %358 = load i64, i64* @COEX_CNT_BT_POPEVENT, align 8
  %359 = getelementptr inbounds i32, i32* %357, i64 %358
  %360 = load i32, i32* %359, align 4
  %361 = add nsw i32 %360, 1
  store i32 %361, i32* %359, align 4
  br label %362

362:                                              ; preds = %354, %244
  %363 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %364 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %363, i32 0, i32 7
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @BIT(i32 4)
  %367 = and i32 %365, %366
  %368 = call i32 @BIT(i32 4)
  %369 = icmp eq i32 %367, %368
  %370 = zext i1 %369 to i32
  %371 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %372 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %371, i32 0, i32 15
  store i32 %370, i32* %372, align 4
  %373 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %374 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %373, i32 0, i32 7
  %375 = load i32, i32* %374, align 4
  %376 = call i32 @BIT(i32 5)
  %377 = and i32 %375, %376
  %378 = call i32 @BIT(i32 5)
  %379 = icmp eq i32 %377, %378
  %380 = zext i1 %379 to i32
  %381 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %382 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %381, i32 0, i32 16
  store i32 %380, i32* %382, align 8
  %383 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %384 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %383, i32 0, i32 16
  %385 = load i32, i32* %384, align 8
  %386 = icmp ne i32 %385, 0
  br i1 %386, label %387, label %395

387:                                              ; preds = %362
  %388 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %389 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %388, i32 0, i32 1
  %390 = load i32*, i32** %389, align 8
  %391 = load i64, i64* @COEX_CNT_BT_INQ, align 8
  %392 = getelementptr inbounds i32, i32* %390, i64 %391
  %393 = load i32, i32* %392, align 4
  %394 = add nsw i32 %393, 1
  store i32 %394, i32* %392, align 4
  br label %395

395:                                              ; preds = %387, %362
  %396 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %397 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %396, i32 0, i32 7
  %398 = load i32, i32* %397, align 4
  %399 = call i32 @BIT(i32 7)
  %400 = and i32 %398, %399
  %401 = call i32 @BIT(i32 7)
  %402 = icmp eq i32 %400, %401
  %403 = zext i1 %402 to i32
  %404 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %405 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %404, i32 0, i32 17
  store i32 %403, i32* %405, align 4
  %406 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %407 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %406, i32 0, i32 17
  %408 = load i32, i32* %407, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %446

410:                                              ; preds = %395
  %411 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %412 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %411, i32 0, i32 1
  %413 = load i32*, i32** %412, align 8
  %414 = load i64, i64* @COEX_CNT_BT_PAGE, align 8
  %415 = getelementptr inbounds i32, i32* %413, i64 %414
  %416 = load i32, i32* %415, align 4
  %417 = add nsw i32 %416, 1
  store i32 %417, i32* %415, align 4
  %418 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %419 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %418, i32 0, i32 36
  %420 = load i64, i64* %419, align 8
  %421 = icmp ne i64 %420, 0
  br i1 %421, label %437, label %422

422:                                              ; preds = %410
  %423 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %424 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %423, i32 0, i32 35
  %425 = load i64, i64* %424, align 8
  %426 = icmp ne i64 %425, 0
  br i1 %426, label %437, label %427

427:                                              ; preds = %422
  %428 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %429 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %428, i32 0, i32 34
  %430 = load i64, i64* %429, align 8
  %431 = icmp ne i64 %430, 0
  br i1 %431, label %437, label %432

432:                                              ; preds = %427
  %433 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %434 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %433, i32 0, i32 33
  %435 = load i64, i64* %434, align 8
  %436 = icmp ne i64 %435, 0
  br i1 %436, label %437, label %441

437:                                              ; preds = %432, %427, %422, %410
  %438 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %439 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %440 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %438, i32 %439, i32 1)
  br label %445

441:                                              ; preds = %432
  %442 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %443 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %444 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %442, i32 %443, i32 0)
  br label %445

445:                                              ; preds = %441, %437
  br label %450

446:                                              ; preds = %395
  %447 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %448 = load i32, i32* @COEX_SCBD_SCAN, align 4
  %449 = call i32 @rtw_coex_write_scbd(%struct.rtw_dev* %447, i32 %448, i32 0)
  br label %450

450:                                              ; preds = %446, %445
  %451 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %9, align 8
  %452 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %451, i32 0, i32 0
  %453 = load i64, i64* %452, align 8
  %454 = load i64, i64* @COEX_BTRSSI_RATIO, align 8
  %455 = icmp eq i64 %453, %454
  br i1 %455, label %456, label %464

456:                                              ; preds = %450
  %457 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %458 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %457, i32 0, i32 8
  %459 = load i32, i32* %458, align 8
  %460 = mul nsw i32 %459, 2
  %461 = add nsw i32 %460, 10
  %462 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %463 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %462, i32 0, i32 18
  store i32 %461, i32* %463, align 8
  br label %491

464:                                              ; preds = %450
  %465 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %466 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %465, i32 0, i32 8
  %467 = load i32, i32* %466, align 8
  %468 = icmp sle i32 %467, 127
  br i1 %468, label %469, label %472

469:                                              ; preds = %464
  %470 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %471 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %470, i32 0, i32 18
  store i32 100, i32* %471, align 8
  br label %490

472:                                              ; preds = %464
  %473 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %474 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %473, i32 0, i32 8
  %475 = load i32, i32* %474, align 8
  %476 = sub nsw i32 256, %475
  %477 = icmp sle i32 %476, 100
  br i1 %477, label %478, label %486

478:                                              ; preds = %472
  %479 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %480 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %479, i32 0, i32 8
  %481 = load i32, i32* %480, align 8
  %482 = sub nsw i32 256, %481
  %483 = sub nsw i32 100, %482
  %484 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %485 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %484, i32 0, i32 18
  store i32 %483, i32* %485, align 8
  br label %489

486:                                              ; preds = %472
  %487 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %488 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %487, i32 0, i32 18
  store i32 0, i32* %488, align 8
  br label %489

489:                                              ; preds = %486, %478
  br label %490

490:                                              ; preds = %489, %469
  br label %491

491:                                              ; preds = %490, %456
  %492 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %493 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %492, i32 0, i32 9
  %494 = load i32, i32* %493, align 4
  %495 = call i32 @BIT(i32 0)
  %496 = and i32 %494, %495
  %497 = call i32 @BIT(i32 0)
  %498 = icmp eq i32 %496, %497
  %499 = zext i1 %498 to i32
  %500 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %501 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %500, i32 0, i32 19
  store i32 %499, i32* %501, align 4
  %502 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %503 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %502, i32 0, i32 9
  %504 = load i32, i32* %503, align 4
  %505 = call i32 @BIT(i32 1)
  %506 = and i32 %504, %505
  %507 = icmp ne i32 %506, 0
  br i1 %507, label %508, label %516

508:                                              ; preds = %491
  %509 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %510 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %509, i32 0, i32 1
  %511 = load i32*, i32** %510, align 8
  %512 = load i64, i64* @COEX_CNT_BT_REINIT, align 8
  %513 = getelementptr inbounds i32, i32* %511, i64 %512
  %514 = load i32, i32* %513, align 4
  %515 = add nsw i32 %514, 1
  store i32 %515, i32* %513, align 4
  br label %516

516:                                              ; preds = %508, %491
  %517 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %518 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %517, i32 0, i32 9
  %519 = load i32, i32* %518, align 4
  %520 = call i32 @BIT(i32 2)
  %521 = and i32 %519, %520
  %522 = icmp ne i32 %521, 0
  br i1 %522, label %523, label %553

523:                                              ; preds = %516
  %524 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %525 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %524, i32 0, i32 1
  %526 = load i32*, i32** %525, align 8
  %527 = load i64, i64* @COEX_CNT_BT_SETUPLINK, align 8
  %528 = getelementptr inbounds i32, i32* %526, i64 %527
  %529 = load i32, i32* %528, align 4
  %530 = add nsw i32 %529, 1
  store i32 %530, i32* %528, align 4
  %531 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %532 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %531, i32 0, i32 20
  store i32 1, i32* %532, align 8
  %533 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %534 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %533, i32 0, i32 4
  %535 = load i32, i32* %534, align 8
  %536 = icmp ne i32 %535, 0
  br i1 %536, label %537, label %541

537:                                              ; preds = %523
  %538 = load i32, i32* @HZ, align 4
  %539 = mul nsw i32 6, %538
  %540 = sext i32 %539 to i64
  store i64 %540, i64* %10, align 8
  br label %545

541:                                              ; preds = %523
  %542 = load i32, i32* @HZ, align 4
  %543 = mul nsw i32 2, %542
  %544 = sext i32 %543 to i64
  store i64 %544, i64* %10, align 8
  br label %545

545:                                              ; preds = %541, %537
  %546 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %547 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %546, i32 0, i32 0
  %548 = load i32, i32* %547, align 8
  %549 = load %struct.rtw_coex*, %struct.rtw_coex** %7, align 8
  %550 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %549, i32 0, i32 0
  %551 = load i64, i64* %10, align 8
  %552 = call i32 @ieee80211_queue_delayed_work(i32 %548, i32* %550, i64 %551)
  br label %553

553:                                              ; preds = %545, %516
  %554 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %555 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %554, i32 0, i32 9
  %556 = load i32, i32* %555, align 4
  %557 = call i32 @BIT(i32 3)
  %558 = and i32 %556, %557
  %559 = icmp ne i32 %558, 0
  br i1 %559, label %560, label %568

560:                                              ; preds = %553
  %561 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %562 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %561, i32 0, i32 1
  %563 = load i32*, i32** %562, align 8
  %564 = load i64, i64* @COEX_CNT_BT_IGNWLANACT, align 8
  %565 = getelementptr inbounds i32, i32* %563, i64 %564
  %566 = load i32, i32* %565, align 4
  %567 = add nsw i32 %566, 1
  store i32 %567, i32* %565, align 4
  br label %568

568:                                              ; preds = %560, %553
  %569 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %570 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %569, i32 0, i32 9
  %571 = load i32, i32* %570, align 4
  %572 = call i32 @BIT(i32 4)
  %573 = and i32 %571, %572
  %574 = call i32 @BIT(i32 4)
  %575 = icmp eq i32 %573, %574
  %576 = zext i1 %575 to i32
  %577 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %578 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %577, i32 0, i32 21
  store i32 %576, i32* %578, align 4
  %579 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %580 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %579, i32 0, i32 9
  %581 = load i32, i32* %580, align 4
  %582 = call i32 @BIT(i32 5)
  %583 = and i32 %581, %582
  %584 = call i32 @BIT(i32 5)
  %585 = icmp eq i32 %583, %584
  %586 = zext i1 %585 to i32
  %587 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %588 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %587, i32 0, i32 22
  store i32 %586, i32* %588, align 8
  %589 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %590 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %589, i32 0, i32 9
  %591 = load i32, i32* %590, align 4
  %592 = call i32 @BIT(i32 6)
  %593 = and i32 %591, %592
  %594 = icmp ne i32 %593, 0
  br i1 %594, label %595, label %603

595:                                              ; preds = %568
  %596 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %597 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %596, i32 0, i32 1
  %598 = load i32*, i32** %597, align 8
  %599 = load i64, i64* @COEX_CNT_BT_ROLESWITCH, align 8
  %600 = getelementptr inbounds i32, i32* %598, i64 %599
  %601 = load i32, i32* %600, align 4
  %602 = add nsw i32 %601, 1
  store i32 %602, i32* %600, align 4
  br label %603

603:                                              ; preds = %595, %568
  %604 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %605 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %604, i32 0, i32 9
  %606 = load i32, i32* %605, align 4
  %607 = call i32 @BIT(i32 7)
  %608 = and i32 %606, %607
  %609 = call i32 @BIT(i32 7)
  %610 = icmp eq i32 %608, %609
  %611 = zext i1 %610 to i32
  %612 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %613 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %612, i32 0, i32 23
  store i32 %611, i32* %613, align 4
  %614 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %615 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %614, i32 0, i32 9
  %616 = load i32, i32* %615, align 4
  %617 = call i32 @BIT(i32 1)
  %618 = and i32 %616, %617
  %619 = icmp ne i32 %618, 0
  br i1 %619, label %620, label %633

620:                                              ; preds = %603
  %621 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %622 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %621, i32 0, i32 32
  %623 = load i64, i64* %622, align 8
  %624 = icmp ne i64 %623, 0
  br i1 %624, label %625, label %627

625:                                              ; preds = %620
  %626 = load i32, i32* @COEX_MEDIA_CONNECT, align 4
  store i32 %626, i32* %13, align 4
  br label %629

627:                                              ; preds = %620
  %628 = load i32, i32* @COEX_MEDIA_DISCONNECT, align 4
  store i32 %628, i32* %13, align 4
  br label %629

629:                                              ; preds = %627, %625
  %630 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %631 = load i32, i32* %13, align 4
  %632 = call i32 @rtw_coex_update_wl_ch_info(%struct.rtw_dev* %630, i32 %631)
  br label %633

633:                                              ; preds = %629, %603
  %634 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %635 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %634, i32 0, i32 9
  %636 = load i32, i32* %635, align 4
  %637 = call i32 @BIT(i32 3)
  %638 = and i32 %636, %637
  %639 = icmp ne i32 %638, 0
  br i1 %639, label %640, label %650

640:                                              ; preds = %633
  %641 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %642 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %641, i32 0, i32 9
  %643 = load i32, i32* %642, align 4
  %644 = call i32 @BIT(i32 2)
  %645 = and i32 %643, %644
  %646 = icmp ne i32 %645, 0
  br i1 %646, label %650, label %647

647:                                              ; preds = %640
  %648 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %649 = call i32 @rtw_coex_ignore_wlan_act(%struct.rtw_dev* %648, i32 0)
  br label %650

650:                                              ; preds = %647, %640, %633
  %651 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %652 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %651, i32 0, i32 10
  %653 = load i32, i32* %652, align 8
  %654 = call i32 @BIT(i32 0)
  %655 = and i32 %653, %654
  %656 = call i32 @BIT(i32 0)
  %657 = icmp eq i32 %655, %656
  %658 = zext i1 %657 to i32
  %659 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %660 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %659, i32 0, i32 24
  store i32 %658, i32* %660, align 8
  %661 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %662 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %661, i32 0, i32 10
  %663 = load i32, i32* %662, align 8
  %664 = call i32 @BIT(i32 1)
  %665 = and i32 %663, %664
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %675

667:                                              ; preds = %650
  %668 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %669 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %668, i32 0, i32 1
  %670 = load i32*, i32** %669, align 8
  %671 = load i64, i64* @COEX_CNT_BT_AFHUPDATE, align 8
  %672 = getelementptr inbounds i32, i32* %670, i64 %671
  %673 = load i32, i32* %672, align 4
  %674 = add nsw i32 %673, 1
  store i32 %674, i32* %672, align 4
  br label %675

675:                                              ; preds = %667, %650
  %676 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %677 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %676, i32 0, i32 10
  %678 = load i32, i32* %677, align 8
  %679 = call i32 @BIT(i32 2)
  %680 = and i32 %678, %679
  %681 = call i32 @BIT(i32 2)
  %682 = icmp eq i32 %680, %681
  %683 = zext i1 %682 to i32
  %684 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %685 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %684, i32 0, i32 25
  store i32 %683, i32* %685, align 4
  %686 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %687 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %686, i32 0, i32 10
  %688 = load i32, i32* %687, align 8
  %689 = call i32 @BIT(i32 3)
  %690 = and i32 %688, %689
  %691 = call i32 @BIT(i32 3)
  %692 = icmp eq i32 %690, %691
  %693 = zext i1 %692 to i32
  %694 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %695 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %694, i32 0, i32 26
  store i32 %693, i32* %695, align 8
  %696 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %697 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %696, i32 0, i32 10
  %698 = load i32, i32* %697, align 8
  %699 = and i32 %698, 48
  %700 = ashr i32 %699, 4
  %701 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %702 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %701, i32 0, i32 27
  store i32 %700, i32* %702, align 4
  %703 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %704 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %703, i32 0, i32 10
  %705 = load i32, i32* %704, align 8
  %706 = and i32 %705, 192
  %707 = ashr i32 %706, 6
  %708 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %709 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %708, i32 0, i32 28
  store i32 %707, i32* %709, align 8
  %710 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %711 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %710, i32 0, i32 28
  %712 = load i32, i32* %711, align 8
  %713 = icmp sgt i32 %712, 0
  br i1 %713, label %714, label %722

714:                                              ; preds = %675
  %715 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %716 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %715, i32 0, i32 27
  %717 = load i32, i32* %716, align 4
  %718 = icmp sge i32 %717, 2
  br i1 %718, label %719, label %722

719:                                              ; preds = %714
  %720 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %721 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %720, i32 0, i32 29
  store i32 1, i32* %721, align 4
  br label %731

722:                                              ; preds = %714, %675
  %723 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %724 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %723, i32 0, i32 28
  %725 = load i32, i32* %724, align 8
  %726 = icmp eq i32 %725, 0
  br i1 %726, label %727, label %730

727:                                              ; preds = %722
  %728 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %729 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %728, i32 0, i32 29
  store i32 0, i32* %729, align 4
  br label %730

730:                                              ; preds = %727, %722
  br label %731

731:                                              ; preds = %730, %719
  %732 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %733 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %732, i32 0, i32 6
  %734 = load i32, i32* %733, align 8
  %735 = and i32 %734, 73
  %736 = icmp eq i32 %735, 73
  br i1 %736, label %737, label %744

737:                                              ; preds = %731
  %738 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %739 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %738, i32 0, i32 11
  %740 = load i32, i32* %739, align 4
  %741 = and i32 %740, 127
  %742 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %743 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %742, i32 0, i32 30
  store i32 %741, i32* %743, align 8
  br label %747

744:                                              ; preds = %731
  %745 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %746 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %745, i32 0, i32 30
  store i32 0, i32* %746, align 8
  br label %747

747:                                              ; preds = %744, %737
  %748 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %749 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %748, i32 0, i32 11
  %750 = load i32, i32* %749, align 4
  %751 = call i32 @BIT(i32 7)
  %752 = and i32 %750, %751
  %753 = call i32 @BIT(i32 7)
  %754 = icmp eq i32 %752, %753
  %755 = zext i1 %754 to i32
  %756 = load %struct.rtw_coex_stat*, %struct.rtw_coex_stat** %8, align 8
  %757 = getelementptr inbounds %struct.rtw_coex_stat, %struct.rtw_coex_stat* %756, i32 0, i32 31
  store i32 %755, i32* %757, align 4
  %758 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %759 = call i32 @rtw_coex_update_bt_link_info(%struct.rtw_dev* %758)
  %760 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %761 = load i32, i32* @COEX_RSN_BTINFO, align 4
  %762 = call i32 @rtw_coex_run_coex(%struct.rtw_dev* %760, i32 %761)
  br label %763

763:                                              ; preds = %747, %243, %153, %90, %66
  ret void
}

declare dso_local i32 @rtw_coex_monitor_bt_enable(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_coex_run_coex(%struct.rtw_dev*, i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32, i32*, i64) #1

declare dso_local i32 @rtw_coex_update_bt_link_info(%struct.rtw_dev*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_coex_write_scbd(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_coex_update_wl_ch_info(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_coex_ignore_wlan_act(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
