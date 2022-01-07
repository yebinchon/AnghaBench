; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_hwconfig.c_odm_RxPhyStatus92CSeries_Parsing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_odm_hwconfig.c_odm_RxPhyStatus92CSeries_Parsing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.odm_dm_struct = type { i32, i32, i64, %struct.TYPE_5__, %struct.TYPE_6__, i32, %struct.sw_ant_switch }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i8**, i32, i32 }
%struct.sw_ant_switch = type { i32 }
%struct.odm_phy_status_info = type { i32*, i32, i32, i32, i32, i32*, i32*, i32, i32, i8** }
%struct.odm_per_pkt_info = type { i64, i64 }
%struct.phy_status_rpt = type { i32, i32, i32*, i32, i32, i32, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@DESC92C_RATE1M = common dso_local global i64 0, align 8
@DESC92C_RATE11M = common dso_local global i64 0, align 8
@RF_PATH_A = common dso_local global i64 0, align 8
@RF_PATH_B = common dso_local global i64 0, align 8
@RF_PATH_MAX = common dso_local global i32 0, align 4
@ODM_BOARD_HIGHPWR = common dso_local global i64 0, align 8
@DESC92C_RATEMCS8 = common dso_local global i64 0, align 8
@DESC92C_RATEMCS15 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.odm_dm_struct*, %struct.odm_phy_status_info*, i32*, %struct.odm_per_pkt_info*)* @odm_RxPhyStatus92CSeries_Parsing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @odm_RxPhyStatus92CSeries_Parsing(%struct.odm_dm_struct* %0, %struct.odm_phy_status_info* %1, i32* %2, %struct.odm_per_pkt_info* %3) #0 {
  %5 = alloca %struct.odm_dm_struct*, align 8
  %6 = alloca %struct.odm_phy_status_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.odm_per_pkt_info*, align 8
  %9 = alloca %struct.sw_ant_switch*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.phy_status_rpt*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.odm_dm_struct* %0, %struct.odm_dm_struct** %5, align 8
  store %struct.odm_phy_status_info* %1, %struct.odm_phy_status_info** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.odm_per_pkt_info* %3, %struct.odm_per_pkt_info** %8, align 8
  %28 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %29 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %28, i32 0, i32 6
  store %struct.sw_ant_switch* %29, %struct.sw_ant_switch** %9, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %30 = load i32*, i32** %7, align 8
  %31 = bitcast i32* %30 to %struct.phy_status_rpt*
  store %struct.phy_status_rpt* %31, %struct.phy_status_rpt** %24, align 8
  %32 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %33 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @DESC92C_RATE1M, align 8
  %36 = icmp sge i64 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %4
  %38 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %39 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @DESC92C_RATE11M, align 8
  %42 = icmp sle i64 %40, %41
  br label %43

43:                                               ; preds = %37, %4
  %44 = phi i1 [ false, %4 ], [ %42, %37 ]
  %45 = zext i1 %44 to i32
  store i32 %45, i32* %19, align 4
  %46 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %47 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i64, i64* @RF_PATH_A, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  store i32 -1, i32* %50, align 4
  %51 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %52 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @RF_PATH_B, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 -1, i32* %55, align 4
  %56 = load i32, i32* %19, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %222

58:                                               ; preds = %43
  %59 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %60 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %59, i32 0, i32 4
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  %64 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %65 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %21, align 4
  %67 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %68 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %25, align 4
  %70 = load i32, i32* %25, align 4
  %71 = and i32 %70, 224
  %72 = ashr i32 %71, 5
  store i32 %72, i32* %22, align 4
  %73 = load i32, i32* %25, align 4
  %74 = and i32 %73, 31
  store i32 %74, i32* %23, align 4
  %75 = load i32, i32* %22, align 4
  switch i32 %75, label %128 [
    i32 7, label %76
    i32 6, label %86
    i32 5, label %91
    i32 4, label %96
    i32 3, label %101
    i32 2, label %106
    i32 1, label %120
    i32 0, label %124
  ]

