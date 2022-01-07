; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_set_ref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_g1_h264_dec.c_set_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_4__, %struct.hantro_dev* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, %struct.v4l2_h264_dpb_entry* }
%struct.TYPE_3__ = type { i32*, i32*, i32* }
%struct.v4l2_h264_dpb_entry = type { i32, i32, i32 }
%struct.hantro_dev = type { i32 }
%struct.vb2_buffer = type { i32 }

@HANTRO_H264_DPB_SIZE = common dso_local global i32 0, align 4
@V4L2_H264_DPB_ENTRY_FLAG_ACTIVE = common dso_local global i32 0, align 4
@V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM = common dso_local global i32 0, align 4
@G1_REG_VALID_REF = common dso_local global i32 0, align 4
@G1_REG_LT_REF = common dso_local global i32 0, align 4
@G1_REG_BD_P_REF_PIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hantro_ctx*)* @set_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ref(%struct.hantro_ctx* %0) #0 {
  %2 = alloca %struct.hantro_ctx*, align 8
  %3 = alloca %struct.v4l2_h264_dpb_entry*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.hantro_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vb2_buffer*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %2, align 8
  %14 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %15 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %16, align 8
  store %struct.v4l2_h264_dpb_entry* %17, %struct.v4l2_h264_dpb_entry** %3, align 8
  %18 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %18, i32 0, i32 1
  %20 = load %struct.hantro_dev*, %struct.hantro_dev** %19, align 8
  store %struct.hantro_dev* %20, %struct.hantro_dev** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  br label %21

21:                                               ; preds = %62, %1
  %22 = load i32, i32* %12, align 4
  %23 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %65

25:                                               ; preds = %21
  %26 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %26, i64 %28
  %30 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_ACTIVE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %25
  %36 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load i32, i32* %12, align 4
  %39 = sub nsw i32 %37, %38
  %40 = call i32 @BIT(i32 %39)
  %41 = load i32, i32* %9, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %35, %25
  %44 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %44, i64 %46
  %48 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %43
  %54 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %55 = sub nsw i32 %54, 1
  %56 = load i32, i32* %12, align 4
  %57 = sub nsw i32 %55, %56
  %58 = call i32 @BIT(i32 %57)
  %59 = load i32, i32* %8, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %8, align 4
  br label %61

61:                                               ; preds = %53, %43
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  br label %21

65:                                               ; preds = %21
  %66 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %67 = load i32, i32* %9, align 4
  %68 = shl i32 %67, 16
  %69 = load i32, i32* @G1_REG_VALID_REF, align 4
  %70 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %66, i32 %68, i32 %69)
  %71 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %72 = load i32, i32* %8, align 4
  %73 = shl i32 %72, 16
  %74 = load i32, i32* @G1_REG_LT_REF, align 4
  %75 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %71, i32 %73, i32 %74)
  store i32 0, i32* %12, align 4
  br label %76

76:                                               ; preds = %150, %65
  %77 = load i32, i32* %12, align 4
  %78 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %79 = icmp slt i32 %77, %78
  br i1 %79, label %80, label %153

80:                                               ; preds = %76
  store i32 0, i32* %11, align 4
  %81 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %81, i64 %83
  %85 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %100

90:                                               ; preds = %80
  %91 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %91, i64 %93
  %95 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @G1_REG_REF_PIC_REFER0_NBR(i32 %96)
  %98 = load i32, i32* %11, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %11, align 4
  br label %110

100:                                              ; preds = %80
  %101 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %102 = load i32, i32* %12, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %101, i64 %103
  %105 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @G1_REG_REF_PIC_REFER0_NBR(i32 %106)
  %108 = load i32, i32* %11, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %11, align 4
  br label %110

110:                                              ; preds = %100, %90
  %111 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %112 = load i32, i32* %12, align 4
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %111, i64 %114
  %116 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @V4L2_H264_DPB_ENTRY_FLAG_LONG_TERM, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %132

121:                                              ; preds = %110
  %122 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %123 = load i32, i32* %12, align 4
  %124 = add nsw i32 %123, 1
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %122, i64 %125
  %127 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @G1_REG_REF_PIC_REFER1_NBR(i32 %128)
  %130 = load i32, i32* %11, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %11, align 4
  br label %143

132:                                              ; preds = %110
  %133 = load %struct.v4l2_h264_dpb_entry*, %struct.v4l2_h264_dpb_entry** %3, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %133, i64 %136
  %138 = getelementptr inbounds %struct.v4l2_h264_dpb_entry, %struct.v4l2_h264_dpb_entry* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @G1_REG_REF_PIC_REFER1_NBR(i32 %139)
  %141 = load i32, i32* %11, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %11, align 4
  br label %143

143:                                              ; preds = %132, %121
  %144 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %145 = load i32, i32* %11, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sdiv i32 %146, 2
  %148 = call i32 @G1_REG_REF_PIC(i32 %147)
  %149 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %144, i32 %145, i32 %148)
  br label %150

