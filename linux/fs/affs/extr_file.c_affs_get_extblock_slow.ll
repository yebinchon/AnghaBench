; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_get_extblock_slow.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_get_extblock_slow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32 }
%struct.inode = type { i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32*, %struct.buffer_head*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@AFFS_AC_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, i32)* @affs_get_extblock_slow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @affs_get_extblock_slow(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 1
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %6, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %23, 1
  %25 = icmp eq i32 %19, %24
  br i1 %25, label %26, label %63

26:                                               ; preds = %2
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %27)
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 6
  %30 = load %struct.buffer_head*, %struct.buffer_head** %29, align 8
  store %struct.buffer_head* %30, %struct.buffer_head** %7, align 8
  %31 = load %struct.super_block*, %struct.super_block** %6, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %33 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %31, %struct.buffer_head* %32)
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @be32_to_cpu(i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %265

44:                                               ; preds = %26
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %45, %49
  %51 = zext i1 %50 to i32
  %52 = call i32 @BUG_ON(i32 %51)
  %53 = load %struct.inode*, %struct.inode** %4, align 8
  %54 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call %struct.buffer_head* @affs_alloc_extblock(%struct.inode* %53, %struct.buffer_head* %54, i32 %55)
  store %struct.buffer_head* %56, %struct.buffer_head** %7, align 8
  %57 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %58 = call i64 @IS_ERR(%struct.buffer_head* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %44
  %61 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %61, %struct.buffer_head** %3, align 8
  br label %296

62:                                               ; preds = %44
  br label %273

63:                                               ; preds = %2
  %64 = load i32, i32* %5, align 4
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load %struct.inode*, %struct.inode** %4, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  store i32 %69, i32* %8, align 4
  br label %265

70:                                               ; preds = %63
  %71 = load i32, i32* %5, align 4
  %72 = load %struct.inode*, %struct.inode** %4, align 8
  %73 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = icmp sge i32 %71, %75
  br i1 %76, label %77, label %108

77:                                               ; preds = %70
  %78 = load i32, i32* %5, align 4
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp sgt i32 %78, %82
  %84 = zext i1 %83 to i32
  %85 = call i32 @BUG_ON(i32 %84)
  %86 = load %struct.inode*, %struct.inode** %4, align 8
  %87 = load i32, i32* %5, align 4
  %88 = sub nsw i32 %87, 1
  %89 = call %struct.buffer_head* @affs_get_extblock(%struct.inode* %86, i32 %88)
  store %struct.buffer_head* %89, %struct.buffer_head** %14, align 8
  %90 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %91 = call i64 @IS_ERR(%struct.buffer_head* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* %94, %struct.buffer_head** %3, align 8
  br label %296

95:                                               ; preds = %77
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %98 = load i32, i32* %5, align 4
  %99 = call %struct.buffer_head* @affs_alloc_extblock(%struct.inode* %96, %struct.buffer_head* %97, i32 %98)
  store %struct.buffer_head* %99, %struct.buffer_head** %7, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %101 = call i32 @affs_brelse(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %103 = call i64 @IS_ERR(%struct.buffer_head* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %95
  %106 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %106, %struct.buffer_head** %3, align 8
  br label %296

107:                                              ; preds = %95
  br label %273

108:                                              ; preds = %70
  br label %109

109:                                              ; preds = %137, %108
  %110 = load i32, i32* %5, align 4
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  %112 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %111)
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = ashr i32 %110, %114
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %5, align 4
  %117 = load %struct.inode*, %struct.inode** %4, align 8
  %118 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %117)
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %116, %120
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %9, align 4
  %123 = load %struct.inode*, %struct.inode** %4, align 8
  %124 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %123)
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = icmp sge i32 %122, %126
  br i1 %127, label %128, label %138

128:                                              ; preds = %109
  %129 = load %struct.inode*, %struct.inode** %4, align 8
  %130 = load i32, i32* %9, align 4
  %131 = call i32 @affs_grow_extcache(%struct.inode* %129, i32 %130)
  store i32 %131, i32* %15, align 4
  %132 = load i32, i32* %15, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %128
  %135 = load i32, i32* %15, align 4
  %136 = call %struct.buffer_head* @ERR_PTR(i32 %135)
  store %struct.buffer_head* %136, %struct.buffer_head** %3, align 8
  br label %296

137:                                              ; preds = %128
  br label %109

138:                                              ; preds = %109
  %139 = load i32, i32* %10, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %150, label %141

141:                                              ; preds = %138
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %142)
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 5
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  store i32 %149, i32* %8, align 4
  br label %265

150:                                              ; preds = %138
  %151 = load i32, i32* %5, align 4
  %152 = load i32, i32* %9, align 4
  %153 = sub nsw i32 %151, %152
  %154 = sub nsw i32 %153, 1
  %155 = load i32, i32* @AFFS_AC_MASK, align 4
  %156 = and i32 %154, %155
  store i32 %156, i32* %11, align 4
  %157 = load %struct.inode*, %struct.inode** %4, align 8
  %158 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %157)
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 7
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %159, align 8
  %161 = load i32, i32* %11, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i64 %162
  %164 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %168, label %178