76:                                               ; preds = %58
  %77 = load i32, i32* %23, align 4
  %78 = icmp sle i32 %77, 27
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i32, i32* %23, align 4
  %81 = sub nsw i32 27, %80
  %82 = mul nsw i32 2, %81
  %83 = add nsw i32 -100, %82
  store i32 %83, i32* %13, align 4
  br label %85

84:                                               ; preds = %76
  store i32 -100, i32* %13, align 4
  br label %85

85:                                               ; preds = %84, %79
  br label %129

86:                                               ; preds = %58
  %87 = load i32, i32* %23, align 4
  %88 = sub nsw i32 2, %87
  %89 = mul nsw i32 2, %88
  %90 = add nsw i32 -48, %89
  store i32 %90, i32* %13, align 4
  br label %129

91:                                               ; preds = %58
  %92 = load i32, i32* %23, align 4
  %93 = sub nsw i32 7, %92
  %94 = mul nsw i32 2, %93
  %95 = add nsw i32 -42, %94
  store i32 %95, i32* %13, align 4
  br label %129

96:                                               ; preds = %58
  %97 = load i32, i32* %23, align 4
  %98 = sub nsw i32 7, %97
  %99 = mul nsw i32 2, %98
  %100 = add nsw i32 -36, %99
  store i32 %100, i32* %13, align 4
  br label %129

101:                                              ; preds = %58
  %102 = load i32, i32* %23, align 4
  %103 = sub nsw i32 7, %102
  %104 = mul nsw i32 2, %103
  %105 = add nsw i32 -24, %104
  store i32 %105, i32* %13, align 4
  br label %129

106:                                              ; preds = %58
  %107 = load i32, i32* %21, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i32, i32* %23, align 4
  %111 = sub nsw i32 5, %110
  %112 = mul nsw i32 2, %111
  %113 = add nsw i32 -12, %112
  store i32 %113, i32* %13, align 4
  br label %119

114:                                              ; preds = %106
  %115 = load i32, i32* %23, align 4
  %116 = sub nsw i32 5, %115
  %117 = mul nsw i32 2, %116
  %118 = add nsw i32 -6, %117
  store i32 %118, i32* %13, align 4
  br label %119

119:                                              ; preds = %114, %109
  br label %129

120:                                              ; preds = %58
  %121 = load i32, i32* %23, align 4
  %122 = mul nsw i32 2, %121
  %123 = sub nsw i32 8, %122
  store i32 %123, i32* %13, align 4
  br label %129

124:                                              ; preds = %58
  %125 = load i32, i32* %23, align 4
  %126 = mul nsw i32 2, %125
  %127 = sub nsw i32 14, %126
  store i32 %127, i32* %13, align 4
  br label %129

128:                                              ; preds = %58
  br label %129

129:                                              ; preds = %128, %124, %120, %119, %101, %96, %91, %86, %85
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, 6
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = call i32 @odm_query_rxpwrpercentage(i32 %132)
  store i32 %133, i32* %15, align 4
  %134 = load i32, i32* %21, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %163, label %136

136:                                              ; preds = %129
  %137 = load i32, i32* %15, align 4
  %138 = icmp sge i32 %137, 80
  br i1 %138, label %139, label %148

139:                                              ; preds = %136
  %140 = load i32, i32* %15, align 4
  %141 = sub nsw i32 %140, 80
  %142 = shl i32 %141, 1
  %143 = load i32, i32* %15, align 4
  %144 = sub nsw i32 %143, 80
  %145 = ashr i32 %144, 1
  %146 = add nsw i32 %142, %145
  %147 = add nsw i32 %146, 80
  store i32 %147, i32* %15, align 4
  br label %158

148:                                              ; preds = %136
  %149 = load i32, i32* %15, align 4
  %150 = icmp sle i32 %149, 78
  br i1 %150, label %151, label %157

151:                                              ; preds = %148
  %152 = load i32, i32* %15, align 4
  %153 = icmp sge i32 %152, 20
  br i1 %153, label %154, label %157

