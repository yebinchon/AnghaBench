; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_xmitframe_addmic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_xmitframe_addmic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.xmit_priv, %struct.security_priv, %struct.TYPE_4__ }
%struct.xmit_priv = type { i64 }
%struct.security_priv = type { i64, i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32* }
%struct.TYPE_4__ = type { %struct.qos_priv }
%struct.qos_priv = type { i32 }
%struct.xmit_frame = type { i32*, %struct.pkt_attrib }
%struct.pkt_attrib = type { i64, i64, i32, i32, i64, i64, i64, i32*, %struct.sta_info* }
%struct.sta_info = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }
%struct.mic_data = type { i32 }

@_TKIP_ = common dso_local global i64 0, align 8
@TXDESC_OFFSET = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %struct.xmit_frame*)* @xmitframe_addmic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xmitframe_addmic(%struct._adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca [8 x i32], align 16
  %11 = alloca %struct.mic_data, align 4
  %12 = alloca %struct.sta_info*, align 8
  %13 = alloca %struct.qos_priv*, align 8
  %14 = alloca %struct.pkt_attrib*, align 8
  %15 = alloca %struct.security_priv*, align 8
  %16 = alloca %struct.xmit_priv*, align 8
  %17 = alloca [4 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca [16 x i32], align 16
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %20 = load %struct._adapter*, %struct._adapter** %4, align 8
  %21 = getelementptr inbounds %struct._adapter, %struct._adapter* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store %struct.qos_priv* %22, %struct.qos_priv** %13, align 8
  %23 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %24 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %23, i32 0, i32 1
  store %struct.pkt_attrib* %24, %struct.pkt_attrib** %14, align 8
  %25 = load %struct._adapter*, %struct._adapter** %4, align 8
  %26 = getelementptr inbounds %struct._adapter, %struct._adapter* %25, i32 0, i32 2
  store %struct.security_priv* %26, %struct.security_priv** %15, align 8
  %27 = load %struct._adapter*, %struct._adapter** %4, align 8
  %28 = getelementptr inbounds %struct._adapter, %struct._adapter* %27, i32 0, i32 1
  store %struct.xmit_priv* %28, %struct.xmit_priv** %16, align 8
  %29 = bitcast [4 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 16, i1 false)
  %30 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %31 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %30, i32 0, i32 7
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @is_multicast_ether_addr(i32* %32)
  store i32 %33, i32* %18, align 4
  %34 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %35 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %34, i32 0, i32 8
  %36 = load %struct.sta_info*, %struct.sta_info** %35, align 8
  %37 = icmp ne %struct.sta_info* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %40 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %39, i32 0, i32 8
  %41 = load %struct.sta_info*, %struct.sta_info** %40, align 8
  store %struct.sta_info* %41, %struct.sta_info** %12, align 8
  br label %50

42:                                               ; preds = %2
  %43 = load %struct._adapter*, %struct._adapter** %4, align 8
  %44 = getelementptr inbounds %struct._adapter, %struct._adapter* %43, i32 0, i32 0
  %45 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %46 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = call %struct.sta_info* @r8712_get_stainfo(i32* %44, i32* %48)
  store %struct.sta_info* %49, %struct.sta_info** %12, align 8
  br label %50

50:                                               ; preds = %42, %38
  %51 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %52 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @_TKIP_, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %290

56:                                               ; preds = %50
  %57 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %58 = icmp ne %struct.sta_info* %57, null
  br i1 %58, label %59, label %289

59:                                               ; preds = %56
  %60 = bitcast [16 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %60, i8 0, i64 64, i1 false)
  %61 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %62 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @TXDESC_OFFSET, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %8, align 8
  %67 = load i32, i32* %18, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %96

69:                                               ; preds = %59
  %70 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %71 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %70, i32 0, i32 2
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %74 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %80 = call i32 @memcmp(i32* %78, i32* %79, i32 16)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %69
  %83 = load i32, i32* @ENOMEM, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %3, align 4
  br label %291

85:                                               ; preds = %69
  %86 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %87 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %86, i32 0, i32 2
  %88 = load %struct.TYPE_5__*, %struct.TYPE_5__** %87, align 8
  %89 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %90 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = call i32 @r8712_secmicsetkey(%struct.mic_data* %11, i32* %94)
  br label %115

96:                                               ; preds = %59
  %97 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %98 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %19, i64 0, i64 0
  %103 = call i32 @memcmp(i32* %101, i32* %102, i32 16)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %96
  %106 = load i32, i32* @ENOMEM, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %3, align 4
  br label %291

108:                                              ; preds = %96
  %109 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %110 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = call i32 @r8712_secmicsetkey(%struct.mic_data* %11, i32* %113)
  br label %115

115:                                              ; preds = %108, %85
  %116 = load i32*, i32** %8, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %139

121:                                              ; preds = %115
  %122 = load i32*, i32** %8, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 16
  %124 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %123, i64 6)
  %125 = load i32*, i32** %8, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  %127 = load i32, i32* %126, align 4
  %128 = and i32 %127, 2
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %134

130:                                              ; preds = %121
  %131 = load i32*, i32** %8, align 8
  %132 = getelementptr inbounds i32, i32* %131, i64 24
  %133 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %132, i64 6)
  br label %138

