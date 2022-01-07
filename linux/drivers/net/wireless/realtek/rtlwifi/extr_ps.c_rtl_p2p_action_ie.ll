; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_action_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_action_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.rtl_p2p_ps_info }
%struct.rtl_p2p_ps_info = type { i64, i32, i32, i32, i32, i8**, i8**, i8**, i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@rtl_p2p_action_ie.p2p_oui_ie_type = internal global [4 x i32] [i32 80, i32 111, i32 154, i32 9], align 16
@COMP_FW = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"action frame find P2P IE.\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"find NOA IE.\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"noa ie \00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"P2P notice of absence: invalid length.%d\0A\00", align 1
@P2P_MAX_NOA_NUM = common dso_local global i32 0, align 4
@P2P_PS_NONE = common dso_local global i64 0, align 8
@P2P_PS_CTWINDOW = common dso_local global i64 0, align 8
@P2P_PS_ENABLE = common dso_local global i32 0, align 4
@P2P_PS_NOA = common dso_local global i64 0, align 8
@P2P_PS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i8*, i32)* @rtl_p2p_action_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_p2p_action_ie(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca %struct.rtl_p2p_ps_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %19 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %18)
  store %struct.rtl_priv* %19, %struct.rtl_priv** %7, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %21, %struct.ieee80211_mgmt** %8, align 8
  %22 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %23 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 1
  store %struct.rtl_p2p_ps_info* %24, %struct.rtl_p2p_ps_info** %9, align 8
  store i32 0, i32* %13, align 4
  %25 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %26 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* %28, i32** %14, align 8
  %29 = load i8*, i8** %5, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %15, align 8
  store i32* null, i32** %16, align 8
  %34 = load i32*, i32** %14, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, 127
  br i1 %37, label %38, label %48

38:                                               ; preds = %3
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = call i64 @memcmp(i32* %40, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rtl_p2p_action_ie.p2p_oui_ie_type, i64 0, i64 0), i32 4)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32*, i32** %14, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = getelementptr inbounds i32, i32* %45, i64 4
  store i32* %46, i32** %16, align 8
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %3
  %49 = load i32*, i32** %16, align 8
  %50 = icmp eq i32* %49, null
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  br label %259

52:                                               ; preds = %48
  %53 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %54 = load i32, i32* @COMP_FW, align 4
  %55 = load i32, i32* @DBG_LOUD, align 4
  %56 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %53, i32 %54, i32 %55, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %57

57:                                               ; preds = %253, %52
  %58 = load i32*, i32** %16, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32*, i32** %15, align 8
  %61 = icmp ult i32* %59, %60
  br i1 %61, label %62, label %259

62:                                               ; preds = %57
  %63 = load i32*, i32** %16, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  %65 = call i32 @READEF2BYTE(i32* %64)
  store i32 %65, i32* %17, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 3
  %68 = load i32*, i32** %16, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %67, i64 %71
  %73 = load i32*, i32** %15, align 8
  %74 = icmp ugt i32* %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %62
  br label %259

76:                                               ; preds = %62
  %77 = load i32*, i32** %16, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 12
  br i1 %80, label %81, label %253

81:                                               ; preds = %76
  %82 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %83 = load i32, i32* @COMP_FW, align 4
  %84 = load i32, i32* @DBG_LOUD, align 4
  %85 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %82, i32 %83, i32 %84, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %86 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %87 = load i32, i32* @COMP_FW, align 4
  %88 = load i32, i32* @DBG_LOUD, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @RT_PRINT_DATA(%struct.rtl_priv* %86, i32 %87, i32 %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* %89, i32 %90)
  %92 = load i32, i32* %17, align 4
  %93 = sub nsw i32 %92, 2
  %94 = srem i32 %93, 13
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %81
  %97 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %98 = load i32, i32* @COMP_FW, align 4
  %99 = load i32, i32* @DBG_LOUD, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %97, i32 %98, i32 %99, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %259

102:                                              ; preds = %81
  %103 = load i32, i32* %17, align 4
  %104 = sub nsw i32 %103, 2
  %105 = sdiv i32 %104, 13
  store i32 %105, i32* %10, align 4
  %106 = load i32, i32* %10, align 4
  %107 = load i32, i32* @P2P_MAX_NOA_NUM, align 4
  %108 = icmp sgt i32 %106, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102
  %110 = load i32, i32* @P2P_MAX_NOA_NUM, align 4
  store i32 %110, i32* %10, align 4
  br label %111

111:                                              ; preds = %109, %102
  br label %112

112:                                              ; preds = %111
  %113 = load i32*, i32** %16, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 3
  %115 = load i32, i32* %114, align 4
  store i32 %115, i32* %13, align 4
  %116 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %117 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @P2P_PS_NONE, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %129, label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %13, align 4
  %125 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %126 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %124, %127
  br i1 %128, label %129, label %252