154:                                              ; preds = %151
  %155 = load i32, i32* %15, align 4
  %156 = add nsw i32 %155, 3
  store i32 %156, i32* %15, align 4
  br label %157

157:                                              ; preds = %154, %151, %148
  br label %158

158:                                              ; preds = %157, %139
  %159 = load i32, i32* %15, align 4
  %160 = icmp sgt i32 %159, 100
  br i1 %160, label %161, label %162

161:                                              ; preds = %158
  store i32 100, i32* %15, align 4
  br label %162

162:                                              ; preds = %161, %158
  br label %163

163:                                              ; preds = %162, %129
  %164 = load i32, i32* %15, align 4
  %165 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %166 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %165, i32 0, i32 1
  store i32 %164, i32* %166, align 8
  %167 = load i32, i32* %15, align 4
  %168 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %169 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %168, i32 0, i32 2
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* %13, align 4
  %171 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %172 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %171, i32 0, i32 3
  store i32 %170, i32* %172, align 8
  %173 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %174 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %173, i32 0, i32 1
  %175 = load i64, i64* %174, align 8
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %221

177:                                              ; preds = %163
  %178 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %179 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp sgt i32 %180, 40
  br i1 %181, label %182, label %188

182:                                              ; preds = %177
  %183 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %184 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %183, i32 0, i32 5
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %188, label %187

187:                                              ; preds = %182
  store i32 100, i32* %26, align 4
  br label %206

188:                                              ; preds = %182, %177
  %189 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %190 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %27, align 4
  %192 = load i32, i32* %27, align 4
  %193 = icmp sgt i32 %192, 64
  br i1 %193, label %194, label %195

194:                                              ; preds = %188
  store i32 0, i32* %26, align 4
  br label %205

195:                                              ; preds = %188
  %196 = load i32, i32* %27, align 4
  %197 = icmp slt i32 %196, 20
  br i1 %197, label %198, label %199

198:                                              ; preds = %195
  store i32 100, i32* %26, align 4
  br label %204

199:                                              ; preds = %195
  %200 = load i32, i32* %27, align 4
  %201 = sub nsw i32 64, %200
  %202 = mul nsw i32 %201, 100
  %203 = sdiv i32 %202, 44
  store i32 %203, i32* %26, align 4
  br label %204

204:                                              ; preds = %199, %198
  br label %205

205:                                              ; preds = %204, %194
  br label %206

206:                                              ; preds = %205, %187
  %207 = load i32, i32* %26, align 4
  %208 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %209 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %208, i32 0, i32 4
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %26, align 4
  %211 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %212 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %211, i32 0, i32 0
  %213 = load i32*, i32** %212, align 8
  %214 = load i64, i64* @RF_PATH_A, align 8
  %215 = getelementptr inbounds i32, i32* %213, i64 %214
  store i32 %210, i32* %215, align 4
  %216 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %217 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %216, i32 0, i32 0
  %218 = load i32*, i32** %217, align 8
  %219 = load i64, i64* @RF_PATH_B, align 8
  %220 = getelementptr inbounds i32, i32* %218, i64 %219
  store i32 -1, i32* %220, align 4
  br label %221

221:                                              ; preds = %206, %163
  br label %444

222:                                              ; preds = %43
  %223 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %224 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %223, i32 0, i32 4
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 8
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 8
  %228 = load i64, i64* @RF_PATH_A, align 8
  %229 = trunc i64 %228 to i32
  store i32 %229, i32* %10, align 4
  br label %230

230:                                              ; preds = %364, %222
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* @RF_PATH_MAX, align 4
  %233 = icmp slt i32 %231, %232
  br i1 %233, label %234, label %367

234:                                              ; preds = %230
  %235 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %236 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %10, align 4
  %239 = call i32 @BIT(i32 %238)
  %240 = and i32 %237, %239
  %241 = icmp ne i32 %240, 0
  br i1 %241, label %242, label %245

242:                                              ; preds = %234
  %243 = load i32, i32* %20, align 4
  %244 = add nsw i32 %243, 1
  store i32 %244, i32* %20, align 4
  br label %245

