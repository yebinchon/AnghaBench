; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_build_sg_list_prd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_io.c_esas2r_build_sg_list_prd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.esas2r_target* }
%struct.esas2r_target = type { i64, i32, i32, i32, i32 }
%struct.esas2r_sg_context = type { i32, %struct.TYPE_8__, %struct.esas2r_request* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.atto_physical_region_description*, i32*, i64 }
%struct.atto_physical_region_description = type { i32 }
%struct.TYPE_6__ = type { i64 }
%struct.esas2r_request = type { i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32*, i64, i64 }

@VDA_FUNC_SCSI = common dso_local global i64 0, align 8
@TS_PRESENT = common dso_local global i64 0, align 8
@TF_PASS_THRU = common dso_local global i32 0, align 4
@RF_1ST_IBLK_BASE = common dso_local global i32 0, align 4
@sgl_page_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @esas2r_build_sg_list_prd(%struct.esas2r_adapter* %0, %struct.esas2r_sg_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_sg_context*, align 8
  %6 = alloca %struct.esas2r_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.esas2r_target*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.atto_physical_region_description*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_sg_context* %1, %struct.esas2r_sg_context** %5, align 8
  %15 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %16 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %15, i32 0, i32 2
  %17 = load %struct.esas2r_request*, %struct.esas2r_request** %16, align 8
  store %struct.esas2r_request* %17, %struct.esas2r_request** %6, align 8
  %18 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %19 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %7, align 4
  %21 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %22 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %21, i32 0, i32 0
  %23 = load %struct.esas2r_target*, %struct.esas2r_target** %22, align 8
  %24 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %25 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %23, i64 %27
  store %struct.esas2r_target* %28, %struct.esas2r_target** %8, align 8
  store i32 0, i32* %9, align 4
  %29 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %30 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %29, i32 0, i32 2
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32* %35, i32** %12, align 8
  %36 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %37 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %36, i32 0, i32 2
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @VDA_FUNC_SCSI, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %168

44:                                               ; preds = %2
  %45 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %46 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TS_PRESENT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %168

50:                                               ; preds = %44
  %51 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %52 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @TF_PASS_THRU, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %168, label %57

57:                                               ; preds = %50
  store i32 0, i32* %13, align 4
  %58 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %59 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %58, i32 0, i32 2
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 0
  %65 = load i32, i32* %64, align 4
  switch i32 %65, label %112 [
    i32 133, label %66
    i32 129, label %66
    i32 134, label %82
    i32 130, label %82
    i32 135, label %82
    i32 131, label %82
    i32 132, label %98
    i32 128, label %98
  ]

66:                                               ; preds = %57, %57
  %67 = load i32*, i32** %12, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 9
  %69 = load i32, i32* %68, align 4
  %70 = load i32*, i32** %12, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 8
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @MAKEWORD(i32 %69, i32 %72)
  %74 = load i32*, i32** %12, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 7
  %76 = load i32, i32* %75, align 4
  %77 = load i32*, i32** %12, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 6
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @MAKEWORD(i32 %76, i32 %79)
  %81 = call i32 @MAKEDWORD(i32 %73, i32 %80)
  store i32 %81, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %113

82:                                               ; preds = %57, %57, %57, %57
  %83 = load i32*, i32** %12, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 5
  %85 = load i32, i32* %84, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @MAKEWORD(i32 %85, i32 %88)
  %90 = load i32*, i32** %12, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 3
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %12, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @MAKEWORD(i32 %92, i32 %95)
  %97 = call i32 @MAKEDWORD(i32 %89, i32 %96)
  store i32 %97, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %113

98:                                               ; preds = %57, %57
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 2
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @MAKEWORD(i32 %101, i32 %104)
  %106 = load i32*, i32** %12, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  %108 = load i32, i32* %107, align 4
  %109 = and i32 %108, 31
  %110 = call i32 @MAKEWORD(i32 %109, i32 0)
  %111 = call i32 @MAKEDWORD(i32 %105, i32 %110)
  store i32 %111, i32* %13, align 4
  store i32 1, i32* %9, align 4
  br label %113

112:                                              ; preds = %57
  br label %113

113:                                              ; preds = %112, %98, %82, %66
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %163

116:                                              ; preds = %113
  %117 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %118 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %117, i32 0, i32 2
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 2
  store i64 0, i64* %121, align 8
  %122 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %123 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %13, align 4
  %126 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %127 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = sub nsw i32 %128, 1
  %130 = and i32 %125, %129
  %131 = sub nsw i32 %124, %130
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %134 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = mul nsw i32 %132, %135
  %137 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %138 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %137, i32 0, i32 0
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %141 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = sub nsw i32 %142, 1
  %144 = and i32 %139, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %116
  %147 = load i32, i32* @RF_1ST_IBLK_BASE, align 4
  %148 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %149 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %152

152:                                              ; preds = %146, %116
  %153 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %154 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* %7, align 4
  %157 = icmp sgt i32 %155, %156
  br i1 %157, label %158, label %162

158:                                              ; preds = %152
  %159 = load i32, i32* %7, align 4
  %160 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %161 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %160, i32 0, i32 0
  store i32 %159, i32* %161, align 8
  br label %162

162:                                              ; preds = %158, %152
  br label %167

163:                                              ; preds = %113
  %164 = load i32, i32* %7, align 4
  %165 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %166 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %165, i32 0, i32 0
  store i32 %164, i32* %166, align 8
  br label %167

167:                                              ; preds = %163, %162
  br label %172

168:                                              ; preds = %50, %44, %2
  %169 = load i32, i32* %7, align 4
  %170 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %171 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %168, %167
  %173 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %174 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to %struct.atto_physical_region_description*
  store %struct.atto_physical_region_description* %178, %struct.atto_physical_region_description** %11, align 8
  %179 = load i32, i32* @sgl_page_size, align 4
  %180 = sext i32 %179 to i64
  %181 = udiv i64 %180, 4
  %182 = trunc i64 %181 to i32
  %183 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %184 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %183, i32 0, i32 1
  %185 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %185, i32 0, i32 0
  store i32 %182, i32* %186, align 8
  br label %187

187:                                              ; preds = %247, %172
  %188 = load i32, i32* %7, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %248

190:                                              ; preds = %187
  %191 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %192 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %191, i32 0, i32 1
  %193 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %193, i32 0, i32 3
  store i64 0, i64* %194, align 8
  %195 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %196 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %195, i32 0, i32 1
  %197 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 2
  store i32* null, i32** %198, align 8
  %199 = load %struct.atto_physical_region_description*, %struct.atto_physical_region_description** %11, align 8
  %200 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %201 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %202, i32 0, i32 1
  store %struct.atto_physical_region_description* %199, %struct.atto_physical_region_description** %203, align 8
  %204 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %205 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %204, i32 0, i32 0
  %206 = load i32, i32* %205, align 8
  %207 = load i32, i32* %7, align 4
  %208 = sub nsw i32 %207, %206
  store i32 %208, i32* %7, align 4
  %209 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %210 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %211 = call i32 @esas2r_build_prd_iblk(%struct.esas2r_adapter* %209, %struct.esas2r_sg_context* %210)
  %212 = icmp ne i32 %211, 0
  %213 = xor i1 %212, true
  %214 = zext i1 %213 to i32
  %215 = call i64 @unlikely(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %218

217:                                              ; preds = %190
  store i32 0, i32* %3, align 4
  br label %273

218:                                              ; preds = %190
  %219 = load %struct.atto_physical_region_description*, %struct.atto_physical_region_description** %11, align 8
  %220 = getelementptr inbounds %struct.atto_physical_region_description, %struct.atto_physical_region_description* %219, i32 1
  store %struct.atto_physical_region_description* %220, %struct.atto_physical_region_description** %11, align 8
  %221 = load i32, i32* %9, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %247

223:                                              ; preds = %218
  %224 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %225 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %224, i32 0, i32 2
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %225, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 0
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  %229 = load i64, i64* %228, align 8
  %230 = add nsw i64 %229, 1
  store i64 %230, i64* %228, align 8
  %231 = load i32, i32* %7, align 4
  %232 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %233 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %232, i32 0, i32 4
  %234 = load i32, i32* %233, align 4
  %235 = icmp sgt i32 %231, %234
  br i1 %235, label %236, label %242

236:                                              ; preds = %223
  %237 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %238 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %237, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %241 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %240, i32 0, i32 0
  store i32 %239, i32* %241, align 8
  br label %246

242:                                              ; preds = %223
  %243 = load i32, i32* %7, align 4
  %244 = load %struct.esas2r_sg_context*, %struct.esas2r_sg_context** %5, align 8
  %245 = getelementptr inbounds %struct.esas2r_sg_context, %struct.esas2r_sg_context* %244, i32 0, i32 0
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %242, %236
  br label %247

247:                                              ; preds = %246, %218
  br label %187

248:                                              ; preds = %187
  %249 = load %struct.atto_physical_region_description*, %struct.atto_physical_region_description** %11, align 8
  %250 = bitcast %struct.atto_physical_region_description* %249 to i32*
  %251 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %252 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %251, i32 0, i32 2
  %253 = load %struct.TYPE_10__*, %struct.TYPE_10__** %252, align 8
  %254 = bitcast %struct.TYPE_10__* %253 to i32*
  %255 = ptrtoint i32* %250 to i64
  %256 = ptrtoint i32* %254 to i64
  %257 = sub i64 %255, %256
  %258 = sdiv exact i64 %257, 4
  %259 = trunc i64 %258 to i32
  %260 = sext i32 %259 to i64
  %261 = udiv i64 %260, 4
  %262 = trunc i64 %261 to i32
  store i32 %262, i32* %10, align 4
  %263 = load i32, i32* %10, align 4
  %264 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %265 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %264, i32 0, i32 1
  %266 = load i32, i32* %265, align 4
  %267 = icmp sgt i32 %263, %266
  br i1 %267, label %268, label %272

268:                                              ; preds = %248
  %269 = load i32, i32* %10, align 4
  %270 = load %struct.esas2r_request*, %struct.esas2r_request** %6, align 8
  %271 = getelementptr inbounds %struct.esas2r_request, %struct.esas2r_request* %270, i32 0, i32 1
  store i32 %269, i32* %271, align 4
  br label %272

272:                                              ; preds = %268, %248
  store i32 1, i32* %3, align 4
  br label %273

273:                                              ; preds = %272, %217
  %274 = load i32, i32* %3, align 4
  ret i32 %274
}

declare dso_local i32 @MAKEDWORD(i32, i32) #1

declare dso_local i32 @MAKEWORD(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @esas2r_build_prd_iblk(%struct.esas2r_adapter*, %struct.esas2r_sg_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