150:                                              ; preds = %143
  %151 = load i32, i32* %12, align 4
  %152 = add nsw i32 %151, 2
  store i32 %152, i32* %12, align 4
  br label %76

153:                                              ; preds = %76
  %154 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %155 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %156, i32 0, i32 2
  %158 = load i32*, i32** %157, align 8
  store i32* %158, i32** %4, align 8
  %159 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %160 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  store i32* %163, i32** %5, align 8
  %164 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %165 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %166, i32 0, i32 0
  %168 = load i32*, i32** %167, align 8
  store i32* %168, i32** %6, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %169

169:                                              ; preds = %224, %153
  %170 = load i32, i32* %12, align 4
  %171 = icmp slt i32 %170, 15
  br i1 %171, label %172, label %227

172:                                              ; preds = %169
  %173 = load i32*, i32** %4, align 8
  %174 = load i32, i32* %12, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds i32, i32* %173, i64 %175
  %177 = load i32, i32* %176, align 4
  %178 = call i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_F0(i32 %177)
  %179 = load i32*, i32** %4, align 8
  %180 = load i32, i32* %12, align 4
  %181 = add nsw i32 %180, 1
  %182 = sext i32 %181 to i64
  %183 = getelementptr inbounds i32, i32* %179, i64 %182
  %184 = load i32, i32* %183, align 4
  %185 = call i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_F1(i32 %184)
  %186 = or i32 %178, %185
  %187 = load i32*, i32** %4, align 8
  %188 = load i32, i32* %12, align 4
  %189 = add nsw i32 %188, 2
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32, i32* %187, i64 %190
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_F2(i32 %192)
  %194 = or i32 %186, %193
  %195 = load i32*, i32** %5, align 8
  %196 = load i32, i32* %12, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32, i32* %195, i64 %197
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_B0(i32 %199)
  %201 = or i32 %194, %200
  %202 = load i32*, i32** %5, align 8
  %203 = load i32, i32* %12, align 4
  %204 = add nsw i32 %203, 1
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %202, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_B1(i32 %207)
  %209 = or i32 %201, %208
  %210 = load i32*, i32** %5, align 8
  %211 = load i32, i32* %12, align 4
  %212 = add nsw i32 %211, 2
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_B2(i32 %215)
  %217 = or i32 %209, %216
  store i32 %217, i32* %11, align 4
  %218 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %10, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %10, align 4
  %222 = call i32 @G1_REG_BD_REF_PIC(i32 %220)
  %223 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %218, i32 %219, i32 %222)
  br label %224

224:                                              ; preds = %172
  %225 = load i32, i32* %12, align 4
  %226 = add nsw i32 %225, 3
  store i32 %226, i32* %12, align 4
  br label %169

227:                                              ; preds = %169
  %228 = load i32*, i32** %4, align 8
  %229 = getelementptr inbounds i32, i32* %228, i64 15
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @G1_REG_BD_P_REF_PIC_BINIT_RLIST_F15(i32 %230)
  %232 = load i32*, i32** %5, align 8
  %233 = getelementptr inbounds i32, i32* %232, i64 15
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @G1_REG_BD_P_REF_PIC_BINIT_RLIST_B15(i32 %234)
  %236 = or i32 %231, %235
  %237 = load i32*, i32** %6, align 8
  %238 = getelementptr inbounds i32, i32* %237, i64 0
  %239 = load i32, i32* %238, align 4
  %240 = call i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F0(i32 %239)
  %241 = or i32 %236, %240
  %242 = load i32*, i32** %6, align 8
  %243 = getelementptr inbounds i32, i32* %242, i64 1
  %244 = load i32, i32* %243, align 4
  %245 = call i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F1(i32 %244)
  %246 = or i32 %241, %245
  %247 = load i32*, i32** %6, align 8
  %248 = getelementptr inbounds i32, i32* %247, i64 2
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F2(i32 %249)
  %251 = or i32 %246, %250
  %252 = load i32*, i32** %6, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 3
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F3(i32 %254)
  %256 = or i32 %251, %255
  store i32 %256, i32* %11, align 4
  %257 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %258 = load i32, i32* %11, align 4
  %259 = load i32, i32* @G1_REG_BD_P_REF_PIC, align 4
  %260 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %257, i32 %258, i32 %259)
  store i32 0, i32* %10, align 4
  store i32 4, i32* %12, align 4
  br label %261

261:                                              ; preds = %318, %227
  %262 = load i32, i32* %12, align 4
  %263 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %264 = icmp slt i32 %262, %263
  br i1 %264, label %265, label %321