245:                                              ; preds = %242, %234
  %246 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %247 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %246, i32 0, i32 7
  %248 = load %struct.TYPE_4__*, %struct.TYPE_4__** %247, align 8
  %249 = load i32, i32* %10, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %248, i64 %250
  %252 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %253, 63
  %255 = mul nsw i32 %254, 2
  %256 = sub nsw i32 %255, 110
  %257 = load i32, i32* %10, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %258
  store i32 %256, i32* %259, align 4
  %260 = load i32, i32* %10, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %265 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %264, i32 0, i32 5
  %266 = load i32*, i32** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  store i32 %263, i32* %269, align 4
  %270 = load i32, i32* %10, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 %271
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @odm_query_rxpwrpercentage(i32 %273)
  store i32 %274, i32* %17, align 4
  %275 = load i32, i32* %17, align 4
  %276 = load i32, i32* %18, align 4
  %277 = add nsw i32 %276, %275
  store i32 %277, i32* %18, align 4
  %278 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %279 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @ODM_BOARD_HIGHPWR, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %323

283:                                              ; preds = %245
  %284 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %285 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %284, i32 0, i32 7
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %285, align 8
  %287 = load i32, i32* %10, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = icmp eq i32 %291, 1
  br i1 %292, label %293, label %302

293:                                              ; preds = %283
  %294 = load i32, i32* %17, align 4
  %295 = icmp sgt i32 %294, 94
  br i1 %295, label %296, label %297

296:                                              ; preds = %293
  br label %300

297:                                              ; preds = %293
  %298 = load i32, i32* %17, align 4
  %299 = add nsw i32 %298, 6
  br label %300

300:                                              ; preds = %297, %296
  %301 = phi i32 [ 100, %296 ], [ %299, %297 ]
  store i32 %301, i32* %17, align 4
  br label %313

302:                                              ; preds = %283
  %303 = load i32, i32* %17, align 4
  %304 = icmp sle i32 %303, 16
  br i1 %304, label %305, label %308

305:                                              ; preds = %302
  %306 = load i32, i32* %17, align 4
  %307 = ashr i32 %306, 3
  br label %311

308:                                              ; preds = %302
  %309 = load i32, i32* %17, align 4
  %310 = sub nsw i32 %309, 16
  br label %311

311:                                              ; preds = %308, %305
  %312 = phi i32 [ %307, %305 ], [ %310, %308 ]
  store i32 %312, i32* %17, align 4
  br label %313

313:                                              ; preds = %311, %300
  %314 = load i32, i32* %17, align 4
  %315 = icmp sle i32 %314, 34
  br i1 %315, label %316, label %322

316:                                              ; preds = %313
  %317 = load i32, i32* %17, align 4
  %318 = icmp sge i32 %317, 4
  br i1 %318, label %319, label %322

319:                                              ; preds = %316
  %320 = load i32, i32* %17, align 4
  %321 = sub nsw i32 %320, 4
  store i32 %321, i32* %17, align 4
  br label %322

322:                                              ; preds = %319, %316, %313
  br label %323

323:                                              ; preds = %322, %245
  %324 = load i32, i32* %17, align 4
  %325 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %326 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %325, i32 0, i32 6
  %327 = load i32*, i32** %326, align 8
  %328 = load i32, i32* %10, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds i32, i32* %327, i64 %329
  store i32 %324, i32* %330, align 4
  %331 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %332 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %331, i32 0, i32 2
  %333 = load i32*, i32** %332, align 8
  %334 = load i32, i32* %10, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds i32, i32* %333, i64 %335
  %337 = load i32, i32* %336, align 4
  %338 = sdiv i32 %337, 2
  %339 = sext i32 %338 to i64
  %340 = inttoptr i64 %339 to i8*
  %341 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %342 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %341, i32 0, i32 9
  %343 = load i8**, i8*** %342, align 8
  %344 = load i32, i32* %10, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds i8*, i8** %343, i64 %345
  store i8* %340, i8** %346, align 8
  %347 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %348 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %347, i32 0, i32 2
  %349 = load i32*, i32** %348, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = sdiv i32 %353, 2
  %355 = sext i32 %354 to i64
  %356 = inttoptr i64 %355 to i8*
  %357 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %358 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %357, i32 0, i32 4
  %359 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %358, i32 0, i32 0
  %360 = load i8**, i8*** %359, align 8
  %361 = load i32, i32* %10, align 4
  %362 = sext i32 %361 to i64
  %363 = getelementptr inbounds i8*, i8** %360, i64 %362
  store i8* %356, i8** %363, align 8
  br label %364

