; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_get_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_get_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_12__*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32* }
%struct.ext2_inode_info = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32, i64, i8**, i32*, i32*, i32)* @ext2_get_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext2_get_blocks(%struct.inode* %0, i32 %1, i64 %2, i8** %3, i32* %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [4 x i32], align 16
  %18 = alloca [4 x %struct.TYPE_11__], align 16
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca %struct.ext2_inode_info*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i8** %3, i8*** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %22, align 4
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %28)
  store %struct.ext2_inode_info* %29, %struct.ext2_inode_info** %24, align 8
  store i32 0, i32* %25, align 4
  store i64 0, i64* %26, align 8
  %30 = load i64, i64* %11, align 8
  %31 = icmp eq i64 %30, 0
  %32 = zext i1 %31 to i32
  %33 = call i32 @BUG_ON(i32 %32)
  %34 = load %struct.inode*, %struct.inode** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %37 = call i32 @ext2_block_to_path(%struct.inode* %34, i32 %35, i32* %36, i32* %22)
  store i32 %37, i32* %23, align 4
  %38 = load i32, i32* %23, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %7
  %41 = load i32, i32* @EIO, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %8, align 4
  br label %317

43:                                               ; preds = %7
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = load i32, i32* %23, align 4
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %47 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %48 = call %struct.TYPE_11__* @ext2_get_branch(%struct.inode* %44, i32 %45, i32* %46, %struct.TYPE_11__* %47, i32* %16)
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %19, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %50 = icmp ne %struct.TYPE_11__* %49, null
  br i1 %50, label %121, label %51