168:                                              ; preds = %150
  %169 = load %struct.inode*, %struct.inode** %4, align 8
  %170 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %169)
  %171 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %170, i32 0, i32 7
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = load i32, i32* %11, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 4
  store i32 %177, i32* %8, align 4
  br label %265

178:                                              ; preds = %150
  %179 = load i32, i32* %5, align 4
  store i32 %179, i32* %12, align 4
  %180 = load i32, i32* %11, align 4
  store i32 %180, i32* %13, align 4
  br label %181

181:                                              ; preds = %213, %178
  %182 = load i32, i32* %12, align 4
  %183 = add nsw i32 %182, -1
  store i32 %183, i32* %12, align 4
  %184 = load i32, i32* %10, align 4
  %185 = add nsw i32 %184, -1
  store i32 %185, i32* %10, align 4
  %186 = icmp sgt i32 %185, 0
  br i1 %186, label %187, label %214

187:                                              ; preds = %181
  %188 = load i32, i32* %13, align 4
  %189 = sub nsw i32 %188, 1
  %190 = load i32, i32* @AFFS_AC_MASK, align 4
  %191 = and i32 %189, %190
  store i32 %191, i32* %13, align 4
  %192 = load %struct.inode*, %struct.inode** %4, align 8
  %193 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %192)
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 7
  %195 = load %struct.TYPE_4__*, %struct.TYPE_4__** %194, align 8
  %196 = load i32, i32* %13, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i64 %197
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %12, align 4
  %202 = icmp eq i32 %200, %201
  br i1 %202, label %203, label %213

203:                                              ; preds = %187
  %204 = load %struct.inode*, %struct.inode** %4, align 8
  %205 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %204)
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 7
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = load i32, i32* %13, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i64 %209
  %211 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  store i32 %212, i32* %8, align 4
  br label %223

213:                                              ; preds = %187
  br label %181

214:                                              ; preds = %181
  %215 = load %struct.inode*, %struct.inode** %4, align 8
  %216 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %215)
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 5
  %218 = load i32*, i32** %217, align 8
  %219 = load i32, i32* %9, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  store i32 %222, i32* %8, align 4
  br label %223

223:                                              ; preds = %214, %203
  br label %224

224:                                              ; preds = %242, %223
  %225 = load %struct.super_block*, %struct.super_block** %6, align 8
  %226 = load i32, i32* %8, align 4
  %227 = call %struct.buffer_head* @affs_bread(%struct.super_block* %225, i32 %226)
  store %struct.buffer_head* %227, %struct.buffer_head** %7, align 8
  %228 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %229 = icmp ne %struct.buffer_head* %228, null
  br i1 %229, label %231, label %230

230:                                              ; preds = %224
  br label %290