364:                                              ; preds = %323
  %365 = load i32, i32* %10, align 4
  %366 = add nsw i32 %365, 1
  store i32 %366, i32* %10, align 4
  br label %230

367:                                              ; preds = %230
  %368 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %369 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %368, i32 0, i32 1
  %370 = load i32, i32* %369, align 4
  %371 = ashr i32 %370, 1
  %372 = and i32 %371, 127
  %373 = sub nsw i32 %372, 110
  store i32 %373, i32* %13, align 4
  %374 = load i32, i32* %13, align 4
  %375 = call i32 @odm_query_rxpwrpercentage(i32 %374)
  store i32 %375, i32* %15, align 4
  %376 = load i32, i32* %15, align 4
  store i32 %376, i32* %16, align 4
  %377 = load i32, i32* %15, align 4
  %378 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %379 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %378, i32 0, i32 1
  store i32 %377, i32* %379, align 8
  %380 = load i32, i32* %16, align 4
  %381 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %382 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %381, i32 0, i32 2
  store i32 %380, i32* %382, align 4
  %383 = load i32, i32* %13, align 4
  %384 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %385 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %384, i32 0, i32 7
  store i32 %383, i32* %385, align 8
  %386 = load i32, i32* %13, align 4
  %387 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %388 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %387, i32 0, i32 3
  store i32 %386, i32* %388, align 8
  %389 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %390 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %389, i32 0, i32 0
  %391 = load i64, i64* %390, align 8
  %392 = load i64, i64* @DESC92C_RATEMCS8, align 8
  %393 = icmp sge i64 %391, %392
  br i1 %393, label %394, label %401

394:                                              ; preds = %367
  %395 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %396 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %395, i32 0, i32 0
  %397 = load i64, i64* %396, align 8
  %398 = load i64, i64* @DESC92C_RATEMCS15, align 8
  %399 = icmp sle i64 %397, %398
  br i1 %399, label %400, label %401

400:                                              ; preds = %394
  store i32 2, i32* %11, align 4
  br label %402

401:                                              ; preds = %394, %367
  store i32 1, i32* %11, align 4
  br label %402

402:                                              ; preds = %401, %400
  store i32 0, i32* %10, align 4
  br label %403

403:                                              ; preds = %440, %402
  %404 = load i32, i32* %10, align 4
  %405 = load i32, i32* %11, align 4
  %406 = icmp slt i32 %404, %405
  br i1 %406, label %407, label %443

407:                                              ; preds = %403
  %408 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %409 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %408, i32 0, i32 6
  %410 = load i32*, i32** %409, align 8
  %411 = load i32, i32* %10, align 4
  %412 = sext i32 %411 to i64
  %413 = getelementptr inbounds i32, i32* %410, i64 %412
  %414 = load i32, i32* %413, align 4
  %415 = call i32 @odm_evm_db_to_percentage(i32 %414)
  store i32 %415, i32* %14, align 4
  %416 = load %struct.odm_per_pkt_info*, %struct.odm_per_pkt_info** %8, align 8
  %417 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %416, i32 0, i32 1
  %418 = load i64, i64* %417, align 8
  %419 = icmp ne i64 %418, 0
  br i1 %419, label %420, label %439

420:                                              ; preds = %407
  %421 = load i32, i32* %10, align 4
  %422 = sext i32 %421 to i64
  %423 = load i64, i64* @RF_PATH_A, align 8
  %424 = icmp eq i64 %422, %423
  br i1 %424, label %425, label %430

