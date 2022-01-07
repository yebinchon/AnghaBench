; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_add_indirect_packed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_ring.c_virtqueue_add_indirect_packed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_virtqueue = type { i64, i32, %struct.TYPE_12__, %struct.TYPE_9__, i32, i64 }
%struct.TYPE_12__ = type { i64, i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_7__* }
%struct.TYPE_11__ = type { i64, i32, i64, %struct.vring_packed_desc*, i8* }
%struct.vring_packed_desc = type { i8*, i8*, i8* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i8*, i8*, i8*, i8* }
%struct.TYPE_7__ = type { i32, i64, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.scatterlist = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Can't add buf len 1 - avail = 0\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@VRING_DESC_F_WRITE = common dso_local global i64 0, align 8
@VRING_DESC_F_INDIRECT = common dso_local global i64 0, align 8
@VRING_PACKED_DESC_F_AVAIL = common dso_local global i32 0, align 4
@VRING_PACKED_DESC_F_USED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Added buffer head %i to %p\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vring_virtqueue*, %struct.scatterlist**, i32, i32, i32, i8*, i32)* @virtqueue_add_indirect_packed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtqueue_add_indirect_packed(%struct.vring_virtqueue* %0, %struct.scatterlist** %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.vring_virtqueue*, align 8
  %10 = alloca %struct.scatterlist**, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.vring_packed_desc*, align 8
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  store %struct.vring_virtqueue* %0, %struct.vring_virtqueue** %9, align 8
  store %struct.scatterlist** %1, %struct.scatterlist*** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %24 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %25 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %21, align 8
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* %15, align 4
  %30 = call %struct.vring_packed_desc* @alloc_indirect_packed(i32 %28, i32 %29)
  store %struct.vring_packed_desc* %30, %struct.vring_packed_desc** %16, align 8
  %31 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %32 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 1
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %7
  %40 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %42 = call i32 @kfree(%struct.vring_packed_desc* %41)
  %43 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %44 = call i32 @END_USE(%struct.vring_virtqueue* %43)
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %350

47:                                               ; preds = %7
  store i32 0, i32* %18, align 4
  %48 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %49 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  store i64 %50, i64* %22, align 8
  %51 = load i64, i64* %22, align 8
  %52 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %53 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %51, %56
  %58 = zext i1 %57 to i32
  %59 = call i32 @BUG_ON(i32 %58)
  store i32 0, i32* %19, align 4
  br label %60

60:                                               ; preds = %130, %47
  %61 = load i32, i32* %19, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %13, align 4
  %64 = add i32 %62, %63
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %133

66:                                               ; preds = %60
  %67 = load %struct.scatterlist**, %struct.scatterlist*** %10, align 8
  %68 = load i32, i32* %19, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.scatterlist*, %struct.scatterlist** %67, i64 %69
  %71 = load %struct.scatterlist*, %struct.scatterlist** %70, align 8
  store %struct.scatterlist* %71, %struct.scatterlist** %17, align 8
  br label %72

72:                                               ; preds = %126, %66
  %73 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %74 = icmp ne %struct.scatterlist* %73, null
  br i1 %74, label %75, label %129

75:                                               ; preds = %72
  %76 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %77 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %75
  %82 = load i32, i32* @DMA_TO_DEVICE, align 4
  br label %85

83:                                               ; preds = %75
  %84 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %85

85:                                               ; preds = %83, %81
  %86 = phi i32 [ %82, %81 ], [ %84, %83 ]
  %87 = call i32 @vring_map_one_sg(%struct.vring_virtqueue* %76, %struct.scatterlist* %77, i32 %86)
  store i32 %87, i32* %23, align 4
  %88 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %89 = load i32, i32* %23, align 4
  %90 = call i64 @vring_mapping_error(%struct.vring_virtqueue* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %327

93:                                               ; preds = %85
  %94 = load i32, i32* %19, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ult i32 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %93
  br label %100

98:                                               ; preds = %93
  %99 = load i64, i64* @VRING_DESC_F_WRITE, align 8
  br label %100

100:                                              ; preds = %98, %97
  %101 = phi i64 [ 0, %97 ], [ %99, %98 ]
  %102 = call i8* @cpu_to_le16(i64 %101)
  %103 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %104 = load i32, i32* %18, align 4
  %105 = zext i32 %104 to i64
  %106 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %103, i64 %105
  %107 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %106, i32 0, i32 2
  store i8* %102, i8** %107, align 8
  %108 = load i32, i32* %23, align 4
  %109 = call i8* @cpu_to_le64(i32 %108)
  %110 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %111 = load i32, i32* %18, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %110, i64 %112
  %114 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %113, i32 0, i32 1
  store i8* %109, i8** %114, align 8
  %115 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %116 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %120 = load i32, i32* %18, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %119, i64 %121
  %123 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %122, i32 0, i32 0
  store i8* %118, i8** %123, align 8
  %124 = load i32, i32* %18, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %18, align 4
  br label %126

126:                                              ; preds = %100
  %127 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %128 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %127)
  store %struct.scatterlist* %128, %struct.scatterlist** %17, align 8
  br label %72

129:                                              ; preds = %72
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %19, align 4
  %132 = add i32 %131, 1
  store i32 %132, i32* %19, align 4
  br label %60

133:                                              ; preds = %60
  %134 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %135 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %136 = load i32, i32* %11, align 4
  %137 = zext i32 %136 to i64
  %138 = mul i64 %137, 24
  %139 = trunc i64 %138 to i32
  %140 = load i32, i32* @DMA_TO_DEVICE, align 4
  %141 = call i32 @vring_map_single(%struct.vring_virtqueue* %134, %struct.vring_packed_desc* %135, i32 %139, i32 %140)
  store i32 %141, i32* %23, align 4
  %142 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %143 = load i32, i32* %23, align 4
  %144 = call i64 @vring_mapping_error(%struct.vring_virtqueue* %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %133
  br label %327

147:                                              ; preds = %133
  %148 = load i32, i32* %23, align 4
  %149 = call i8* @cpu_to_le64(i32 %148)
  %150 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %151 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load i64, i64* %21, align 8
  %156 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i64 %155
  %157 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %156, i32 0, i32 3
  store i8* %149, i8** %157, align 8
  %158 = load i32, i32* %11, align 4
  %159 = zext i32 %158 to i64
  %160 = mul i64 %159, 24
  %161 = trunc i64 %160 to i32
  %162 = call i8* @cpu_to_le32(i32 %161)
  %163 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %164 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %163, i32 0, i32 2
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 4
  %166 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %165, i32 0, i32 1
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = load i64, i64* %21, align 8
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 2
  store i8* %162, i8** %170, align 8
  %171 = load i64, i64* %22, align 8
  %172 = call i8* @cpu_to_le16(i64 %171)
  %173 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %174 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %173, i32 0, i32 2
  %175 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %174, i32 0, i32 4
  %176 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %176, align 8
  %178 = load i64, i64* %21, align 8
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i64 %178
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 1
  store i8* %172, i8** %180, align 8
  %181 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %182 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %218

185:                                              ; preds = %147
  %186 = load i32, i32* %23, align 4
  %187 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %188 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %188, i32 0, i32 5
  %190 = load %struct.TYPE_7__*, %struct.TYPE_7__** %189, align 8
  %191 = load i64, i64* %22, align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %190, i64 %191
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  store i32 %186, i32* %193, align 8
  %194 = load i32, i32* %11, align 4
  %195 = zext i32 %194 to i64
  %196 = mul i64 %195, 24
  %197 = trunc i64 %196 to i32
  %198 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %199 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %198, i32 0, i32 2
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 5
  %201 = load %struct.TYPE_7__*, %struct.TYPE_7__** %200, align 8
  %202 = load i64, i64* %22, align 8
  %203 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %201, i64 %202
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %203, i32 0, i32 0
  store i32 %197, i32* %204, align 8
  %205 = load i64, i64* @VRING_DESC_F_INDIRECT, align 8
  %206 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %207 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %206, i32 0, i32 2
  %208 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = or i64 %205, %209
  %211 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %212 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %211, i32 0, i32 2
  %213 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %212, i32 0, i32 5
  %214 = load %struct.TYPE_7__*, %struct.TYPE_7__** %213, align 8
  %215 = load i64, i64* %22, align 8
  %216 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %214, i64 %215
  %217 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %216, i32 0, i32 1
  store i64 %210, i64* %217, align 8
  br label %218

218:                                              ; preds = %185, %147
  %219 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %220 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %219, i32 0, i32 4
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @virtio_wmb(i32 %221)
  %223 = load i64, i64* @VRING_DESC_F_INDIRECT, align 8
  %224 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %225 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %224, i32 0, i32 2
  %226 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %225, i32 0, i32 1
  %227 = load i64, i64* %226, align 8
  %228 = or i64 %223, %227
  %229 = call i8* @cpu_to_le16(i64 %228)
  %230 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %231 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %230, i32 0, i32 2
  %232 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %231, i32 0, i32 4
  %233 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %232, i32 0, i32 1
  %234 = load %struct.TYPE_8__*, %struct.TYPE_8__** %233, align 8
  %235 = load i64, i64* %21, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %234, i64 %235
  %237 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %236, i32 0, i32 0
  store i8* %229, i8** %237, align 8
  %238 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %239 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %238, i32 0, i32 3
  %240 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = sub nsw i32 %241, 1
  store i32 %242, i32* %240, align 8
  %243 = load i64, i64* %21, align 8
  %244 = add i64 %243, 1
  %245 = trunc i64 %244 to i32
  store i32 %245, i32* %19, align 4
  %246 = load i32, i32* %19, align 4
  %247 = zext i32 %246 to i64
  %248 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %249 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %248, i32 0, i32 2
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  %251 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %250, i32 0, i32 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp uge i64 %247, %252
  br i1 %253, label %254, label %271

254:                                              ; preds = %218
  store i32 0, i32* %19, align 4
  %255 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %256 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %255, i32 0, i32 2
  %257 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %256, i32 0, i32 2
  %258 = load i32, i32* %257, align 8
  %259 = xor i32 %258, 1
  store i32 %259, i32* %257, align 8
  %260 = load i32, i32* @VRING_PACKED_DESC_F_AVAIL, align 4
  %261 = shl i32 1, %260
  %262 = load i32, i32* @VRING_PACKED_DESC_F_USED, align 4
  %263 = shl i32 1, %262
  %264 = or i32 %261, %263
  %265 = sext i32 %264 to i64
  %266 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %267 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 1
  %269 = load i64, i64* %268, align 8
  %270 = xor i64 %269, %265
  store i64 %270, i64* %268, align 8
  br label %271

271:                                              ; preds = %254, %218
  %272 = load i32, i32* %19, align 4
  %273 = zext i32 %272 to i64
  %274 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %275 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  store i64 %273, i64* %276, align 8
  %277 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %278 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %277, i32 0, i32 2
  %279 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %278, i32 0, i32 3
  %280 = load %struct.TYPE_11__*, %struct.TYPE_11__** %279, align 8
  %281 = load i64, i64* %22, align 8
  %282 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %280, i64 %281
  %283 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %282, i32 0, i32 0
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %286 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %288 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %287, i32 0, i32 2
  %289 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %288, i32 0, i32 3
  %290 = load %struct.TYPE_11__*, %struct.TYPE_11__** %289, align 8
  %291 = load i64, i64* %22, align 8
  %292 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %290, i64 %291
  %293 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %292, i32 0, i32 1
  store i32 1, i32* %293, align 8
  %294 = load i8*, i8** %14, align 8
  %295 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %296 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %295, i32 0, i32 2
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 3
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %297, align 8
  %299 = load i64, i64* %22, align 8
  %300 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i64 %299
  %301 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %300, i32 0, i32 4
  store i8* %294, i8** %301, align 8
  %302 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %303 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %304 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %303, i32 0, i32 2
  %305 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %304, i32 0, i32 3
  %306 = load %struct.TYPE_11__*, %struct.TYPE_11__** %305, align 8
  %307 = load i64, i64* %22, align 8
  %308 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %306, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %308, i32 0, i32 3
  store %struct.vring_packed_desc* %302, %struct.vring_packed_desc** %309, align 8
  %310 = load i64, i64* %22, align 8
  %311 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %312 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %311, i32 0, i32 2
  %313 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %312, i32 0, i32 3
  %314 = load %struct.TYPE_11__*, %struct.TYPE_11__** %313, align 8
  %315 = load i64, i64* %22, align 8
  %316 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %314, i64 %315
  %317 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %316, i32 0, i32 2
  store i64 %310, i64* %317, align 8
  %318 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %319 = getelementptr inbounds %struct.vring_virtqueue, %struct.vring_virtqueue* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 8
  %321 = add nsw i32 %320, 1
  store i32 %321, i32* %319, align 8
  %322 = load i64, i64* %21, align 8
  %323 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %324 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %322, %struct.vring_virtqueue* %323)
  %325 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %326 = call i32 @END_USE(%struct.vring_virtqueue* %325)
  store i32 0, i32* %8, align 4
  br label %350

327:                                              ; preds = %146, %92
  %328 = load i32, i32* %18, align 4
  store i32 %328, i32* %20, align 4
  store i32 0, i32* %18, align 4
  br label %329

329:                                              ; preds = %340, %327
  %330 = load i32, i32* %18, align 4
  %331 = load i32, i32* %20, align 4
  %332 = icmp ult i32 %330, %331
  br i1 %332, label %333, label %343

333:                                              ; preds = %329
  %334 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %335 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %336 = load i32, i32* %18, align 4
  %337 = zext i32 %336 to i64
  %338 = getelementptr inbounds %struct.vring_packed_desc, %struct.vring_packed_desc* %335, i64 %337
  %339 = call i32 @vring_unmap_desc_packed(%struct.vring_virtqueue* %334, %struct.vring_packed_desc* %338)
  br label %340

340:                                              ; preds = %333
  %341 = load i32, i32* %18, align 4
  %342 = add i32 %341, 1
  store i32 %342, i32* %18, align 4
  br label %329

343:                                              ; preds = %329
  %344 = load %struct.vring_packed_desc*, %struct.vring_packed_desc** %16, align 8
  %345 = call i32 @kfree(%struct.vring_packed_desc* %344)
  %346 = load %struct.vring_virtqueue*, %struct.vring_virtqueue** %9, align 8
  %347 = call i32 @END_USE(%struct.vring_virtqueue* %346)
  %348 = load i32, i32* @EIO, align 4
  %349 = sub nsw i32 0, %348
  store i32 %349, i32* %8, align 4
  br label %350

350:                                              ; preds = %343, %271, %39
  %351 = load i32, i32* %8, align 4
  ret i32 %351
}

declare dso_local %struct.vring_packed_desc* @alloc_indirect_packed(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @kfree(%struct.vring_packed_desc*) #1

declare dso_local i32 @END_USE(%struct.vring_virtqueue*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @vring_map_one_sg(%struct.vring_virtqueue*, %struct.scatterlist*, i32) #1

declare dso_local i64 @vring_mapping_error(%struct.vring_virtqueue*, i32) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @vring_map_single(%struct.vring_virtqueue*, %struct.vring_packed_desc*, i32, i32) #1

declare dso_local i32 @virtio_wmb(i32) #1

declare dso_local i32 @vring_unmap_desc_packed(%struct.vring_virtqueue*, %struct.vring_packed_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