265:                                              ; preds = %261
  %266 = load i32*, i32** %6, align 8
  %267 = load i32, i32* %12, align 4
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @G1_REG_FWD_PIC_PINIT_RLIST_F0(i32 %270)
  %272 = load i32*, i32** %6, align 8
  %273 = load i32, i32* %12, align 4
  %274 = add nsw i32 %273, 1
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds i32, i32* %272, i64 %275
  %277 = load i32, i32* %276, align 4
  %278 = call i32 @G1_REG_FWD_PIC_PINIT_RLIST_F1(i32 %277)
  %279 = or i32 %271, %278
  %280 = load i32*, i32** %6, align 8
  %281 = load i32, i32* %12, align 4
  %282 = add nsw i32 %281, 2
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32, i32* %280, i64 %283
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @G1_REG_FWD_PIC_PINIT_RLIST_F2(i32 %285)
  %287 = or i32 %279, %286
  %288 = load i32*, i32** %6, align 8
  %289 = load i32, i32* %12, align 4
  %290 = add nsw i32 %289, 3
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %288, i64 %291
  %293 = load i32, i32* %292, align 4
  %294 = call i32 @G1_REG_FWD_PIC_PINIT_RLIST_F3(i32 %293)
  %295 = or i32 %287, %294
  %296 = load i32*, i32** %6, align 8
  %297 = load i32, i32* %12, align 4
  %298 = add nsw i32 %297, 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds i32, i32* %296, i64 %299
  %301 = load i32, i32* %300, align 4
  %302 = call i32 @G1_REG_FWD_PIC_PINIT_RLIST_F4(i32 %301)
  %303 = or i32 %295, %302
  %304 = load i32*, i32** %6, align 8
  %305 = load i32, i32* %12, align 4
  %306 = add nsw i32 %305, 5
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds i32, i32* %304, i64 %307
  %309 = load i32, i32* %308, align 4
  %310 = call i32 @G1_REG_FWD_PIC_PINIT_RLIST_F5(i32 %309)
  %311 = or i32 %303, %310
  store i32 %311, i32* %11, align 4
  %312 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %313 = load i32, i32* %11, align 4
  %314 = load i32, i32* %10, align 4
  %315 = add nsw i32 %314, 1
  store i32 %315, i32* %10, align 4
  %316 = call i32 @G1_REG_FWD_PIC(i32 %314)
  %317 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %312, i32 %313, i32 %316)
  br label %318

318:                                              ; preds = %265
  %319 = load i32, i32* %12, align 4
  %320 = add nsw i32 %319, 6
  store i32 %320, i32* %12, align 4
  br label %261

321:                                              ; preds = %261
  store i32 0, i32* %12, align 4
  br label %322

322:                                              ; preds = %336, %321
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* @HANTRO_H264_DPB_SIZE, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %339

326:                                              ; preds = %322
  %327 = load %struct.hantro_ctx*, %struct.hantro_ctx** %2, align 8
  %328 = load i32, i32* %12, align 4
  %329 = call %struct.vb2_buffer* @hantro_h264_get_ref_buf(%struct.hantro_ctx* %327, i32 %328)
  store %struct.vb2_buffer* %329, %struct.vb2_buffer** %13, align 8
  %330 = load %struct.hantro_dev*, %struct.hantro_dev** %7, align 8
  %331 = load %struct.vb2_buffer*, %struct.vb2_buffer** %13, align 8
  %332 = call i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer* %331, i32 0)
  %333 = load i32, i32* %12, align 4
  %334 = call i32 @G1_REG_ADDR_REF(i32 %333)
  %335 = call i32 @vdpu_write_relaxed(%struct.hantro_dev* %330, i32 %332, i32 %334)
  br label %336

336:                                              ; preds = %326
  %337 = load i32, i32* %12, align 4
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %12, align 4
  br label %322

339:                                              ; preds = %322
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @vdpu_write_relaxed(%struct.hantro_dev*, i32, i32) #1

declare dso_local i32 @G1_REG_REF_PIC_REFER0_NBR(i32) #1

declare dso_local i32 @G1_REG_REF_PIC_REFER1_NBR(i32) #1

declare dso_local i32 @G1_REG_REF_PIC(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_F0(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_F1(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_F2(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_B0(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_B1(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC_BINIT_RLIST_B2(i32) #1

declare dso_local i32 @G1_REG_BD_REF_PIC(i32) #1

declare dso_local i32 @G1_REG_BD_P_REF_PIC_BINIT_RLIST_F15(i32) #1

declare dso_local i32 @G1_REG_BD_P_REF_PIC_BINIT_RLIST_B15(i32) #1

declare dso_local i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F0(i32) #1

declare dso_local i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F1(i32) #1

declare dso_local i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F2(i32) #1

declare dso_local i32 @G1_REG_BD_P_REF_PIC_PINIT_RLIST_F3(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC_PINIT_RLIST_F0(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC_PINIT_RLIST_F1(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC_PINIT_RLIST_F2(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC_PINIT_RLIST_F3(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC_PINIT_RLIST_F4(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC_PINIT_RLIST_F5(i32) #1

declare dso_local i32 @G1_REG_FWD_PIC(i32) #1

declare dso_local %struct.vb2_buffer* @hantro_h264_get_ref_buf(%struct.hantro_ctx*, i32) #1

declare dso_local i32 @vb2_dma_contig_plane_dma_addr(%struct.vb2_buffer*, i32) #1

declare dso_local i32 @G1_REG_ADDR_REF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