129:                                              ; preds = %123, %112
  %130 = load i32, i32* %13, align 4
  %131 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %132 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %131, i32 0, i32 1
  store i32 %130, i32* %132, align 8
  %133 = load i32*, i32** %16, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 4
  %135 = load i32, i32* %134, align 4
  %136 = ashr i32 %135, 7
  %137 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %138 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %137, i32 0, i32 2
  store i32 %136, i32* %138, align 4
  %139 = load i32*, i32** %16, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 4
  %141 = load i32, i32* %140, align 4
  %142 = and i32 %141, 127
  %143 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %144 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %147 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %146, i32 0, i32 4
  store i32 %145, i32* %147, align 4
  store i32 5, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %148

148:                                              ; preds = %205, %129
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %10, align 4
  %151 = icmp slt i32 %149, %150
  br i1 %151, label %152, label %208

152:                                              ; preds = %148
  %153 = load i32*, i32** %16, align 8
  %154 = load i32, i32* %11, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, i32* %153, i64 %155
  %157 = call i32 @READEF1BYTE(i32* %156)
  %158 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %159 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %158, i32 0, i32 8
  %160 = load i32*, i32** %159, align 8
  %161 = load i32, i32* %12, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  store i32 %157, i32* %163, align 4
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %11, align 4
  %166 = load i32*, i32** %16, align 8
  %167 = load i32, i32* %11, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = call i8* @READEF4BYTE(i32* %169)
  %171 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %172 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %171, i32 0, i32 7
  %173 = load i8**, i8*** %172, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i8*, i8** %173, i64 %175
  store i8* %170, i8** %176, align 8
  %177 = load i32, i32* %11, align 4
  %178 = add nsw i32 %177, 4
  store i32 %178, i32* %11, align 4
  %179 = load i32*, i32** %16, align 8
  %180 = load i32, i32* %11, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr inbounds i32, i32* %179, i64 %181
  %183 = call i8* @READEF4BYTE(i32* %182)
  %184 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %185 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %184, i32 0, i32 6
  %186 = load i8**, i8*** %185, align 8
  %187 = load i32, i32* %12, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  store i8* %183, i8** %189, align 8
  %190 = load i32, i32* %11, align 4
  %191 = add nsw i32 %190, 4
  store i32 %191, i32* %11, align 4
  %192 = load i32*, i32** %16, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = call i8* @READEF4BYTE(i32* %195)
  %197 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %198 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %197, i32 0, i32 5
  %199 = load i8**, i8*** %198, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8*, i8** %199, i64 %201
  store i8* %196, i8** %202, align 8
  %203 = load i32, i32* %11, align 4
  %204 = add nsw i32 %203, 4
  store i32 %204, i32* %11, align 4
  br label %205

205:                                              ; preds = %152
  %206 = load i32, i32* %12, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %12, align 4
  br label %148

208:                                              ; preds = %148
  %209 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %210 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = icmp eq i32 %211, 1
  br i1 %212, label %213, label %227

213:                                              ; preds = %208
  %214 = load i64, i64* @P2P_PS_CTWINDOW, align 8
  %215 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %216 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %215, i32 0, i32 0
  store i64 %214, i64* %216, align 8
  %217 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %218 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %226

222:                                              ; preds = %213
  %223 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %224 = load i32, i32* @P2P_PS_ENABLE, align 4
  %225 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %223, i32 %224)
  br label %226

226:                                              ; preds = %222, %213
  br label %251

227:                                              ; preds = %208
  %228 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %229 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = icmp sgt i32 %230, 0
  br i1 %231, label %232, label %239

232:                                              ; preds = %227
  %233 = load i64, i64* @P2P_PS_NOA, align 8
  %234 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %235 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %234, i32 0, i32 0
  store i64 %233, i64* %235, align 8
  %236 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %237 = load i32, i32* @P2P_PS_ENABLE, align 4
  %238 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %236, i32 %237)
  br label %250

239:                                              ; preds = %227
  %240 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %241 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = load i64, i64* @P2P_PS_NONE, align 8
  %244 = icmp sgt i64 %242, %243
  br i1 %244, label %245, label %249

245:                                              ; preds = %239
  %246 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %247 = load i32, i32* @P2P_PS_DISABLE, align 4
  %248 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %246, i32 %247)
  br label %249

249:                                              ; preds = %245, %239
  br label %250

250:                                              ; preds = %249, %232
  br label %251

251:                                              ; preds = %250, %226
  br label %252

252:                                              ; preds = %251, %123
  br label %259

253:                                              ; preds = %76
  %254 = load i32, i32* %17, align 4
  %255 = add nsw i32 3, %254
  %256 = load i32*, i32** %16, align 8
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i32, i32* %256, i64 %257
  store i32* %258, i32** %16, align 8
  br label %57

259:                                              ; preds = %51, %75, %96, %252, %57
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @READEF2BYTE(i32*) #1

declare dso_local i32 @RT_PRINT_DATA(%struct.rtl_priv*, i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @READEF1BYTE(i32*) #1

declare dso_local i8* @READEF4BYTE(i32*) #1

declare dso_local i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