231:                                              ; preds = %224
  %232 = load %struct.super_block*, %struct.super_block** %6, align 8
  %233 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %234 = call %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block* %232, %struct.buffer_head* %233)
  %235 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = call i32 @be32_to_cpu(i32 %236)
  store i32 %237, i32* %8, align 4
  %238 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %239 = call i32 @affs_brelse(%struct.buffer_head* %238)
  %240 = load i32, i32* %12, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %12, align 4
  br label %242

242:                                              ; preds = %231
  %243 = load i32, i32* %12, align 4
  %244 = load i32, i32* %5, align 4
  %245 = icmp slt i32 %243, %244
  br i1 %245, label %224, label %246

246:                                              ; preds = %242
  %247 = load i32, i32* %5, align 4
  %248 = load %struct.inode*, %struct.inode** %4, align 8
  %249 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %248)
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 7
  %251 = load %struct.TYPE_4__*, %struct.TYPE_4__** %250, align 8
  %252 = load i32, i32* %11, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %251, i64 %253
  %255 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %254, i32 0, i32 0
  store i32 %247, i32* %255, align 4
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.inode*, %struct.inode** %4, align 8
  %258 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %257)
  %259 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %258, i32 0, i32 7
  %260 = load %struct.TYPE_4__*, %struct.TYPE_4__** %259, align 8
  %261 = load i32, i32* %11, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %260, i64 %262
  %264 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %263, i32 0, i32 1
  store i32 %256, i32* %264, align 4
  br label %265

265:                                              ; preds = %246, %168, %141, %66, %43
  %266 = load %struct.super_block*, %struct.super_block** %6, align 8
  %267 = load i32, i32* %8, align 4
  %268 = call %struct.buffer_head* @affs_bread(%struct.super_block* %266, i32 %267)
  store %struct.buffer_head* %268, %struct.buffer_head** %7, align 8
  %269 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %270 = icmp ne %struct.buffer_head* %269, null
  br i1 %270, label %272, label %271

271:                                              ; preds = %265
  br label %290

272:                                              ; preds = %265
  br label %273

273:                                              ; preds = %272, %107, %62
  %274 = load %struct.inode*, %struct.inode** %4, align 8
  %275 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %274)
  %276 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %275, i32 0, i32 6
  %277 = load %struct.buffer_head*, %struct.buffer_head** %276, align 8
  %278 = call i32 @affs_brelse(%struct.buffer_head* %277)
  %279 = load i32, i32* %5, align 4
  %280 = load %struct.inode*, %struct.inode** %4, align 8
  %281 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %280)
  %282 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i32 0, i32 0
  store i32 %279, i32* %282, align 8
  %283 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %284 = load %struct.inode*, %struct.inode** %4, align 8
  %285 = call %struct.TYPE_6__* @AFFS_I(%struct.inode* %284)
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 6
  store %struct.buffer_head* %283, %struct.buffer_head** %286, align 8
  %287 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %288 = call i32 @get_bh(%struct.buffer_head* %287)
  %289 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %289, %struct.buffer_head** %3, align 8
  br label %296

290:                                              ; preds = %271, %230
  %291 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %292 = call i32 @affs_brelse(%struct.buffer_head* %291)
  %293 = load i32, i32* @EIO, align 4
  %294 = sub nsw i32 0, %293
  %295 = call %struct.buffer_head* @ERR_PTR(i32 %294)
  store %struct.buffer_head* %295, %struct.buffer_head** %3, align 8
  br label %296

296:                                              ; preds = %290, %273, %134, %105, %93, %60
  %297 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  ret %struct.buffer_head* %297
}

declare dso_local %struct.TYPE_6__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.TYPE_5__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.buffer_head* @affs_alloc_extblock(%struct.inode*, %struct.buffer_head*, i32) #1

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @affs_get_extblock(%struct.inode*, i32) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @affs_grow_extcache(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @affs_bread(%struct.super_block*, i32) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