134:                                              ; preds = %121
  %135 = load i32*, i32** %8, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 10
  %137 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %136, i64 6)
  br label %138

138:                                              ; preds = %134, %130
  br label %157

139:                                              ; preds = %115
  %140 = load i32*, i32** %8, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 4
  %142 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %141, i64 6)
  %143 = load i32*, i32** %8, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  %145 = load i32, i32* %144, align 4
  %146 = and i32 %145, 2
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %139
  %149 = load i32*, i32** %8, align 8
  %150 = getelementptr inbounds i32, i32* %149, i64 16
  %151 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %150, i64 6)
  br label %156

152:                                              ; preds = %139
  %153 = load i32*, i32** %8, align 8
  %154 = getelementptr inbounds i32, i32* %153, i64 10
  %155 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %154, i64 6)
  br label %156

156:                                              ; preds = %152, %148
  br label %157

157:                                              ; preds = %156, %138
  %158 = load %struct.qos_priv*, %struct.qos_priv** %13, align 8
  %159 = getelementptr inbounds %struct.qos_priv, %struct.qos_priv* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %169

162:                                              ; preds = %157
  %163 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %164 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %164, i32 0, i32 6
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %167, i32* %168, align 16
  br label %169

169:                                              ; preds = %162, %157
  %170 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %171 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %170, i64 4)
  %172 = load i32*, i32** %8, align 8
  store i32* %172, i32** %9, align 8
  store i64 0, i64* %6, align 8
  br label %173

173:                                              ; preds = %269, %169
  %174 = load i64, i64* %6, align 8
  %175 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %176 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %175, i32 0, i32 1
  %177 = load i64, i64* %176, align 8
  %178 = icmp slt i64 %174, %177
  br i1 %178, label %179, label %272

179:                                              ; preds = %173
  %180 = load i32*, i32** %9, align 8
  %181 = ptrtoint i32* %180 to i32
  %182 = call i64 @RND4(i32 %181)
  %183 = inttoptr i64 %182 to i32*
  store i32* %183, i32** %9, align 8
  %184 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %185 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %188 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = add nsw i32 %186, %189
  %191 = load i32*, i32** %9, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i32, i32* %191, i64 %192
  store i32* %193, i32** %9, align 8
  %194 = load i64, i64* %6, align 8
  %195 = add nsw i64 %194, 1
  %196 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %197 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp eq i64 %195, %198
  br i1 %199, label %200, label %232

200:                                              ; preds = %179
  %201 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %202 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %201, i32 0, i32 4
  %203 = load i64, i64* %202, align 8
  %204 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %205 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 8
  %207 = sext i32 %206 to i64
  %208 = sub nsw i64 %203, %207
  %209 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %210 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = sext i32 %211 to i64
  %213 = sub nsw i64 %208, %212
  %214 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %215 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %214, i32 0, i32 1
  %216 = load i64, i64* %215, align 8
  %217 = icmp ne i64 %216, 0
  br i1 %217, label %218, label %222

218:                                              ; preds = %200
  %219 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %220 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %219, i32 0, i32 5
  %221 = load i64, i64* %220, align 8
  br label %223

