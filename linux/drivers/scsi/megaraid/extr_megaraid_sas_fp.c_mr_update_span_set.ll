; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_update_span_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_fp.c_mr_update_span_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MR_DRV_RAID_MAP_ALL = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.MR_QUAD_ELEMENT* }
%struct.MR_QUAD_ELEMENT = type { i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.MR_LD_RAID = type { i64, i32 }
%struct.TYPE_15__ = type { i64 }

@MAX_LOGICAL_DRIVES_EXT = common dso_local global i32 0, align 4
@MAX_QUAD_DEPTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mr_update_span_set(%struct.MR_DRV_RAID_MAP_ALL* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.MR_DRV_RAID_MAP_ALL*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.MR_LD_RAID*, align 8
  %11 = alloca %struct.TYPE_14__*, align 8
  %12 = alloca %struct.TYPE_14__*, align 8
  %13 = alloca %struct.MR_QUAD_ELEMENT*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.MR_DRV_RAID_MAP_ALL* %0, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  store i32 0, i32* %14, align 4
  br label %16

16:                                               ; preds = %303, %2
  %17 = load i32, i32* %14, align 4
  %18 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %306

20:                                               ; preds = %16
  %21 = load i32, i32* %14, align 4
  %22 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %23 = call i32 @MR_TargetIdToLdGet(i32 %21, %struct.MR_DRV_RAID_MAP_ALL* %22)
  store i32 %23, i32* %15, align 4
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* @MAX_LOGICAL_DRIVES_EXT, align 4
  %26 = sub nsw i32 %25, 1
  %27 = icmp sge i32 %24, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %303

29:                                               ; preds = %20
  %30 = load i32, i32* %15, align 4
  %31 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %32 = call %struct.MR_LD_RAID* @MR_LdRaidGet(i32 %30, %struct.MR_DRV_RAID_MAP_ALL* %31)
  store %struct.MR_LD_RAID* %32, %struct.MR_LD_RAID** %10, align 8
  store i32 0, i32* %7, align 4
  br label %33

33:                                               ; preds = %299, %29
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @MAX_QUAD_DEPTH, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %302

37:                                               ; preds = %33
  store i64 0, i64* %5, align 8
  br label %38

38:                                               ; preds = %288, %37
  %39 = load i64, i64* %5, align 8
  %40 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %10, align 8
  %41 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %39, %42
  br i1 %43, label %44, label %291

44:                                               ; preds = %38
  %45 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %46 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  %49 = load i32, i32* %15, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @le32_to_cpu(i32 %58)
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 %60, 1
  %62 = icmp slt i32 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %44
  br label %288

64:                                               ; preds = %44
  %65 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %66 = load i32, i32* %15, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %69, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i64 %72
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %11, align 8
  %74 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %75 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %76, align 8
  %78 = load i32, i32* %15, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  %87 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %87, i64 %89
  store %struct.MR_QUAD_ELEMENT* %90, %struct.MR_QUAD_ELEMENT** %13, align 8
  %91 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %92 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %8, align 4
  br label %97

97:                                               ; preds = %140, %64
  %98 = load i64, i64* %6, align 8
  %99 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %10, align 8
  %100 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ult i64 %98, %101
  br i1 %102, label %103, label %143

103:                                              ; preds = %97
  %104 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %105 = getelementptr inbounds %struct.MR_DRV_RAID_MAP_ALL, %struct.MR_DRV_RAID_MAP_ALL* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_11__*, %struct.TYPE_11__** %106, align 8
  %108 = load i32, i32* %15, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 0
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load i64, i64* %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = add nsw i32 %119, 1
  %121 = icmp sge i32 %118, %120
  br i1 %121, label %122, label %139

122:                                              ; preds = %103
  %123 = load i32, i32* %8, align 4
  %124 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %125 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %124, i32 0, i32 1
  %126 = load i32*, i32** %125, align 8
  %127 = load i64, i64* %6, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  store i32 %123, i32* %128, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i64, i64* %6, align 8
  %131 = load %struct.MR_DRV_RAID_MAP_ALL*, %struct.MR_DRV_RAID_MAP_ALL** %3, align 8
  %132 = call %struct.TYPE_15__* @MR_LdSpanPtrGet(i32 %129, i64 %130, %struct.MR_DRV_RAID_MAP_ALL* %131)
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %8, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %8, align 4
  br label %139

139:                                              ; preds = %122, %103
  br label %140

140:                                              ; preds = %139
  %141 = load i64, i64* %6, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %6, align 8
  br label %97

143:                                              ; preds = %97
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  store i32 %144, i32* %146, align 8
  %147 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %148 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = call i64 @le64_to_cpu(i32 %149)
  %151 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %152 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i64 @le64_to_cpu(i32 %153)
  %155 = sub nsw i64 %150, %154
  %156 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %157 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = call i32 @le32_to_cpu(i32 %158)
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %155, %160
  %162 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %163 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @le32_to_cpu(i32 %164)
  %166 = call i32 @mega_div64_32(i64 %161, i32 %165)
  store i32 %166, i32* %9, align 4
  %167 = load i32, i32* %7, align 4
  %168 = icmp eq i32 %167, 0
  br i1 %168, label %169, label %207

169:                                              ; preds = %143
  %170 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %171 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %170, i32 0, i32 3
  store i32 0, i32* %171, align 4
  %172 = load i32, i32* %9, align 4
  %173 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %10, align 8
  %174 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %173, i32 0, i32 1
  %175 = load i32, i32* %174, align 8
  %176 = shl i32 %172, %175
  %177 = load i32, i32* %8, align 4
  %178 = mul nsw i32 %176, %177
  %179 = sub nsw i32 %178, 1
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 4
  store i32 %179, i32* %181, align 8
  %182 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 5
  store i32 0, i32* %183, align 4
  %184 = load i32, i32* %9, align 4
  %185 = sub nsw i32 %184, 1
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 6
  store i32 %185, i32* %187, align 8
  %188 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %189 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %188, i32 0, i32 7
  store i32 0, i32* %189, align 4
  %190 = load i32, i32* %9, align 4
  %191 = load i32, i32* %8, align 4
  %192 = mul nsw i32 %190, %191
  %193 = sub nsw i32 %192, 1
  %194 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %194, i32 0, i32 8
  store i32 %193, i32* %195, align 8
  %196 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %197 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %196, i32 0, i32 9
  store i32 0, i32* %197, align 4
  %198 = load i32, i32* %9, align 4
  %199 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %200 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %199, i32 0, i32 0
  %201 = load i32, i32* %200, align 4
  %202 = call i32 @le32_to_cpu(i32 %201)
  %203 = mul nsw i32 %198, %202
  %204 = sub nsw i32 %203, 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 10
  store i32 %204, i32* %206, align 8
  br label %287

207:                                              ; preds = %143
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %209 = load i32, i32* %15, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i64 %210
  %212 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %211, i32 0, i32 0
  %213 = load %struct.TYPE_14__*, %struct.TYPE_14__** %212, align 8
  %214 = load i32, i32* %7, align 4
  %215 = sub nsw i32 %214, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %213, i64 %216
  store %struct.TYPE_14__* %217, %struct.TYPE_14__** %12, align 8
  %218 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 4
  %220 = load i32, i32* %219, align 8
  %221 = add nsw i32 %220, 1
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 3
  store i32 %221, i32* %223, align 4
  %224 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %9, align 4
  %228 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %10, align 8
  %229 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 8
  %231 = shl i32 %227, %230
  %232 = load i32, i32* %8, align 4
  %233 = mul nsw i32 %231, %232
  %234 = add nsw i32 %226, %233
  %235 = sub nsw i32 %234, 1
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 4
  store i32 %235, i32* %237, align 8
  %238 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %239 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %238, i32 0, i32 6
  %240 = load i32, i32* %239, align 8
  %241 = add nsw i32 %240, 1
  %242 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 4
  %244 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %245 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* %9, align 4
  %248 = add nsw i32 %246, %247
  %249 = sub nsw i32 %248, 1
  %250 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %250, i32 0, i32 6
  store i32 %249, i32* %251, align 8
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 8
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 1
  %256 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %256, i32 0, i32 7
  store i32 %255, i32* %257, align 4
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 7
  %260 = load i32, i32* %259, align 4
  %261 = load i32, i32* %9, align 4
  %262 = load i32, i32* %8, align 4
  %263 = mul nsw i32 %261, %262
  %264 = add nsw i32 %260, %263
  %265 = sub nsw i32 %264, 1
  %266 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 8
  store i32 %265, i32* %267, align 8
  %268 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %269 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %268, i32 0, i32 10
  %270 = load i32, i32* %269, align 8
  %271 = add nsw i32 %270, 1
  %272 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %273 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %272, i32 0, i32 9
  store i32 %271, i32* %273, align 4
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 9
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* %9, align 4
  %278 = load %struct.MR_QUAD_ELEMENT*, %struct.MR_QUAD_ELEMENT** %13, align 8
  %279 = getelementptr inbounds %struct.MR_QUAD_ELEMENT, %struct.MR_QUAD_ELEMENT* %278, i32 0, i32 0
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @le32_to_cpu(i32 %280)
  %282 = mul nsw i32 %277, %281
  %283 = add nsw i32 %276, %282
  %284 = sub nsw i32 %283, 1
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %11, align 8
  %286 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %285, i32 0, i32 10
  store i32 %284, i32* %286, align 8
  br label %287

287:                                              ; preds = %207, %169
  br label %291

288:                                              ; preds = %63
  %289 = load i64, i64* %5, align 8
  %290 = add i64 %289, 1
  store i64 %290, i64* %5, align 8
  br label %38

291:                                              ; preds = %287, %38
  %292 = load i64, i64* %5, align 8
  %293 = load %struct.MR_LD_RAID*, %struct.MR_LD_RAID** %10, align 8
  %294 = getelementptr inbounds %struct.MR_LD_RAID, %struct.MR_LD_RAID* %293, i32 0, i32 0
  %295 = load i64, i64* %294, align 8
  %296 = icmp eq i64 %292, %295
  br i1 %296, label %297, label %298

297:                                              ; preds = %291
  br label %302

298:                                              ; preds = %291
  br label %299

299:                                              ; preds = %298
  %300 = load i32, i32* %7, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %7, align 4
  br label %33

302:                                              ; preds = %297, %33
  br label %303

303:                                              ; preds = %302, %28
  %304 = load i32, i32* %14, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %14, align 4
  br label %16

306:                                              ; preds = %16
  ret void
}

declare dso_local i32 @MR_TargetIdToLdGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local %struct.MR_LD_RAID* @MR_LdRaidGet(i32, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_15__* @MR_LdSpanPtrGet(i32, i64, %struct.MR_DRV_RAID_MAP_ALL*) #1

declare dso_local i32 @mega_div64_32(i64, i32) #1

declare dso_local i64 @le64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