425:                                              ; preds = %420
  %426 = load i32, i32* %14, align 4
  %427 = and i32 %426, 255
  %428 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %429 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %428, i32 0, i32 4
  store i32 %427, i32* %429, align 4
  br label %430

430:                                              ; preds = %425, %420
  %431 = load i32, i32* %14, align 4
  %432 = and i32 %431, 255
  %433 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %434 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %433, i32 0, i32 0
  %435 = load i32*, i32** %434, align 8
  %436 = load i32, i32* %10, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds i32, i32* %435, i64 %437
  store i32 %432, i32* %438, align 4
  br label %439

439:                                              ; preds = %430, %407
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %10, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %10, align 4
  br label %403

443:                                              ; preds = %403
  br label %444

444:                                              ; preds = %443, %221
  %445 = load i32, i32* %19, align 4
  %446 = icmp ne i32 %445, 0
  br i1 %446, label %447, label %454

447:                                              ; preds = %444
  %448 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %449 = load i32, i32* %15, align 4
  %450 = call i64 @odm_signal_scale_mapping(%struct.odm_dm_struct* %448, i32 %449)
  %451 = trunc i64 %450 to i32
  %452 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %453 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %452, i32 0, i32 8
  store i32 %451, i32* %453, align 4
  br label %467

454:                                              ; preds = %444
  %455 = load i32, i32* %20, align 4
  %456 = icmp ne i32 %455, 0
  br i1 %456, label %457, label %466

457:                                              ; preds = %454
  %458 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %459 = load i32, i32* %20, align 4
  %460 = load i32, i32* %18, align 4
  %461 = sdiv i32 %460, %459
  store i32 %461, i32* %18, align 4
  %462 = call i64 @odm_signal_scale_mapping(%struct.odm_dm_struct* %458, i32 %461)
  %463 = trunc i64 %462 to i32
  %464 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %6, align 8
  %465 = getelementptr inbounds %struct.odm_phy_status_info, %struct.odm_phy_status_info* %464, i32 0, i32 8
  store i32 %463, i32* %465, align 4
  br label %466

466:                                              ; preds = %457, %454
  br label %467

467:                                              ; preds = %466, %447
  %468 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %469 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %468, i32 0, i32 5
  %470 = load i32, i32* %469, align 8
  %471 = load %struct.sw_ant_switch*, %struct.sw_ant_switch** %9, align 8
  %472 = getelementptr inbounds %struct.sw_ant_switch, %struct.sw_ant_switch* %471, i32 0, i32 0
  store i32 %470, i32* %472, align 4
  %473 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %474 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %473, i32 0, i32 5
  %475 = load i32, i32* %474, align 8
  %476 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %477 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %476, i32 0, i32 3
  %478 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %477, i32 0, i32 2
  store i32 %475, i32* %478, align 8
  %479 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %480 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %479, i32 0, i32 4
  %481 = load i32, i32* %480, align 4
  %482 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %483 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %482, i32 0, i32 3
  %484 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %483, i32 0, i32 1
  store i32 %481, i32* %484, align 4
  %485 = load %struct.phy_status_rpt*, %struct.phy_status_rpt** %24, align 8
  %486 = getelementptr inbounds %struct.phy_status_rpt, %struct.phy_status_rpt* %485, i32 0, i32 3
  %487 = load i32, i32* %486, align 8
  %488 = load %struct.odm_dm_struct*, %struct.odm_dm_struct** %5, align 8
  %489 = getelementptr inbounds %struct.odm_dm_struct, %struct.odm_dm_struct* %488, i32 0, i32 3
  %490 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %489, i32 0, i32 0
  store i32 %487, i32* %490, align 8
  ret void
}

declare dso_local i32 @odm_query_rxpwrpercentage(i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @odm_evm_db_to_percentage(i32) #1

declare dso_local i64 @odm_signal_scale_mapping(%struct.odm_dm_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
