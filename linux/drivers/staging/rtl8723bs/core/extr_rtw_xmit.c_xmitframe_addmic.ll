; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_xmitframe_addmic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_xmit.c_xmitframe_addmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.xmit_priv, %struct.security_priv }
%struct.xmit_priv = type { i64 }
%struct.security_priv = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }
%struct.pkt_attrib = type { i64, i64, i32, i32, i64, i64, i64, i64, i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.mic_data = type { i32 }

@TXDESC_OFFSET = common dso_local global i32 0, align 4
@_TKIP_ = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i32 0, align 4
@_module_rtl871x_xmit_c_ = common dso_local global i32 0, align 4
@_drv_err_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [96 x i8] c"===curfragnum =%d, pframe = 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x, 0x%.2x,!!!\0A\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"curfragnum =%d pattrib->hdrlen =%d pattrib->iv_len =%d\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"curfragnum =%d length =%d pattrib->icv_len =%d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"xmitframe_addmic: before add mic code!!!\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"xmitframe_addmic: pattrib->last_txcmdsz =%d!!!\0A\00", align 1
@.str.5 = private unnamed_addr constant [158 x i8] c"xmitframe_addmic: mic[0]= 0x%.2x , mic[1]= 0x%.2x , mic[2]= 0x%.2x , mic[3]= 0x%.2x\0A  mic[4]= 0x%.2x , mic[5]= 0x%.2x , mic[6]= 0x%.2x , mic[7]= 0x%.2x !!!!\0A\00", align 1
@_drv_info_ = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [29 x i8] c"\0A ========last pkt ========\0A\00", align 1
@.str.7 = private unnamed_addr constant [56 x i8] c" %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x,  %.2x \00", align 1
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.xmit_frame*)* @xmitframe_addmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmitframe_addmic(%struct.adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca %struct.mic_data, align 4
  %12 = alloca %struct.pkt_attrib*, align 8
  %13 = alloca %struct.security_priv*, align 8
  %14 = alloca %struct.xmit_priv*, align 8
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca [16 x i32], align 16
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %19 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %20 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %19, i32 0, i32 1
  store %struct.pkt_attrib* %20, %struct.pkt_attrib** %12, align 8
  %21 = load %struct.adapter*, %struct.adapter** %4, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 1
  store %struct.security_priv* %22, %struct.security_priv** %13, align 8
  %23 = load %struct.adapter*, %struct.adapter** %4, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  store %struct.xmit_priv* %24, %struct.xmit_priv** %14, align 8
  %25 = bitcast [4 x i32]* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %25, i8 0, i64 16, i1 false)
  store i32 0, i32* %16, align 4
  %26 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %27 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %26, i32 0, i32 10
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @IS_MCAST(i32 %28)
  store i64 %29, i64* %17, align 8
  %30 = load i32, i32* @TXDESC_OFFSET, align 4
  store i32 %30, i32* %16, align 4
  %31 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %32 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @_TKIP_, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %404

36:                                               ; preds = %2
  %37 = bitcast [16 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %37, i8 0, i64 64, i1 false)
  %38 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %39 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %16, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %8, align 8
  %44 = load i64, i64* %17, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %72

46:                                               ; preds = %36
  %47 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %48 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %51 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %57 = call i32 @memcmp(i32* %55, i32* %56, i32 16)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %46
  %60 = load i32, i32* @_FAIL, align 4
  store i32 %60, i32* %3, align 4
  br label %406

61:                                               ; preds = %46
  %62 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %63 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %62, i32 0, i32 1
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = load %struct.security_priv*, %struct.security_priv** %13, align 8
  %66 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = call i32 @rtw_secmicsetkey(%struct.mic_data* %11, i32* %70)
  br label %90

72:                                               ; preds = %36
  %73 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %74 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %73, i32 0, i32 9
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 0
  %78 = getelementptr inbounds [16 x i32], [16 x i32]* %18, i64 0, i64 0
  %79 = call i32 @memcmp(i32* %77, i32* %78, i32 16)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %72
  %82 = load i32, i32* @_FAIL, align 4
  store i32 %82, i32* %3, align 4
  br label %406

83:                                               ; preds = %72
  %84 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %85 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = call i32 @rtw_secmicsetkey(%struct.mic_data* %11, i32* %88)
  br label %90

90:                                               ; preds = %83, %61
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 1
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %114