51:                                               ; preds = %43
  %52 = load i32, i32* %23, align 4
  %53 = sub nsw i32 %52, 1
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 16
  %58 = call i8* @le32_to_cpu(i32 %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %26, align 8
  %60 = load i32, i32* %25, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %25, align 4
  br label %62

62:                                               ; preds = %113, %51
  %63 = load i32, i32* %25, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* %11, align 8
  %66 = icmp ult i64 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load i32, i32* %25, align 4
  %69 = load i32, i32* %22, align 4
  %70 = icmp sle i32 %68, %69
  br label %71

71:                                               ; preds = %67, %62
  %72 = phi i1 [ false, %62 ], [ %70, %67 ]
  br i1 %72, label %73, label %114

73:                                               ; preds = %71
  %74 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %75 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %76 = load i32, i32* %23, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 -1
  %80 = call i32 @verify_chain(%struct.TYPE_11__* %74, %struct.TYPE_11__* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @EAGAIN, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %16, align 4
  store i32 0, i32* %25, align 4
  %85 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %86 = load i32, i32* %23, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 -1
  store %struct.TYPE_11__* %89, %struct.TYPE_11__** %19, align 8
  br label %114

90:                                               ; preds = %73
  %91 = load i32, i32* %23, align 4
  %92 = sub nsw i32 %91, 1
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %25, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @le32_to_cpu(i32 %100)
  %102 = ptrtoint i8* %101 to i64
  store i64 %102, i64* %27, align 8
  %103 = load i64, i64* %27, align 8
  %104 = load i64, i64* %26, align 8
  %105 = load i32, i32* %25, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = icmp eq i64 %103, %107
  br i1 %108, label %109, label %112

109:                                              ; preds = %90
  %110 = load i32, i32* %25, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %25, align 4
  br label %113

112:                                              ; preds = %90
  br label %114

113:                                              ; preds = %109
  br label %62

114:                                              ; preds = %112, %82, %71
  %115 = load i32, i32* %16, align 4
  %116 = load i32, i32* @EAGAIN, align 4
  %117 = sub nsw i32 0, %116
  %118 = icmp ne i32 %115, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %114
  br label %278

120:                                              ; preds = %114
  br label %121

121:                                              ; preds = %120, %43
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i32, i32* %16, align 4
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  %128 = icmp eq i32 %125, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %124, %121
  br label %291

130:                                              ; preds = %124
  %131 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %24, align 8
  %132 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %131, i32 0, i32 0
  %133 = call i32 @mutex_lock(i32* %132)
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* @EAGAIN, align 4
  %136 = sub nsw i32 0, %135
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %143, label %138

138:                                              ; preds = %130
  %139 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %140 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %141 = call i32 @verify_chain(%struct.TYPE_11__* %139, %struct.TYPE_11__* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %174, label %143

143:                                              ; preds = %138, %130
  br label %144

144:                                              ; preds = %148, %143
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %146 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %147 = icmp ugt %struct.TYPE_11__* %145, %146
  br i1 %147, label %148, label %155

148:                                              ; preds = %144
  %149 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i32 @brelse(i32 %151)
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 -1
  store %struct.TYPE_11__* %154, %struct.TYPE_11__** %19, align 8
  br label %144

155:                                              ; preds = %144
  %156 = load %struct.inode*, %struct.inode** %9, align 8
  %157 = load i32, i32* %23, align 4
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %159 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %160 = call %struct.TYPE_11__* @ext2_get_branch(%struct.inode* %156, i32 %157, i32* %158, %struct.TYPE_11__* %159, i32* %16)
  store %struct.TYPE_11__* %160, %struct.TYPE_11__** %19, align 8
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %162 = icmp ne %struct.TYPE_11__* %161, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %155
  %164 = load i32, i32* %25, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %25, align 4
  %166 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %24, align 8
  %167 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %166, i32 0, i32 0
  %168 = call i32 @mutex_unlock(i32* %167)
  %169 = load i32, i32* %16, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %172

171:                                              ; preds = %163
  br label %291

172:                                              ; preds = %163
  br label %278

173:                                              ; preds = %155
  br label %174

174:                                              ; preds = %173, %138
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = call i64 @S_ISREG(i32 %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %188

180:                                              ; preds = %174
  %181 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %24, align 8
  %182 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %188, label %185

185:                                              ; preds = %180
  %186 = load %struct.inode*, %struct.inode** %9, align 8
  %187 = call i32 @ext2_init_block_alloc_info(%struct.inode* %186)
  br label %188

188:                                              ; preds = %185, %180, %174
  %189 = load %struct.inode*, %struct.inode** %9, align 8
  %190 = load i32, i32* %10, align 4
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %192 = call i64 @ext2_find_goal(%struct.inode* %189, i32 %190, %struct.TYPE_11__* %191)
  store i64 %192, i64* %20, align 8
  %193 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %194 = load i32, i32* %23, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i64 %195
  %197 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %198 = ptrtoint %struct.TYPE_11__* %196 to i64
  %199 = ptrtoint %struct.TYPE_11__* %197 to i64
  %200 = sub i64 %198, %199
  %201 = sdiv exact i64 %200, 16
  %202 = sub nsw i64 %201, 1
  %203 = trunc i64 %202 to i32
  store i32 %203, i32* %21, align 4
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %205 = load i32, i32* %21, align 4
  %206 = load i64, i64* %11, align 8
  %207 = load i32, i32* %22, align 4
  %208 = call i32 @ext2_blks_to_allocate(%struct.TYPE_11__* %204, i32 %205, i64 %206, i32 %207)
  store i32 %208, i32* %25, align 4
  %209 = load %struct.inode*, %struct.inode** %9, align 8
  %210 = load i32, i32* %21, align 4
  %211 = load i64, i64* %20, align 8
  %212 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %214 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %215 = ptrtoint %struct.TYPE_11__* %213 to i64
  %216 = ptrtoint %struct.TYPE_11__* %214 to i64
  %217 = sub i64 %215, %216
  %218 = sdiv exact i64 %217, 16
  %219 = getelementptr inbounds i32, i32* %212, i64 %218
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %221 = call i32 @ext2_alloc_branch(%struct.inode* %209, i32 %210, i32* %25, i64 %211, i32* %219, %struct.TYPE_11__* %220)
  store i32 %221, i32* %16, align 4
  %222 = load i32, i32* %16, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %188
  %225 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %24, align 8
  %226 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %225, i32 0, i32 0
  %227 = call i32 @mutex_unlock(i32* %226)
  br label %291

228:                                              ; preds = %188
  %229 = load %struct.inode*, %struct.inode** %9, align 8
  %230 = call i64 @IS_DAX(%struct.inode* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %267

232:                                              ; preds = %228
  %233 = load %struct.inode*, %struct.inode** %9, align 8
  %234 = getelementptr inbounds %struct.inode, %struct.inode* %233, i32 0, i32 0
  %235 = load %struct.TYPE_12__*, %struct.TYPE_12__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* %23, align 4
  %239 = sub nsw i32 %238, 1
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 16
  %244 = call i8* @le32_to_cpu(i32 %243)
  %245 = load i32, i32* %25, align 4
  %246 = call i32 @clean_bdev_aliases(i32 %237, i8* %244, i32 %245)
  %247 = load %struct.inode*, %struct.inode** %9, align 8
  %248 = getelementptr inbounds %struct.inode, %struct.inode* %247, i32 0, i32 0
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %248, align 8
  %250 = load i32, i32* %23, align 4
  %251 = sub nsw i32 %250, 1
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 %252
  %254 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 16
  %256 = call i8* @le32_to_cpu(i32 %255)
  %257 = load i32, i32* %25, align 4
  %258 = load i32, i32* @GFP_NOFS, align 4
  %259 = call i32 @sb_issue_zeroout(%struct.TYPE_12__* %249, i8* %256, i32 %257, i32 %258)
  store i32 %259, i32* %16, align 4
  %260 = load i32, i32* %16, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %266

262:                                              ; preds = %232
  %263 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %24, align 8
  %264 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %263, i32 0, i32 0
  %265 = call i32 @mutex_unlock(i32* %264)
  br label %291

266:                                              ; preds = %232
  br label %267

267:                                              ; preds = %266, %228
  %268 = load i32*, i32** %13, align 8
  store i32 1, i32* %268, align 4
  %269 = load %struct.inode*, %struct.inode** %9, align 8
  %270 = load i32, i32* %10, align 4
  %271 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %272 = load i32, i32* %21, align 4
  %273 = load i32, i32* %25, align 4
  %274 = call i32 @ext2_splice_branch(%struct.inode* %269, i32 %270, %struct.TYPE_11__* %271, i32 %272, i32 %273)
  %275 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %24, align 8
  %276 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %275, i32 0, i32 0
  %277 = call i32 @mutex_unlock(i32* %276)
  br label %278

278:                                              ; preds = %267, %172, %119
  %279 = load i32, i32* %25, align 4
  %280 = load i32, i32* %22, align 4
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %284

282:                                              ; preds = %278
  %283 = load i32*, i32** %14, align 8
  store i32 1, i32* %283, align 4
  br label %284

284:                                              ; preds = %282, %278
  %285 = load i32, i32* %25, align 4
  store i32 %285, i32* %16, align 4
  %286 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %287 = load i32, i32* %23, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %289, i64 -1
  store %struct.TYPE_11__* %290, %struct.TYPE_11__** %19, align 8
  br label %291

291:                                              ; preds = %284, %262, %224, %171, %129
  br label %292

292:                                              ; preds = %296, %291
  %293 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %294 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 0
  %295 = icmp ugt %struct.TYPE_11__* %293, %294
  br i1 %295, label %296, label %303

296:                                              ; preds = %292
  %297 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %298 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = call i32 @brelse(i32 %299)
  %301 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %302 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %301, i32 -1
  store %struct.TYPE_11__* %302, %struct.TYPE_11__** %19, align 8
  br label %292

303:                                              ; preds = %292
  %304 = load i32, i32* %16, align 4
  %305 = icmp sgt i32 %304, 0
  br i1 %305, label %306, label %315

306:                                              ; preds = %303
  %307 = load i32, i32* %23, align 4
  %308 = sub nsw i32 %307, 1
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [4 x %struct.TYPE_11__], [4 x %struct.TYPE_11__]* %18, i64 0, i64 %309
  %311 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %310, i32 0, i32 0
  %312 = load i32, i32* %311, align 16
  %313 = call i8* @le32_to_cpu(i32 %312)
  %314 = load i8**, i8*** %12, align 8
  store i8* %313, i8** %314, align 8
  br label %315

315:                                              ; preds = %306, %303
  %316 = load i32, i32* %16, align 4
  store i32 %316, i32* %8, align 4
  br label %317

317:                                              ; preds = %315, %40
  %318 = load i32, i32* %8, align 4
  ret i32 %318
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ext2_block_to_path(%struct.inode*, i32, i32*, i32*) #1

declare dso_local %struct.TYPE_11__* @ext2_get_branch(%struct.inode*, i32, i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @verify_chain(%struct.TYPE_11__*, %struct.TYPE_11__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @brelse(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @ext2_init_block_alloc_info(%struct.inode*) #1

declare dso_local i64 @ext2_find_goal(%struct.inode*, i32, %struct.TYPE_11__*) #1

declare dso_local i32 @ext2_blks_to_allocate(%struct.TYPE_11__*, i32, i64, i32) #1

declare dso_local i32 @ext2_alloc_branch(%struct.inode*, i32, i32*, i64, i32*, %struct.TYPE_11__*) #1

declare dso_local i64 @IS_DAX(%struct.inode*) #1

declare dso_local i32 @clean_bdev_aliases(i32, i8*, i32) #1

declare dso_local i32 @sb_issue_zeroout(%struct.TYPE_12__*, i8*, i32, i32) #1

declare dso_local i32 @ext2_splice_branch(%struct.inode*, i32, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
