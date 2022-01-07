; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_query_rx_phy_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_query_rx_phy_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.recv_frame = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, i64 }
%struct.recv_stat = type { i32 }
%struct.phy_stat = type { i32 }
%struct.phy_cck_rx_status = type { i32, i32 }

@PHY_STAT_GAIN_TRSW_SHT = common dso_local global i32 0, align 4
@PHY_STAT_PWDB_ALL_SHT = common dso_local global i64 0, align 8
@PHY_STAT_RXEVM_SHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %union.recv_frame*)* @query_rx_phy_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @query_rx_phy_status(%struct._adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.recv_stat*, align 8
  %9 = alloca %struct.phy_stat*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [4 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.phy_cck_rx_status*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  %22 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %23 = bitcast %union.recv_frame* %22 to %struct.TYPE_7__*
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.recv_stat*
  store %struct.recv_stat* %27, %struct.recv_stat** %8, align 8
  %28 = load %struct.recv_stat*, %struct.recv_stat** %8, align 8
  %29 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %28, i64 1
  %30 = bitcast %struct.recv_stat* %29 to %struct.phy_stat*
  store %struct.phy_stat* %30, %struct.phy_stat** %9, align 8
  %31 = load %struct.recv_stat*, %struct.recv_stat** %8, align 8
  %32 = getelementptr inbounds %struct.recv_stat, %struct.recv_stat* %31, i64 1
  %33 = bitcast %struct.recv_stat* %32 to i32*
  store i32* %33, i32** %10, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %34 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %35 = bitcast %union.recv_frame* %34 to %struct.TYPE_7__*
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp sle i32 %39, 3
  %41 = zext i1 %40 to i64
  %42 = select i1 %40, i32 1, i32 0
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %217

45:                                               ; preds = %2
  %46 = load %struct.phy_stat*, %struct.phy_stat** %9, align 8
  %47 = bitcast %struct.phy_stat* %46 to %struct.phy_cck_rx_status*
  store %struct.phy_cck_rx_status* %47, %struct.phy_cck_rx_status** %19, align 8
  %48 = load i32, i32* %18, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %83, label %50

50:                                               ; preds = %45
  %51 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %52 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, 192
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = ashr i32 %55, 6
  store i32 %56, i32* %21, align 4
  %57 = load i32, i32* %21, align 4
  switch i32 %57, label %82 [
    i32 3, label %58
    i32 2, label %64
    i32 1, label %70
    i32 0, label %76
  ]

58:                                               ; preds = %50
  %59 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %60 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, 62
  %63 = sub nsw i32 -40, %62
  store i32 %63, i32* %12, align 4
  br label %82

64:                                               ; preds = %50
  %65 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %66 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 62
  %69 = sub nsw i32 -20, %68
  store i32 %69, i32* %12, align 4
  br label %82

70:                                               ; preds = %50
  %71 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %72 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 62
  %75 = sub nsw i32 -2, %74
  store i32 %75, i32* %12, align 4
  br label %82

76:                                               ; preds = %50
  %77 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %78 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 62
  %81 = sub nsw i32 14, %80
  store i32 %81, i32* %12, align 4
  br label %82

82:                                               ; preds = %50, %76, %70, %64, %58
  br label %122

83:                                               ; preds = %45
  %84 = load %struct.phy_stat*, %struct.phy_stat** %9, align 8
  %85 = getelementptr inbounds %struct.phy_stat, %struct.phy_stat* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @le32_to_cpu(i32 %86)
  %88 = ashr i32 %87, 8
  %89 = and i32 %88, 96
  store i32 %89, i32* %21, align 4
  %90 = load i32, i32* %21, align 4
  %91 = ashr i32 %90, 5
  store i32 %91, i32* %21, align 4
  %92 = load i32, i32* %21, align 4
  switch i32 %92, label %121 [
    i32 3, label %93
    i32 2, label %100
    i32 1, label %107
    i32 0, label %114
  ]

93:                                               ; preds = %83
  %94 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %95 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %96, 31
  %98 = shl i32 %97, 1
  %99 = sub nsw i32 -40, %98
  store i32 %99, i32* %12, align 4
  br label %121

100:                                              ; preds = %83
  %101 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %102 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 31
  %105 = shl i32 %104, 1
  %106 = sub nsw i32 -20, %105
  store i32 %106, i32* %12, align 4
  br label %121

107:                                              ; preds = %83
  %108 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %109 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %110, 31
  %112 = shl i32 %111, 1
  %113 = sub nsw i32 -2, %112
  store i32 %113, i32* %12, align 4
  br label %121

114:                                              ; preds = %83
  %115 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %116 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 31
  %119 = shl i32 %118, 1
  %120 = sub nsw i32 14, %119
  store i32 %120, i32* %12, align 4
  br label %121

121:                                              ; preds = %83, %114, %107, %100, %93
  br label %122

122:                                              ; preds = %121, %82
  %123 = load i32, i32* %12, align 4
  %124 = call i32 @query_rx_pwr_percentage(i32 %123)
  store i32 %124, i32* %13, align 4
  %125 = load i32, i32* %13, align 4
  %126 = add nsw i32 %125, 6
  store i32 %126, i32* %13, align 4
  %127 = load i32, i32* %13, align 4
  %128 = icmp sgt i32 %127, 100
  br i1 %128, label %129, label %130

129:                                              ; preds = %122
  store i32 100, i32* %13, align 4
  br label %130

130:                                              ; preds = %129, %122
  %131 = load i32, i32* %13, align 4
  %132 = icmp sgt i32 %131, 34
  br i1 %132, label %133, label %139

133:                                              ; preds = %130
  %134 = load i32, i32* %13, align 4
  %135 = icmp sle i32 %134, 42
  br i1 %135, label %136, label %139

136:                                              ; preds = %133
  %137 = load i32, i32* %13, align 4
  %138 = sub nsw i32 %137, 2
  store i32 %138, i32* %13, align 4
  br label %169

139:                                              ; preds = %133, %130
  %140 = load i32, i32* %13, align 4
  %141 = icmp sgt i32 %140, 26
  br i1 %141, label %142, label %148

142:                                              ; preds = %139
  %143 = load i32, i32* %13, align 4
  %144 = icmp sle i32 %143, 34
  br i1 %144, label %145, label %148

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = sub nsw i32 %146, 6
  store i32 %147, i32* %13, align 4
  br label %168

148:                                              ; preds = %142, %139
  %149 = load i32, i32* %13, align 4
  %150 = icmp sgt i32 %149, 14
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* %13, align 4
  %153 = icmp sle i32 %152, 26
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %155, 8
  store i32 %156, i32* %13, align 4
  br label %167

157:                                              ; preds = %151, %148
  %158 = load i32, i32* %13, align 4
  %159 = icmp sgt i32 %158, 4
  br i1 %159, label %160, label %166

160:                                              ; preds = %157
  %161 = load i32, i32* %13, align 4
  %162 = icmp sle i32 %161, 14
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load i32, i32* %13, align 4
  %165 = sub nsw i32 %164, 4
  store i32 %165, i32* %13, align 4
  br label %166

166:                                              ; preds = %163, %160, %157
  br label %167

167:                                              ; preds = %166, %154
  br label %168

168:                                              ; preds = %167, %145
  br label %169

169:                                              ; preds = %168, %136
  %170 = load i32, i32* %13, align 4
  %171 = icmp sgt i32 %170, 40
  br i1 %171, label %172, label %173

172:                                              ; preds = %169
  store i32 100, i32* %20, align 4
  br label %195

173:                                              ; preds = %169
  %174 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %175 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  store i32 %176, i32* %20, align 4
  %177 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %178 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 64
  br i1 %180, label %181, label %182

181:                                              ; preds = %173
  store i32 0, i32* %20, align 4
  br label %194

182:                                              ; preds = %173
  %183 = load %struct.phy_cck_rx_status*, %struct.phy_cck_rx_status** %19, align 8
  %184 = getelementptr inbounds %struct.phy_cck_rx_status, %struct.phy_cck_rx_status* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = icmp slt i32 %185, 20
  br i1 %186, label %187, label %188

187:                                              ; preds = %182
  store i32 100, i32* %20, align 4
  br label %193

188:                                              ; preds = %182
  %189 = load i32, i32* %20, align 4
  %190 = sub nsw i32 64, %189
  %191 = mul nsw i32 %190, 100
  %192 = sdiv i32 %191, 44
  store i32 %192, i32* %20, align 4
  br label %193

193:                                              ; preds = %188, %187
  br label %194

194:                                              ; preds = %193, %181
  br label %195

195:                                              ; preds = %194, %172
  %196 = load i32, i32* %20, align 4
  %197 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %198 = bitcast %union.recv_frame* %197 to %struct.TYPE_7__*
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %200, i32 0, i32 1
  store i32 %196, i32* %201, align 4
  %202 = load i32, i32* %20, align 4
  %203 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %204 = bitcast %union.recv_frame* %203 to %struct.TYPE_7__*
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 2
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 0
  store i32 %202, i32* %209, align 4
  %210 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %211 = bitcast %union.recv_frame* %210 to %struct.TYPE_7__*
  %212 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 2
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 -1, i32* %216, align 4
  br label %324

217:                                              ; preds = %2
  store i32 0, i32* %5, align 4
  br label %218

218:                                              ; preds = %250, %217
  %219 = load i32, i32* %5, align 4
  %220 = load %struct._adapter*, %struct._adapter** %3, align 8
  %221 = getelementptr inbounds %struct._adapter, %struct._adapter* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = and i32 %223, 15
  %225 = icmp slt i32 %219, %224
  br i1 %225, label %226, label %253

226:                                              ; preds = %218
  %227 = load i32, i32* %17, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %17, align 4
  %229 = load i32*, i32** %10, align 8
  %230 = load i32, i32* @PHY_STAT_GAIN_TRSW_SHT, align 4
  %231 = load i32, i32* %5, align 4
  %232 = add nsw i32 %230, %231
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds i32, i32* %229, i64 %233
  %235 = load i32, i32* %234, align 4
  %236 = and i32 %235, 63
  %237 = mul nsw i32 %236, 2
  %238 = sub nsw i32 %237, 110
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %240
  store i32 %238, i32* %241, align 4
  %242 = load i32, i32* %5, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 %243
  %245 = load i32, i32* %244, align 4
  %246 = call i32 @query_rx_pwr_percentage(i32 %245)
  store i32 %246, i32* %14, align 4
  %247 = load i32, i32* %14, align 4
  %248 = load i32, i32* %15, align 4
  %249 = add nsw i32 %248, %247
  store i32 %249, i32* %15, align 4
  br label %250

250:                                              ; preds = %226
  %251 = load i32, i32* %5, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %218

253:                                              ; preds = %218
  %254 = load i32*, i32** %10, align 8
  %255 = load i64, i64* @PHY_STAT_PWDB_ALL_SHT, align 8
  %256 = getelementptr inbounds i32, i32* %254, i64 %255
  %257 = load i32, i32* %256, align 4
  %258 = ashr i32 %257, 1
  %259 = and i32 %258, 127
  %260 = sub nsw i32 %259, 106
  store i32 %260, i32* %12, align 4
  %261 = load i32, i32* %12, align 4
  %262 = call i32 @query_rx_pwr_percentage(i32 %261)
  store i32 %262, i32* %13, align 4
  %263 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %264 = bitcast %union.recv_frame* %263 to %struct.TYPE_7__*
  %265 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %264, i32 0, i32 0
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = icmp ne i64 %268, 0
  br i1 %269, label %270, label %287

270:                                              ; preds = %253
  %271 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %272 = bitcast %union.recv_frame* %271 to %struct.TYPE_7__*
  %273 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %272, i32 0, i32 0
  %274 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = icmp sge i32 %276, 20
  br i1 %277, label %278, label %287

278:                                              ; preds = %270
  %279 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %280 = bitcast %union.recv_frame* %279 to %struct.TYPE_7__*
  %281 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %280, i32 0, i32 0
  %282 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %281, i32 0, i32 0
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 8
  %285 = icmp sle i32 %284, 27
  br i1 %285, label %286, label %287

286:                                              ; preds = %278
  store i32 2, i32* %6, align 4
  br label %288

287:                                              ; preds = %278, %270, %253
  store i32 1, i32* %6, align 4
  br label %288

288:                                              ; preds = %287, %286
  store i32 0, i32* %5, align 4
  br label %289

289:                                              ; preds = %320, %288
  %290 = load i32, i32* %5, align 4
  %291 = load i32, i32* %6, align 4
  %292 = icmp slt i32 %290, %291
  br i1 %292, label %293, label %323

293:                                              ; preds = %289
  %294 = load i32*, i32** %10, align 8
  %295 = load i32, i32* @PHY_STAT_RXEVM_SHT, align 4
  %296 = load i32, i32* %5, align 4
  %297 = add nsw i32 %295, %296
  %298 = sext i32 %297 to i64
  %299 = getelementptr inbounds i32, i32* %294, i64 %298
  %300 = load i32, i32* %299, align 4
  %301 = call i32 @evm_db2percentage(i32 %300)
  store i32 %301, i32* %7, align 4
  %302 = load i32, i32* %7, align 4
  %303 = and i32 %302, 255
  %304 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %305 = bitcast %union.recv_frame* %304 to %struct.TYPE_7__*
  %306 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %307, i32 0, i32 1
  store i32 %303, i32* %308, align 4
  %309 = load i32, i32* %7, align 4
  %310 = and i32 %309, 255
  %311 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %312 = bitcast %union.recv_frame* %311 to %struct.TYPE_7__*
  %313 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %312, i32 0, i32 0
  %314 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %313, i32 0, i32 0
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 2
  %316 = load i32*, i32** %315, align 8
  %317 = load i32, i32* %5, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  store i32 %310, i32* %319, align 4
  br label %320

320:                                              ; preds = %293
  %321 = load i32, i32* %5, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %5, align 4
  br label %289

323:                                              ; preds = %289
  br label %324

324:                                              ; preds = %323, %195
  %325 = load i32, i32* %16, align 4
  %326 = icmp ne i32 %325, 0
  br i1 %326, label %327, label %336

327:                                              ; preds = %324
  %328 = load i32, i32* %13, align 4
  %329 = call i64 @r8712_signal_scale_mapping(i32 %328)
  %330 = trunc i64 %329 to i32
  %331 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %332 = bitcast %union.recv_frame* %331 to %struct.TYPE_7__*
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 0
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 0
  %335 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %334, i32 0, i32 3
  store i32 %330, i32* %335, align 8
  br label %351

336:                                              ; preds = %324
  %337 = load i32, i32* %17, align 4
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %339, label %350

339:                                              ; preds = %336
  %340 = load i32, i32* %17, align 4
  %341 = load i32, i32* %15, align 4
  %342 = sdiv i32 %341, %340
  store i32 %342, i32* %15, align 4
  %343 = call i64 @r8712_signal_scale_mapping(i32 %342)
  %344 = trunc i64 %343 to i32
  %345 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %346 = bitcast %union.recv_frame* %345 to %struct.TYPE_7__*
  %347 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %346, i32 0, i32 0
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 0
  %349 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %348, i32 0, i32 3
  store i32 %344, i32* %349, align 8
  br label %350

350:                                              ; preds = %339, %336
  br label %351

351:                                              ; preds = %350, %327
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @query_rx_pwr_percentage(i32) #1

declare dso_local i32 @evm_db2percentage(i32) #1

declare dso_local i64 @r8712_signal_scale_mapping(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