96:                                               ; preds = %90
  %97 = load i32*, i32** %8, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 16
  %99 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %98, i64 6)
  %100 = load i32*, i32** %8, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %102, 2
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %96
  %106 = load i32*, i32** %8, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 24
  %108 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %107, i64 6)
  br label %113

109:                                              ; preds = %96
  %110 = load i32*, i32** %8, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 10
  %112 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %111, i64 6)
  br label %113

113:                                              ; preds = %109, %105
  br label %132

114:                                              ; preds = %90
  %115 = load i32*, i32** %8, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 4
  %117 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %116, i64 6)
  %118 = load i32*, i32** %8, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 1
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 2
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %127

123:                                              ; preds = %114
  %124 = load i32*, i32** %8, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 16
  %126 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %125, i64 6)
  br label %131

127:                                              ; preds = %114
  %128 = load i32*, i32** %8, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 10
  %130 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %129, i64 6)
  br label %131

131:                                              ; preds = %127, %123
  br label %132

132:                                              ; preds = %131, %113
  %133 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %134 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %133, i32 0, i32 8
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %144

137:                                              ; preds = %132
  %138 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %139 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  store i32 %142, i32* %143, align 16
  br label %144

144:                                              ; preds = %137, %132
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %146 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %145, i64 4)
  %147 = load i32*, i32** %8, align 8
  store i32* %147, i32** %9, align 8
  store i64 0, i64* %6, align 8
  br label %148

148:                                              ; preds = %295, %144
  %149 = load i64, i64* %6, align 8
  %150 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %151 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = icmp slt i64 %149, %152
  br i1 %153, label %154, label %298

154:                                              ; preds = %148
  %155 = load i32*, i32** %9, align 8
  %156 = ptrtoint i32* %155 to i32
  %157 = call i64 @RND4(i32 %156)
  %158 = inttoptr i64 %157 to i32*
  store i32* %158, i32** %9, align 8
  %159 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %160 = load i32, i32* @_drv_err_, align 4
  %161 = load i64, i64* %6, align 8
  %162 = load i32*, i32** %9, align 8
  %163 = load i32, i32* %162, align 4
  %164 = load i32*, i32** %9, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 1
  %166 = load i32, i32* %165, align 4
  %167 = load i32*, i32** %9, align 8
  %168 = getelementptr inbounds i32, i32* %167, i64 2
  %169 = load i32, i32* %168, align 4
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 3
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %9, align 8
  %174 = getelementptr inbounds i32, i32* %173, i64 4
  %175 = load i32, i32* %174, align 4
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 5
  %178 = load i32, i32* %177, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 6
  %181 = load i32, i32* %180, align 4
  %182 = load i32*, i32** %9, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 7
  %184 = load i32, i32* %183, align 4
  %185 = sext i32 %184 to i64
  %186 = inttoptr i64 %185 to i8*
  %187 = call i32 @RT_TRACE(i32 %159, i32 %160, i8* %186)
  %188 = load i32*, i32** %9, align 8
  %189 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %190 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %188, i64 %192
  %194 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %195 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %194, i32 0, i32 3
  %196 = load i32, i32* %195, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %193, i64 %197
  store i32* %198, i32** %9, align 8
  %199 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %200 = load i32, i32* @_drv_err_, align 4
  %201 = load i64, i64* %6, align 8
  %202 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %203 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %206 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = sext i32 %207 to i64
  %209 = inttoptr i64 %208 to i8*
  %210 = call i32 @RT_TRACE(i32 %199, i32 %200, i8* %209)
  %211 = load i64, i64* %6, align 8
  %212 = add nsw i64 %211, 1
  %213 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %214 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %213, i32 0, i32 1
  %215 = load i64, i64* %214, align 8
  %216 = icmp eq i64 %212, %215
  br i1 %216, label %217, label %249

217:                                              ; preds = %154
  %218 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %219 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %218, i32 0, i32 4
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %222 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 8
  %224 = sext i32 %223 to i64
  %225 = sub nsw i64 %220, %224
  %226 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %227 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = sext i32 %228 to i64
  %230 = sub nsw i64 %225, %229
  %231 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %232 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %231, i32 0, i32 6
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %217
  %236 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %237 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %236, i32 0, i32 5
  %238 = load i64, i64* %237, align 8
  br label %240

239:                                              ; preds = %217
  br label %240