222:                                              ; preds = %200
  br label %223

223:                                              ; preds = %222, %218
  %224 = phi i64 [ %221, %218 ], [ 0, %222 ]
  %225 = sub nsw i64 %213, %224
  store i64 %225, i64* %7, align 8
  %226 = load i32*, i32** %9, align 8
  %227 = load i64, i64* %7, align 8
  %228 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %226, i64 %227)
  %229 = load i32*, i32** %9, align 8
  %230 = load i64, i64* %7, align 8
  %231 = getelementptr inbounds i32, i32* %229, i64 %230
  store i32* %231, i32** %9, align 8
  br label %268

232:                                              ; preds = %179
  %233 = load %struct.xmit_priv*, %struct.xmit_priv** %16, align 8
  %234 = getelementptr inbounds %struct.xmit_priv, %struct.xmit_priv* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %237 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = sext i32 %238 to i64
  %240 = sub nsw i64 %235, %239
  %241 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %242 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %241, i32 0, i32 3
  %243 = load i32, i32* %242, align 4
  %244 = sext i32 %243 to i64
  %245 = sub nsw i64 %240, %244
  %246 = load %struct.security_priv*, %struct.security_priv** %15, align 8
  %247 = getelementptr inbounds %struct.security_priv, %struct.security_priv* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %232
  %251 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %252 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %251, i32 0, i32 5
  %253 = load i64, i64* %252, align 8
  br label %255

254:                                              ; preds = %232
  br label %255

255:                                              ; preds = %254, %250
  %256 = phi i64 [ %253, %250 ], [ 0, %254 ]
  %257 = sub nsw i64 %245, %256
  store i64 %257, i64* %7, align 8
  %258 = load i32*, i32** %9, align 8
  %259 = load i64, i64* %7, align 8
  %260 = call i32 @r8712_secmicappend(%struct.mic_data* %11, i32* %258, i64 %259)
  %261 = load i32*, i32** %9, align 8
  %262 = load i64, i64* %7, align 8
  %263 = getelementptr inbounds i32, i32* %261, i64 %262
  %264 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %265 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %264, i32 0, i32 5
  %266 = load i64, i64* %265, align 8
  %267 = getelementptr inbounds i32, i32* %263, i64 %266
  store i32* %267, i32** %9, align 8
  br label %268

268:                                              ; preds = %255, %223
  br label %269

269:                                              ; preds = %268
  %270 = load i64, i64* %6, align 8
  %271 = add nsw i64 %270, 1
  store i64 %271, i64* %6, align 8
  br label %173

272:                                              ; preds = %173
  %273 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %274 = call i32 @r8712_secgetmic(%struct.mic_data* %11, i32* %273)
  %275 = load i32*, i32** %9, align 8
  %276 = getelementptr inbounds [8 x i32], [8 x i32]* %10, i64 0, i64 0
  %277 = call i32 @memcpy(i32* %275, i32* %276, i32 8)
  %278 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %279 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %278, i32 0, i32 4
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 8
  store i64 %281, i64* %279, align 8
  %282 = load i32*, i32** %9, align 8
  %283 = load %struct.pkt_attrib*, %struct.pkt_attrib** %14, align 8
  %284 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %283, i32 0, i32 4
  %285 = load i64, i64* %284, align 8
  %286 = sub i64 0, %285
  %287 = getelementptr inbounds i32, i32* %282, i64 %286
  %288 = getelementptr inbounds i32, i32* %287, i64 8
  store i32* %288, i32** %9, align 8
  br label %289

289:                                              ; preds = %272, %56
  br label %290

290:                                              ; preds = %289, %50
  store i32 0, i32* %3, align 4
  br label %291

291:                                              ; preds = %290, %105, %82
  %292 = load i32, i32* %3, align 4
  ret i32 %292
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #2

declare dso_local %struct.sta_info* @r8712_get_stainfo(i32*, i32*) #2

declare dso_local i32 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @r8712_secmicsetkey(%struct.mic_data*, i32*) #2

declare dso_local i32 @r8712_secmicappend(%struct.mic_data*, i32*, i64) #2

declare dso_local i64 @RND4(i32) #2

declare dso_local i32 @r8712_secgetmic(%struct.mic_data*, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
