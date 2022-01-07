; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_noa_ie.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_ps.c_rtl_p2p_noa_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { i32 }
%struct.rtl_priv = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.rtl_p2p_ps_info }
%struct.rtl_p2p_ps_info = type { i64, i32, i32, i32, i32, i8**, i8**, i8**, i32* }
%struct.ieee80211_mgmt = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@rtl_p2p_noa_ie.p2p_oui_ie_type = internal global [4 x i32] [i32 80, i32 111, i32 154, i32 9], align 16
@COMP_INIT = common dso_local global i32 0, align 4
@DBG_LOUD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"P2P notice of absence: invalid length.%d\0A\00", align 1
@P2P_MAX_NOA_NUM = common dso_local global i32 0, align 4
@P2P_PS_NONE = common dso_local global i64 0, align 8
@COMP_FW = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"update NOA ie.\0A\00", align 1
@P2P_PS_CTWINDOW = common dso_local global i64 0, align 8
@P2P_PS_ENABLE = common dso_local global i32 0, align 4
@P2P_PS_NOA = common dso_local global i64 0, align 8
@P2P_PS_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hw*, i8*, i32)* @rtl_p2p_noa_ie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtl_p2p_noa_ie(%struct.ieee80211_hw* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_hw*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtl_priv*, align 8
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca %struct.rtl_p2p_ps_info*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %21 = call %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw* %20)
  store %struct.rtl_priv* %21, %struct.rtl_priv** %7, align 8
  %22 = load i8*, i8** %5, align 8
  %23 = bitcast i8* %22 to %struct.ieee80211_mgmt*
  store %struct.ieee80211_mgmt* %23, %struct.ieee80211_mgmt** %8, align 8
  %24 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %25 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store %struct.rtl_p2p_ps_info* %26, %struct.rtl_p2p_ps_info** %9, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %28 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %10, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr i8, i8* %33, i64 %35
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %11, align 8
  store i32* null, i32** %12, align 8
  br label %38

38:                                               ; preds = %74, %3
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 1
  %41 = load i32*, i32** %11, align 8
  %42 = icmp ult i32* %40, %41
  br i1 %42, label %43, label %82

43:                                               ; preds = %38
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  %48 = load i32, i32* %47, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %45, i64 %49
  %51 = load i32*, i32** %11, align 8
  %52 = icmp ugt i32* %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %43
  br label %300

54:                                               ; preds = %43
  %55 = load i32*, i32** %10, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp eq i32 %57, 221
  br i1 %58, label %59, label %74

59:                                               ; preds = %54
  %60 = load i32*, i32** %10, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp sgt i32 %62, 4
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load i32*, i32** %10, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 2
  %67 = call i64 @memcmp(i32* %66, i32* getelementptr inbounds ([4 x i32], [4 x i32]* @rtl_p2p_noa_ie.p2p_oui_ie_type, i64 0, i64 0), i32 4)
  %68 = icmp eq i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 2
  %72 = getelementptr inbounds i32, i32* %71, i64 4
  store i32* %72, i32** %12, align 8
  br label %82

73:                                               ; preds = %64
  br label %74

74:                                               ; preds = %73, %59, %54
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 2, %77
  %79 = load i32*, i32** %10, align 8
  %80 = sext i32 %78 to i64
  %81 = getelementptr inbounds i32, i32* %79, i64 %80
  store i32* %81, i32** %10, align 8
  br label %38

82:                                               ; preds = %69, %38
  %83 = load i32*, i32** %12, align 8
  %84 = icmp eq i32* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %300

86:                                               ; preds = %82
  store i32 1, i32* %18, align 4
  br label %87

87:                                               ; preds = %277, %86
  %88 = load i32*, i32** %12, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  %90 = load i32*, i32** %11, align 8
  %91 = icmp ult i32* %89, %90
  br i1 %91, label %92, label %283

92:                                               ; preds = %87
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  %95 = call i32 @READEF2BYTE(i32* %94)
  store i32 %95, i32* %13, align 4
  %96 = load i32*, i32** %12, align 8
  %97 = getelementptr inbounds i32, i32* %96, i64 3
  %98 = load i32*, i32** %12, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  %100 = load i32, i32* %99, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %97, i64 %101
  %103 = load i32*, i32** %11, align 8
  %104 = icmp ugt i32* %102, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %92
  br label %300