240:                                              ; preds = %239, %235
  %241 = phi i64 [ %238, %235 ], [ 0, %239 ]
  %242 = sub nsw i64 %230, %241
  store i64 %242, i64* %7, align 8
  %243 = load i32*, i32** %9, align 8
  %244 = load i64, i64* %7, align 8
  %245 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %243, i64 %244)
  %246 = load i32*, i32** %9, align 8
  %247 = load i64, i64* %7, align 8
  %248 = getelementptr inbounds i32, i32* %246, i64 %247
  store i32* %248, i32** %9, align 8
  br label %294

249:                                              ; preds = %154
  %250 = load %struct.xmit_priv*, %struct.xmit_priv** %14, align 8
  %251 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %254 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 8
  %256 = sext i32 %255 to i64
  %257 = sub nsw i64 %252, %256
  %258 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %259 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %258, i32 0, i32 3
  %260 = load i32, i32* %259, align 4
  %261 = sext i32 %260 to i64
  %262 = sub nsw i64 %257, %261
  %263 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %264 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %263, i32 0, i32 6
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %271

267:                                              ; preds = %249
  %268 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %269 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %268, i32 0, i32 5
  %270 = load i64, i64* %269, align 8
  br label %272

271:                                              ; preds = %249
  br label %272

272:                                              ; preds = %271, %267
  %273 = phi i64 [ %270, %267 ], [ 0, %271 ]
  %274 = sub nsw i64 %262, %273
  store i64 %274, i64* %7, align 8
  %275 = load i32*, i32** %9, align 8
  %276 = load i64, i64* %7, align 8
  %277 = call i32 @rtw_secmicappend(%struct.mic_data* %11, i32* %275, i64 %276)
  %278 = load i32*, i32** %9, align 8
  %279 = load i64, i64* %7, align 8
  %280 = getelementptr inbounds i32, i32* %278, i64 %279
  %281 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %282 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %281, i32 0, i32 5
  %283 = load i64, i64* %282, align 8
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  store i32* %284, i32** %9, align 8
  %285 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %286 = load i32, i32* @_drv_err_, align 4
  %287 = load i64, i64* %6, align 8
  %288 = load i64, i64* %7, align 8
  %289 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %290 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %289, i32 0, i32 5
  %291 = load i64, i64* %290, align 8
  %292 = inttoptr i64 %291 to i8*
  %293 = call i32 @RT_TRACE(i32 %285, i32 %286, i8* %292)
  br label %294

294:                                              ; preds = %272, %240
  br label %295

295:                                              ; preds = %294
  %296 = load i64, i64* %6, align 8
  %297 = add nsw i64 %296, 1
  store i64 %297, i64* %6, align 8
  br label %148

298:                                              ; preds = %148
  %299 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %300 = call i32 @rtw_secgetmic(%struct.mic_data* %11, i32* %299)
  %301 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %302 = load i32, i32* @_drv_err_, align 4
  %303 = call i32 @RT_TRACE(i32 %301, i32 %302, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  %304 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %305 = load i32, i32* @_drv_err_, align 4
  %306 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %307 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %306, i32 0, i32 4
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to i8*
  %310 = call i32 @RT_TRACE(i32 %304, i32 %305, i8* %309)
  %311 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %312 = load i32, i32* @_drv_err_, align 4
  %313 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %314 = load i32, i32* %313, align 16
  %315 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 1
  %316 = load i32, i32* %315, align 4
  %317 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 2
  %318 = load i32, i32* %317, align 8
  %319 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 3
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 4
  %322 = load i32, i32* %321, align 16
  %323 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 5
  %324 = load i32, i32* %323, align 4
  %325 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 6
  %326 = load i32, i32* %325, align 8
  %327 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 7
  %328 = load i32, i32* %327, align 4
  %329 = sext i32 %328 to i64
  %330 = inttoptr i64 %329 to i8*
  %331 = call i32 @RT_TRACE(i32 %311, i32 %312, i8* %330)
  %332 = load i32*, i32** %9, align 8
  %333 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %334 = call i32 @memcpy(i32* %332, i32* %333, i32 8)
  %335 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %336 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %335, i32 0, i32 4
  %337 = load i64, i64* %336, align 8
  %338 = add nsw i64 %337, 8
  store i64 %338, i64* %336, align 8
  %339 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %340 = load i32, i32* @_drv_info_, align 4
  %341 = call i32 @RT_TRACE(i32 %339, i32 %340, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0))
  %342 = load i32*, i32** %9, align 8
  %343 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %344 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %343, i32 0, i32 4
  %345 = load i64, i64* %344, align 8
  %346 = sub i64 0, %345
  %347 = getelementptr inbounds i32, i32* %342, i64 %346
  %348 = getelementptr inbounds i32, i32* %347, i64 8
  store i32* %348, i32** %9, align 8
  store i64 0, i64* %6, align 8
  br label %349

