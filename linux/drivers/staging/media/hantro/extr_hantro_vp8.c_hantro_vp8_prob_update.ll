; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_vp8.c_hantro_vp8_prob_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/hantro/extr_hantro_vp8.c_hantro_vp8_prob_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hantro_ctx = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64* }
%struct.v4l2_ctrl_vp8_frame_header = type { %struct.TYPE_6__, i64, i64, i64, i64, %struct.v4l2_vp8_entropy_header }
%struct.TYPE_6__ = type { i64* }
%struct.v4l2_vp8_entropy_header = type { i64****, i64**, i64*, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hantro_vp8_prob_update(%struct.hantro_ctx* %0, %struct.v4l2_ctrl_vp8_frame_header* %1) #0 {
  %3 = alloca %struct.hantro_ctx*, align 8
  %4 = alloca %struct.v4l2_ctrl_vp8_frame_header*, align 8
  %5 = alloca %struct.v4l2_vp8_entropy_header*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  store %struct.hantro_ctx* %0, %struct.hantro_ctx** %3, align 8
  store %struct.v4l2_ctrl_vp8_frame_header* %1, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %10 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %11 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %10, i32 0, i32 5
  store %struct.v4l2_vp8_entropy_header* %11, %struct.v4l2_vp8_entropy_header** %5, align 8
  %12 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %13 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  store i64* %16, i64** %9, align 8
  %17 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %18 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %9, align 8
  %21 = getelementptr inbounds i64, i64* %20, i64 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %23 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %9, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 1
  store i64 %24, i64* %26, align 8
  %27 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = load i64*, i64** %9, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 2
  store i64 %29, i64* %31, align 8
  %32 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %33 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64*, i64** %9, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 3
  store i64 %34, i64* %36, align 8
  %37 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %38 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64*, i64** %9, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 4
  store i64 %42, i64* %44, align 8
  %45 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 1
  %50 = load i64, i64* %49, align 8
  %51 = load i64*, i64** %9, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 5
  store i64 %50, i64* %52, align 8
  %53 = load %struct.v4l2_ctrl_vp8_frame_header*, %struct.v4l2_ctrl_vp8_frame_header** %4, align 8
  %54 = getelementptr inbounds %struct.v4l2_ctrl_vp8_frame_header, %struct.v4l2_ctrl_vp8_frame_header* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 6
  store i64 %58, i64* %60, align 8
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 7
  store i64 0, i64* %62, align 8
  %63 = load i64*, i64** %9, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 8
  store i64* %64, i64** %9, align 8
  %65 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %66 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %65, i32 0, i32 3
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64*, i64** %9, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 0
  store i64 %69, i64* %71, align 8
  %72 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %73 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %72, i32 0, i32 3
  %74 = load i64*, i64** %73, align 8
  %75 = getelementptr inbounds i64, i64* %74, i64 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64*, i64** %9, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 1
  store i64 %76, i64* %78, align 8
  %79 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %80 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %79, i32 0, i32 3
  %81 = load i64*, i64** %80, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 2
  store i64 %83, i64* %85, align 8
  %86 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %87 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %86, i32 0, i32 3
  %88 = load i64*, i64** %87, align 8
  %89 = getelementptr inbounds i64, i64* %88, i64 3
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 3
  store i64 %90, i64* %92, align 8
  %93 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %94 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = getelementptr inbounds i64, i64* %95, i64 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64*, i64** %9, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 4
  store i64 %97, i64* %99, align 8
  %100 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %101 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %100, i32 0, i32 2
  %102 = load i64*, i64** %101, align 8
  %103 = getelementptr inbounds i64, i64* %102, i64 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64*, i64** %9, align 8
  %106 = getelementptr inbounds i64, i64* %105, i64 5
  store i64 %104, i64* %106, align 8
  %107 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %108 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %107, i32 0, i32 2
  %109 = load i64*, i64** %108, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64*, i64** %9, align 8
  %113 = getelementptr inbounds i64, i64* %112, i64 6
  store i64 %111, i64* %113, align 8
  %114 = load i64*, i64** %9, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 7
  store i64 0, i64* %115, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 8
  store i64* %117, i64** %9, align 8
  %118 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %119 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %118, i32 0, i32 1
  %120 = load i64**, i64*** %119, align 8
  %121 = getelementptr inbounds i64*, i64** %120, i64 0
  %122 = load i64*, i64** %121, align 8
  %123 = getelementptr inbounds i64, i64* %122, i64 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %128 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %127, i32 0, i32 1
  %129 = load i64**, i64*** %128, align 8
  %130 = getelementptr inbounds i64*, i64** %129, i64 1
  %131 = load i64*, i64** %130, align 8
  %132 = getelementptr inbounds i64, i64* %131, i64 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 1
  store i64 %133, i64* %135, align 8
  %136 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %137 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %136, i32 0, i32 1
  %138 = load i64**, i64*** %137, align 8
  %139 = getelementptr inbounds i64*, i64** %138, i64 0
  %140 = load i64*, i64** %139, align 8
  %141 = getelementptr inbounds i64, i64* %140, i64 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64*, i64** %9, align 8
  %144 = getelementptr inbounds i64, i64* %143, i64 2
  store i64 %142, i64* %144, align 8
  %145 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %146 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %145, i32 0, i32 1
  %147 = load i64**, i64*** %146, align 8
  %148 = getelementptr inbounds i64*, i64** %147, i64 1
  %149 = load i64*, i64** %148, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64*, i64** %9, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 3
  store i64 %151, i64* %153, align 8
  %154 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %155 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %154, i32 0, i32 1
  %156 = load i64**, i64*** %155, align 8
  %157 = getelementptr inbounds i64*, i64** %156, i64 0
  %158 = load i64*, i64** %157, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 17
  %160 = load i64, i64* %159, align 8
  %161 = load i64*, i64** %9, align 8
  %162 = getelementptr inbounds i64, i64* %161, i64 4
  store i64 %160, i64* %162, align 8
  %163 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %164 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %163, i32 0, i32 1
  %165 = load i64**, i64*** %164, align 8
  %166 = getelementptr inbounds i64*, i64** %165, i64 0
  %167 = load i64*, i64** %166, align 8
  %168 = getelementptr inbounds i64, i64* %167, i64 18
  %169 = load i64, i64* %168, align 8
  %170 = load i64*, i64** %9, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 5
  store i64 %169, i64* %171, align 8
  %172 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %173 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %172, i32 0, i32 1
  %174 = load i64**, i64*** %173, align 8
  %175 = getelementptr inbounds i64*, i64** %174, i64 1
  %176 = load i64*, i64** %175, align 8
  %177 = getelementptr inbounds i64, i64* %176, i64 17
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %9, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 6
  store i64 %178, i64* %180, align 8
  %181 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %182 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %181, i32 0, i32 1
  %183 = load i64**, i64*** %182, align 8
  %184 = getelementptr inbounds i64*, i64** %183, i64 1
  %185 = load i64*, i64** %184, align 8
  %186 = getelementptr inbounds i64, i64* %185, i64 18
  %187 = load i64, i64* %186, align 8
  %188 = load i64*, i64** %9, align 8
  %189 = getelementptr inbounds i64, i64* %188, i64 7
  store i64 %187, i64* %189, align 8
  %190 = load i64*, i64** %9, align 8
  %191 = getelementptr inbounds i64, i64* %190, i64 8
  store i64* %191, i64** %9, align 8
  store i32 0, i32* %6, align 4
  br label %192

192:                                              ; preds = %266, %2
  %193 = load i32, i32* %6, align 4
  %194 = icmp slt i32 %193, 2
  br i1 %194, label %195, label %269

195:                                              ; preds = %192
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %262, %195
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 8
  br i1 %198, label %199, label %265

199:                                              ; preds = %196
  %200 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %201 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %200, i32 0, i32 1
  %202 = load i64**, i64*** %201, align 8
  %203 = load i32, i32* %6, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i64*, i64** %202, i64 %204
  %206 = load i64*, i64** %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = add nsw i32 %207, 9
  %209 = add nsw i32 %208, 0
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i64, i64* %206, i64 %210
  %212 = load i64, i64* %211, align 8
  %213 = load i64*, i64** %9, align 8
  %214 = getelementptr inbounds i64, i64* %213, i64 0
  store i64 %212, i64* %214, align 8
  %215 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %216 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %215, i32 0, i32 1
  %217 = load i64**, i64*** %216, align 8
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i64*, i64** %217, i64 %219
  %221 = load i64*, i64** %220, align 8
  %222 = load i32, i32* %7, align 4
  %223 = add nsw i32 %222, 9
  %224 = add nsw i32 %223, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds i64, i64* %221, i64 %225
  %227 = load i64, i64* %226, align 8
  %228 = load i64*, i64** %9, align 8
  %229 = getelementptr inbounds i64, i64* %228, i64 1
  store i64 %227, i64* %229, align 8
  %230 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %231 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %230, i32 0, i32 1
  %232 = load i64**, i64*** %231, align 8
  %233 = load i32, i32* %6, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds i64*, i64** %232, i64 %234
  %236 = load i64*, i64** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = add nsw i32 %237, 9
  %239 = add nsw i32 %238, 2
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i64, i64* %236, i64 %240
  %242 = load i64, i64* %241, align 8
  %243 = load i64*, i64** %9, align 8
  %244 = getelementptr inbounds i64, i64* %243, i64 2
  store i64 %242, i64* %244, align 8
  %245 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %246 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %245, i32 0, i32 1
  %247 = load i64**, i64*** %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds i64*, i64** %247, i64 %249
  %251 = load i64*, i64** %250, align 8
  %252 = load i32, i32* %7, align 4
  %253 = add nsw i32 %252, 9
  %254 = add nsw i32 %253, 3
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds i64, i64* %251, i64 %255
  %257 = load i64, i64* %256, align 8
  %258 = load i64*, i64** %9, align 8
  %259 = getelementptr inbounds i64, i64* %258, i64 3
  store i64 %257, i64* %259, align 8
  %260 = load i64*, i64** %9, align 8
  %261 = getelementptr inbounds i64, i64* %260, i64 4
  store i64* %261, i64** %9, align 8
  br label %262

262:                                              ; preds = %199
  %263 = load i32, i32* %7, align 4
  %264 = add nsw i32 %263, 4
  store i32 %264, i32* %7, align 4
  br label %196

265:                                              ; preds = %196
  br label %266

266:                                              ; preds = %265
  %267 = load i32, i32* %6, align 4
  %268 = add nsw i32 %267, 1
  store i32 %268, i32* %6, align 4
  br label %192

269:                                              ; preds = %192
  store i32 0, i32* %6, align 4
  br label %270

270:                                              ; preds = %355, %269
  %271 = load i32, i32* %6, align 4
  %272 = icmp slt i32 %271, 2
  br i1 %272, label %273, label %358

273:                                              ; preds = %270
  %274 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %275 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %274, i32 0, i32 1
  %276 = load i64**, i64*** %275, align 8
  %277 = load i32, i32* %6, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds i64*, i64** %276, i64 %278
  %280 = load i64*, i64** %279, align 8
  %281 = getelementptr inbounds i64, i64* %280, i64 2
  %282 = load i64, i64* %281, align 8
  %283 = load i64*, i64** %9, align 8
  %284 = getelementptr inbounds i64, i64* %283, i64 0
  store i64 %282, i64* %284, align 8
  %285 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %286 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %285, i32 0, i32 1
  %287 = load i64**, i64*** %286, align 8
  %288 = load i32, i32* %6, align 4
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds i64*, i64** %287, i64 %289
  %291 = load i64*, i64** %290, align 8
  %292 = getelementptr inbounds i64, i64* %291, i64 3
  %293 = load i64, i64* %292, align 8
  %294 = load i64*, i64** %9, align 8
  %295 = getelementptr inbounds i64, i64* %294, i64 1
  store i64 %293, i64* %295, align 8
  %296 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %297 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %296, i32 0, i32 1
  %298 = load i64**, i64*** %297, align 8
  %299 = load i32, i32* %6, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i64*, i64** %298, i64 %300
  %302 = load i64*, i64** %301, align 8
  %303 = getelementptr inbounds i64, i64* %302, i64 4
  %304 = load i64, i64* %303, align 8
  %305 = load i64*, i64** %9, align 8
  %306 = getelementptr inbounds i64, i64* %305, i64 2
  store i64 %304, i64* %306, align 8
  %307 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %308 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %307, i32 0, i32 1
  %309 = load i64**, i64*** %308, align 8
  %310 = load i32, i32* %6, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i64*, i64** %309, i64 %311
  %313 = load i64*, i64** %312, align 8
  %314 = getelementptr inbounds i64, i64* %313, i64 5
  %315 = load i64, i64* %314, align 8
  %316 = load i64*, i64** %9, align 8
  %317 = getelementptr inbounds i64, i64* %316, i64 3
  store i64 %315, i64* %317, align 8
  %318 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %319 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %318, i32 0, i32 1
  %320 = load i64**, i64*** %319, align 8
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64*, i64** %320, i64 %322
  %324 = load i64*, i64** %323, align 8
  %325 = getelementptr inbounds i64, i64* %324, i64 6
  %326 = load i64, i64* %325, align 8
  %327 = load i64*, i64** %9, align 8
  %328 = getelementptr inbounds i64, i64* %327, i64 4
  store i64 %326, i64* %328, align 8
  %329 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %330 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %329, i32 0, i32 1
  %331 = load i64**, i64*** %330, align 8
  %332 = load i32, i32* %6, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64*, i64** %331, i64 %333
  %335 = load i64*, i64** %334, align 8
  %336 = getelementptr inbounds i64, i64* %335, i64 7
  %337 = load i64, i64* %336, align 8
  %338 = load i64*, i64** %9, align 8
  %339 = getelementptr inbounds i64, i64* %338, i64 5
  store i64 %337, i64* %339, align 8
  %340 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %341 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %340, i32 0, i32 1
  %342 = load i64**, i64*** %341, align 8
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds i64*, i64** %342, i64 %344
  %346 = load i64*, i64** %345, align 8
  %347 = getelementptr inbounds i64, i64* %346, i64 8
  %348 = load i64, i64* %347, align 8
  %349 = load i64*, i64** %9, align 8
  %350 = getelementptr inbounds i64, i64* %349, i64 6
  store i64 %348, i64* %350, align 8
  %351 = load i64*, i64** %9, align 8
  %352 = getelementptr inbounds i64, i64* %351, i64 7
  store i64 0, i64* %352, align 8
  %353 = load i64*, i64** %9, align 8
  %354 = getelementptr inbounds i64, i64* %353, i64 8
  store i64* %354, i64** %9, align 8
  br label %355

355:                                              ; preds = %273
  %356 = load i32, i32* %6, align 4
  %357 = add nsw i32 %356, 1
  store i32 %357, i32* %6, align 4
  br label %270

358:                                              ; preds = %270
  %359 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %360 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %359, i32 0, i32 0
  %361 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %360, i32 0, i32 0
  %362 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %361, i32 0, i32 0
  %363 = load i64*, i64** %362, align 8
  store i64* %363, i64** %9, align 8
  %364 = load i64*, i64** %9, align 8
  %365 = getelementptr inbounds i64, i64* %364, i64 56
  store i64* %365, i64** %9, align 8
  store i32 0, i32* %6, align 4
  br label %366

366:                                              ; preds = %464, %358
  %367 = load i32, i32* %6, align 4
  %368 = icmp slt i32 %367, 4
  br i1 %368, label %369, label %467

369:                                              ; preds = %366
  store i32 0, i32* %7, align 4
  br label %370

370:                                              ; preds = %460, %369
  %371 = load i32, i32* %7, align 4
  %372 = icmp slt i32 %371, 8
  br i1 %372, label %373, label %463

373:                                              ; preds = %370
  store i32 0, i32* %8, align 4
  br label %374

374:                                              ; preds = %456, %373
  %375 = load i32, i32* %8, align 4
  %376 = icmp slt i32 %375, 3
  br i1 %376, label %377, label %459

377:                                              ; preds = %374
  %378 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %379 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %378, i32 0, i32 0
  %380 = load i64****, i64***** %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i64***, i64**** %380, i64 %382
  %384 = load i64***, i64**** %383, align 8
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i64**, i64*** %384, i64 %386
  %388 = load i64**, i64*** %387, align 8
  %389 = load i32, i32* %8, align 4
  %390 = sext i32 %389 to i64
  %391 = getelementptr inbounds i64*, i64** %388, i64 %390
  %392 = load i64*, i64** %391, align 8
  %393 = getelementptr inbounds i64, i64* %392, i64 0
  %394 = load i64, i64* %393, align 8
  %395 = load i64*, i64** %9, align 8
  %396 = getelementptr inbounds i64, i64* %395, i64 0
  store i64 %394, i64* %396, align 8
  %397 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %398 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %397, i32 0, i32 0
  %399 = load i64****, i64***** %398, align 8
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds i64***, i64**** %399, i64 %401
  %403 = load i64***, i64**** %402, align 8
  %404 = load i32, i32* %7, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds i64**, i64*** %403, i64 %405
  %407 = load i64**, i64*** %406, align 8
  %408 = load i32, i32* %8, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds i64*, i64** %407, i64 %409
  %411 = load i64*, i64** %410, align 8
  %412 = getelementptr inbounds i64, i64* %411, i64 1
  %413 = load i64, i64* %412, align 8
  %414 = load i64*, i64** %9, align 8
  %415 = getelementptr inbounds i64, i64* %414, i64 1
  store i64 %413, i64* %415, align 8
  %416 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %417 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %416, i32 0, i32 0
  %418 = load i64****, i64***** %417, align 8
  %419 = load i32, i32* %6, align 4
  %420 = sext i32 %419 to i64
  %421 = getelementptr inbounds i64***, i64**** %418, i64 %420
  %422 = load i64***, i64**** %421, align 8
  %423 = load i32, i32* %7, align 4
  %424 = sext i32 %423 to i64
  %425 = getelementptr inbounds i64**, i64*** %422, i64 %424
  %426 = load i64**, i64*** %425, align 8
  %427 = load i32, i32* %8, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i64*, i64** %426, i64 %428
  %430 = load i64*, i64** %429, align 8
  %431 = getelementptr inbounds i64, i64* %430, i64 2
  %432 = load i64, i64* %431, align 8
  %433 = load i64*, i64** %9, align 8
  %434 = getelementptr inbounds i64, i64* %433, i64 2
  store i64 %432, i64* %434, align 8
  %435 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %436 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %435, i32 0, i32 0
  %437 = load i64****, i64***** %436, align 8
  %438 = load i32, i32* %6, align 4
  %439 = sext i32 %438 to i64
  %440 = getelementptr inbounds i64***, i64**** %437, i64 %439
  %441 = load i64***, i64**** %440, align 8
  %442 = load i32, i32* %7, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds i64**, i64*** %441, i64 %443
  %445 = load i64**, i64*** %444, align 8
  %446 = load i32, i32* %8, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds i64*, i64** %445, i64 %447
  %449 = load i64*, i64** %448, align 8
  %450 = getelementptr inbounds i64, i64* %449, i64 3
  %451 = load i64, i64* %450, align 8
  %452 = load i64*, i64** %9, align 8
  %453 = getelementptr inbounds i64, i64* %452, i64 3
  store i64 %451, i64* %453, align 8
  %454 = load i64*, i64** %9, align 8
  %455 = getelementptr inbounds i64, i64* %454, i64 4
  store i64* %455, i64** %9, align 8
  br label %456

456:                                              ; preds = %377
  %457 = load i32, i32* %8, align 4
  %458 = add nsw i32 %457, 1
  store i32 %458, i32* %8, align 4
  br label %374

459:                                              ; preds = %374
  br label %460

460:                                              ; preds = %459
  %461 = load i32, i32* %7, align 4
  %462 = add nsw i32 %461, 1
  store i32 %462, i32* %7, align 4
  br label %370

463:                                              ; preds = %370
  br label %464

464:                                              ; preds = %463
  %465 = load i32, i32* %6, align 4
  %466 = add nsw i32 %465, 1
  store i32 %466, i32* %6, align 4
  br label %366

467:                                              ; preds = %366
  %468 = load %struct.hantro_ctx*, %struct.hantro_ctx** %3, align 8
  %469 = getelementptr inbounds %struct.hantro_ctx, %struct.hantro_ctx* %468, i32 0, i32 0
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 0
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 0
  %472 = load i64*, i64** %471, align 8
  store i64* %472, i64** %9, align 8
  %473 = load i64*, i64** %9, align 8
  %474 = getelementptr inbounds i64, i64* %473, i64 440
  store i64* %474, i64** %9, align 8
  store i32 0, i32* %6, align 4
  br label %475

475:                                              ; preds = %632, %467
  %476 = load i32, i32* %6, align 4
  %477 = icmp slt i32 %476, 4
  br i1 %477, label %478, label %635

478:                                              ; preds = %475
  store i32 0, i32* %7, align 4
  br label %479

479:                                              ; preds = %628, %478
  %480 = load i32, i32* %7, align 4
  %481 = icmp slt i32 %480, 8
  br i1 %481, label %482, label %631

482:                                              ; preds = %479
  store i32 0, i32* %8, align 4
  br label %483

483:                                              ; preds = %624, %482
  %484 = load i32, i32* %8, align 4
  %485 = icmp slt i32 %484, 3
  br i1 %485, label %486, label %627

486:                                              ; preds = %483
  %487 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %488 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %487, i32 0, i32 0
  %489 = load i64****, i64***** %488, align 8
  %490 = load i32, i32* %6, align 4
  %491 = sext i32 %490 to i64
  %492 = getelementptr inbounds i64***, i64**** %489, i64 %491
  %493 = load i64***, i64**** %492, align 8
  %494 = load i32, i32* %7, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds i64**, i64*** %493, i64 %495
  %497 = load i64**, i64*** %496, align 8
  %498 = load i32, i32* %8, align 4
  %499 = sext i32 %498 to i64
  %500 = getelementptr inbounds i64*, i64** %497, i64 %499
  %501 = load i64*, i64** %500, align 8
  %502 = getelementptr inbounds i64, i64* %501, i64 4
  %503 = load i64, i64* %502, align 8
  %504 = load i64*, i64** %9, align 8
  %505 = getelementptr inbounds i64, i64* %504, i64 0
  store i64 %503, i64* %505, align 8
  %506 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %507 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %506, i32 0, i32 0
  %508 = load i64****, i64***** %507, align 8
  %509 = load i32, i32* %6, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds i64***, i64**** %508, i64 %510
  %512 = load i64***, i64**** %511, align 8
  %513 = load i32, i32* %7, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds i64**, i64*** %512, i64 %514
  %516 = load i64**, i64*** %515, align 8
  %517 = load i32, i32* %8, align 4
  %518 = sext i32 %517 to i64
  %519 = getelementptr inbounds i64*, i64** %516, i64 %518
  %520 = load i64*, i64** %519, align 8
  %521 = getelementptr inbounds i64, i64* %520, i64 5
  %522 = load i64, i64* %521, align 8
  %523 = load i64*, i64** %9, align 8
  %524 = getelementptr inbounds i64, i64* %523, i64 1
  store i64 %522, i64* %524, align 8
  %525 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %526 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %525, i32 0, i32 0
  %527 = load i64****, i64***** %526, align 8
  %528 = load i32, i32* %6, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds i64***, i64**** %527, i64 %529
  %531 = load i64***, i64**** %530, align 8
  %532 = load i32, i32* %7, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds i64**, i64*** %531, i64 %533
  %535 = load i64**, i64*** %534, align 8
  %536 = load i32, i32* %8, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds i64*, i64** %535, i64 %537
  %539 = load i64*, i64** %538, align 8
  %540 = getelementptr inbounds i64, i64* %539, i64 6
  %541 = load i64, i64* %540, align 8
  %542 = load i64*, i64** %9, align 8
  %543 = getelementptr inbounds i64, i64* %542, i64 2
  store i64 %541, i64* %543, align 8
  %544 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %545 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %544, i32 0, i32 0
  %546 = load i64****, i64***** %545, align 8
  %547 = load i32, i32* %6, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i64***, i64**** %546, i64 %548
  %550 = load i64***, i64**** %549, align 8
  %551 = load i32, i32* %7, align 4
  %552 = sext i32 %551 to i64
  %553 = getelementptr inbounds i64**, i64*** %550, i64 %552
  %554 = load i64**, i64*** %553, align 8
  %555 = load i32, i32* %8, align 4
  %556 = sext i32 %555 to i64
  %557 = getelementptr inbounds i64*, i64** %554, i64 %556
  %558 = load i64*, i64** %557, align 8
  %559 = getelementptr inbounds i64, i64* %558, i64 7
  %560 = load i64, i64* %559, align 8
  %561 = load i64*, i64** %9, align 8
  %562 = getelementptr inbounds i64, i64* %561, i64 3
  store i64 %560, i64* %562, align 8
  %563 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %564 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %563, i32 0, i32 0
  %565 = load i64****, i64***** %564, align 8
  %566 = load i32, i32* %6, align 4
  %567 = sext i32 %566 to i64
  %568 = getelementptr inbounds i64***, i64**** %565, i64 %567
  %569 = load i64***, i64**** %568, align 8
  %570 = load i32, i32* %7, align 4
  %571 = sext i32 %570 to i64
  %572 = getelementptr inbounds i64**, i64*** %569, i64 %571
  %573 = load i64**, i64*** %572, align 8
  %574 = load i32, i32* %8, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds i64*, i64** %573, i64 %575
  %577 = load i64*, i64** %576, align 8
  %578 = getelementptr inbounds i64, i64* %577, i64 8
  %579 = load i64, i64* %578, align 8
  %580 = load i64*, i64** %9, align 8
  %581 = getelementptr inbounds i64, i64* %580, i64 4
  store i64 %579, i64* %581, align 8
  %582 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %583 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %582, i32 0, i32 0
  %584 = load i64****, i64***** %583, align 8
  %585 = load i32, i32* %6, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds i64***, i64**** %584, i64 %586
  %588 = load i64***, i64**** %587, align 8
  %589 = load i32, i32* %7, align 4
  %590 = sext i32 %589 to i64
  %591 = getelementptr inbounds i64**, i64*** %588, i64 %590
  %592 = load i64**, i64*** %591, align 8
  %593 = load i32, i32* %8, align 4
  %594 = sext i32 %593 to i64
  %595 = getelementptr inbounds i64*, i64** %592, i64 %594
  %596 = load i64*, i64** %595, align 8
  %597 = getelementptr inbounds i64, i64* %596, i64 9
  %598 = load i64, i64* %597, align 8
  %599 = load i64*, i64** %9, align 8
  %600 = getelementptr inbounds i64, i64* %599, i64 5
  store i64 %598, i64* %600, align 8
  %601 = load %struct.v4l2_vp8_entropy_header*, %struct.v4l2_vp8_entropy_header** %5, align 8
  %602 = getelementptr inbounds %struct.v4l2_vp8_entropy_header, %struct.v4l2_vp8_entropy_header* %601, i32 0, i32 0
  %603 = load i64****, i64***** %602, align 8
  %604 = load i32, i32* %6, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds i64***, i64**** %603, i64 %605
  %607 = load i64***, i64**** %606, align 8
  %608 = load i32, i32* %7, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds i64**, i64*** %607, i64 %609
  %611 = load i64**, i64*** %610, align 8
  %612 = load i32, i32* %8, align 4
  %613 = sext i32 %612 to i64
  %614 = getelementptr inbounds i64*, i64** %611, i64 %613
  %615 = load i64*, i64** %614, align 8
  %616 = getelementptr inbounds i64, i64* %615, i64 10
  %617 = load i64, i64* %616, align 8
  %618 = load i64*, i64** %9, align 8
  %619 = getelementptr inbounds i64, i64* %618, i64 6
  store i64 %617, i64* %619, align 8
  %620 = load i64*, i64** %9, align 8
  %621 = getelementptr inbounds i64, i64* %620, i64 7
  store i64 0, i64* %621, align 8
  %622 = load i64*, i64** %9, align 8
  %623 = getelementptr inbounds i64, i64* %622, i64 8
  store i64* %623, i64** %9, align 8
  br label %624

624:                                              ; preds = %486
  %625 = load i32, i32* %8, align 4
  %626 = add nsw i32 %625, 1
  store i32 %626, i32* %8, align 4
  br label %483

627:                                              ; preds = %483
  br label %628

628:                                              ; preds = %627
  %629 = load i32, i32* %7, align 4
  %630 = add nsw i32 %629, 1
  store i32 %630, i32* %7, align 4
  br label %479

631:                                              ; preds = %479
  br label %632

632:                                              ; preds = %631
  %633 = load i32, i32* %6, align 4
  %634 = add nsw i32 %633, 1
  store i32 %634, i32* %6, align 4
  br label %475

635:                                              ; preds = %475
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