106:                                              ; preds = %92
  %107 = load i32*, i32** %12, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 0
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %277

111:                                              ; preds = %106
  store i32 1, i32* %19, align 4
  %112 = load i32, i32* %13, align 4
  %113 = sub nsw i32 %112, 2
  %114 = srem i32 %113, 13
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %122

116:                                              ; preds = %111
  %117 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %118 = load i32, i32* @COMP_INIT, align 4
  %119 = load i32, i32* @DBG_LOUD, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %117, i32 %118, i32 %119, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %300

122:                                              ; preds = %111
  %123 = load i32, i32* %13, align 4
  %124 = sub nsw i32 %123, 2
  %125 = sdiv i32 %124, 13
  store i32 %125, i32* %14, align 4
  %126 = load i32, i32* %14, align 4
  %127 = load i32, i32* @P2P_MAX_NOA_NUM, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %131

129:                                              ; preds = %122
  %130 = load i32, i32* @P2P_MAX_NOA_NUM, align 4
  store i32 %130, i32* %14, align 4
  br label %131

131:                                              ; preds = %129, %122
  br label %132

132:                                              ; preds = %131
  %133 = load i32*, i32** %12, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 3
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %17, align 4
  %136 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %137 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @P2P_PS_NONE, align 8
  %142 = icmp eq i64 %140, %141
  br i1 %142, label %149, label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %17, align 4
  %145 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %146 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = icmp ne i32 %144, %147
  br i1 %148, label %149, label %276

149:                                              ; preds = %143, %132
  %150 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %151 = load i32, i32* @COMP_FW, align 4
  %152 = load i32, i32* @DBG_LOUD, align 4
  %153 = call i32 (%struct.rtl_priv*, i32, i32, i8*, ...) @RT_TRACE(%struct.rtl_priv* %150, i32 %151, i32 %152, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %154 = load i32, i32* %17, align 4
  %155 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %156 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %155, i32 0, i32 1
  store i32 %154, i32* %156, align 8
  %157 = load i32*, i32** %12, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 4
  %159 = load i32, i32* %158, align 4
  %160 = ashr i32 %159, 7
  %161 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %162 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %161, i32 0, i32 2
  store i32 %160, i32* %162, align 4
  %163 = load i32*, i32** %12, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, 127
  %167 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %168 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %167, i32 0, i32 3
  store i32 %166, i32* %168, align 8
  %169 = load i32, i32* %14, align 4
  %170 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %171 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %170, i32 0, i32 4
  store i32 %169, i32* %171, align 4
  store i32 5, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %172

172:                                              ; preds = %229, %149
  %173 = load i32, i32* %16, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp slt i32 %173, %174
  br i1 %175, label %176, label %232

176:                                              ; preds = %172
  %177 = load i32*, i32** %12, align 8
  %178 = load i32, i32* %15, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = call i32 @READEF1BYTE(i32* %180)
  %182 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %183 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %182, i32 0, i32 8
  %184 = load i32*, i32** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %184, i64 %186
  store i32 %181, i32* %187, align 4
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %15, align 4
  %190 = load i32*, i32** %12, align 8
  %191 = load i32, i32* %15, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = call i8* @READEF4BYTE(i32* %193)
  %195 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %196 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %195, i32 0, i32 7
  %197 = load i8**, i8*** %196, align 8
  %198 = load i32, i32* %16, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i8*, i8** %197, i64 %199
  store i8* %194, i8** %200, align 8
  %201 = load i32, i32* %15, align 4
  %202 = add nsw i32 %201, 4
  store i32 %202, i32* %15, align 4
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %15, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = call i8* @READEF4BYTE(i32* %206)
  %208 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %209 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %208, i32 0, i32 6
  %210 = load i8**, i8*** %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i8*, i8** %210, i64 %212
  store i8* %207, i8** %213, align 8
  %214 = load i32, i32* %15, align 4
  %215 = add nsw i32 %214, 4
  store i32 %215, i32* %15, align 4
  %216 = load i32*, i32** %12, align 8
  %217 = load i32, i32* %15, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  %220 = call i8* @READEF4BYTE(i32* %219)
  %221 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %222 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %221, i32 0, i32 5
  %223 = load i8**, i8*** %222, align 8
  %224 = load i32, i32* %16, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i8*, i8** %223, i64 %225
  store i8* %220, i8** %226, align 8
  %227 = load i32, i32* %15, align 4
  %228 = add nsw i32 %227, 4
  store i32 %228, i32* %15, align 4
  br label %229

229:                                              ; preds = %176
  %230 = load i32, i32* %16, align 4
  %231 = add nsw i32 %230, 1
  store i32 %231, i32* %16, align 4
  br label %172

232:                                              ; preds = %172
  %233 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %234 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 4
  %236 = icmp eq i32 %235, 1
  br i1 %236, label %237, label %251

237:                                              ; preds = %232
  %238 = load i64, i64* @P2P_PS_CTWINDOW, align 8
  %239 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %240 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %239, i32 0, i32 0
  store i64 %238, i64* %240, align 8
  %241 = load %struct.rtl_priv*, %struct.rtl_priv** %7, align 8
  %242 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %241, i32 0, i32 0
  %243 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %242, i32 0, i32 0
  %244 = load i64, i64* %243, align 8
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %237
  %247 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %248 = load i32, i32* @P2P_PS_ENABLE, align 4
  %249 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %247, i32 %248)
  br label %250