349:                                              ; preds = %400, %298
  %350 = load i64, i64* %6, align 8
  %351 = load %struct.pkt_attrib*, %struct.pkt_attrib** %12, align 8
  %352 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %351, i32 0, i32 4
  %353 = load i64, i64* %352, align 8
  %354 = icmp slt i64 %350, %353
  br i1 %354, label %355, label %403

355:                                              ; preds = %349
  %356 = load i32, i32* @_module_rtl871x_xmit_c_, align 4
  %357 = load i32, i32* @_drv_info_, align 4
  %358 = load i32*, i32** %9, align 8
  %359 = load i64, i64* %6, align 8
  %360 = getelementptr inbounds i32, i32* %358, i64 %359
  %361 = load i32, i32* %360, align 4
  %362 = load i32*, i32** %9, align 8
  %363 = load i64, i64* %6, align 8
  %364 = getelementptr inbounds i32, i32* %362, i64 %363
  %365 = getelementptr inbounds i32, i32* %364, i64 1
  %366 = load i32, i32* %365, align 4
  %367 = load i32*, i32** %9, align 8
  %368 = load i64, i64* %6, align 8
  %369 = getelementptr inbounds i32, i32* %367, i64 %368
  %370 = getelementptr inbounds i32, i32* %369, i64 2
  %371 = load i32, i32* %370, align 4
  %372 = load i32*, i32** %9, align 8
  %373 = load i64, i64* %6, align 8
  %374 = getelementptr inbounds i32, i32* %372, i64 %373
  %375 = getelementptr inbounds i32, i32* %374, i64 3
  %376 = load i32, i32* %375, align 4
  %377 = load i32*, i32** %9, align 8
  %378 = load i64, i64* %6, align 8
  %379 = getelementptr inbounds i32, i32* %377, i64 %378
  %380 = getelementptr inbounds i32, i32* %379, i64 4
  %381 = load i32, i32* %380, align 4
  %382 = load i32*, i32** %9, align 8
  %383 = load i64, i64* %6, align 8
  %384 = getelementptr inbounds i32, i32* %382, i64 %383
  %385 = getelementptr inbounds i32, i32* %384, i64 5
  %386 = load i32, i32* %385, align 4
  %387 = load i32*, i32** %9, align 8
  %388 = load i64, i64* %6, align 8
  %389 = getelementptr inbounds i32, i32* %387, i64 %388
  %390 = getelementptr inbounds i32, i32* %389, i64 6
  %391 = load i32, i32* %390, align 4
  %392 = load i32*, i32** %9, align 8
  %393 = load i64, i64* %6, align 8
  %394 = getelementptr inbounds i32, i32* %392, i64 %393
  %395 = getelementptr inbounds i32, i32* %394, i64 7
  %396 = load i32, i32* %395, align 4
  %397 = sext i32 %396 to i64
  %398 = inttoptr i64 %397 to i8*
  %399 = call i32 @RT_TRACE(i32 %356, i32 %357, i8* %398)
  br label %400

400:                                              ; preds = %355
  %401 = load i64, i64* %6, align 8
  %402 = add nsw i64 %401, 8
  store i64 %402, i64* %6, align 8
  br label %349

403:                                              ; preds = %349
  br label %404

404:                                              ; preds = %403, %2
  %405 = load i32, i32* @_SUCCESS, align 4
  store i32 %405, i32* %3, align 4
  br label %406

406:                                              ; preds = %404, %81, %59
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @IS_MCAST(i32) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @rtw_secmicsetkey(%struct.mic_data*, i32*) #2

declare dso_local i32 @rtw_secmicappend(%struct.mic_data*, i32*, i64) #2

declare dso_local i64 @RND4(i32) #2

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #2

declare dso_local i32 @rtw_secgetmic(%struct.mic_data*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