250:                                              ; preds = %246, %237
  br label %275

251:                                              ; preds = %232
  %252 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %253 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %252, i32 0, i32 4
  %254 = load i32, i32* %253, align 4
  %255 = icmp sgt i32 %254, 0
  br i1 %255, label %256, label %263

256:                                              ; preds = %251
  %257 = load i64, i64* @P2P_PS_NOA, align 8
  %258 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %259 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %258, i32 0, i32 0
  store i64 %257, i64* %259, align 8
  %260 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %261 = load i32, i32* @P2P_PS_ENABLE, align 4
  %262 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %260, i32 %261)
  br label %274

263:                                              ; preds = %251
  %264 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %265 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %264, i32 0, i32 0
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @P2P_PS_NONE, align 8
  %268 = icmp sgt i64 %266, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %271 = load i32, i32* @P2P_PS_DISABLE, align 4
  %272 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %270, i32 %271)
  br label %273

273:                                              ; preds = %269, %263
  br label %274

274:                                              ; preds = %273, %256
  br label %275

275:                                              ; preds = %274, %250
  br label %276

276:                                              ; preds = %275, %143
  br label %283

277:                                              ; preds = %106
  %278 = load i32, i32* %13, align 4
  %279 = add nsw i32 3, %278
  %280 = load i32*, i32** %12, align 8
  %281 = sext i32 %279 to i64
  %282 = getelementptr inbounds i32, i32* %280, i64 %281
  store i32* %282, i32** %12, align 8
  br label %87

283:                                              ; preds = %276, %87
  %284 = load i32, i32* %18, align 4
  %285 = icmp eq i32 %284, 1
  br i1 %285, label %286, label %300

286:                                              ; preds = %283
  %287 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %9, align 8
  %288 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %287, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = load i64, i64* @P2P_PS_NONE, align 8
  %291 = icmp sgt i64 %289, %290
  br i1 %291, label %292, label %299

292:                                              ; preds = %286
  %293 = load i32, i32* %19, align 4
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %4, align 8
  %297 = load i32, i32* @P2P_PS_DISABLE, align 4
  %298 = call i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw* %296, i32 %297)
  br label %299

299:                                              ; preds = %295, %292, %286
  br label %300

300:                                              ; preds = %53, %85, %105, %116, %299, %283
  ret void
}

declare dso_local %struct.rtl_priv* @rtl_priv(%struct.ieee80211_hw*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @READEF2BYTE(i32*) #1

declare dso_local i32 @RT_TRACE(%struct.rtl_priv*, i32, i32, i8*, ...) #1

declare dso_local i32 @READEF1BYTE(i32*) #1

declare dso_local i8* @READEF4BYTE(i32*) #1

declare dso_local i32 @rtl_p2p_ps_cmd(%struct.ieee80211_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
