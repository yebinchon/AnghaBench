; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_edit_dir_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_edit_dir_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.qstr = type { i32, i32 }
%struct.afs_fid = type { i32, i32 }
%union.afs_xdr_dir_block = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.afs_xdr_dir_page = type { %union.afs_xdr_dir_block* }
%union.afs_xdr_dirent = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i64*, i8*, i8*, i64, i64* }
%struct.page = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c",,{%d,%s},\00", align 1
@AFS_DIR_BLOCK_SIZE = common dso_local global i32 0, align 4
@AFS_DIR_MAX_BLOCKS = common dso_local global i32 0, align 4
@AFS_VNODE_DIR_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" [fgp]\00", align 1
@AFS_DIR_DIRENT_SIZE = common dso_local global i32 0, align 4
@AFS_DIR_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"block %u: %2u %3u %u\00", align 1
@AFS_DIR_BLOCKS_WITH_CTR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"init %u\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"slot %u\00", align 1
@afs_edit_dir_create_nospc = common dso_local global i32 0, align 4
@AFS_DIR_RESV_BLOCKS0 = common dso_local global i32 0, align 4
@afs_edit_dir_create = common dso_local global i32 0, align 4
@n_dir_cr = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"Insert %s in %u[%u]\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_edit_dir_create_inval = common dso_local global i32 0, align 4
@afs_edit_dir_create_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_edit_dir_add(%struct.afs_vnode* %0, %struct.qstr* %1, %struct.afs_fid* %2, i32 %3) #0 {
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.qstr*, align 8
  %7 = alloca %struct.afs_fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %union.afs_xdr_dir_block*, align 8
  %10 = alloca %union.afs_xdr_dir_block*, align 8
  %11 = alloca %struct.afs_xdr_dir_page*, align 8
  %12 = alloca %struct.afs_xdr_dir_page*, align 8
  %13 = alloca %union.afs_xdr_dirent*, align 8
  %14 = alloca %struct.page*, align 8
  %15 = alloca %struct.page*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %5, align 8
  store %struct.qstr* %1, %struct.qstr** %6, align 8
  store %struct.afs_fid* %2, %struct.afs_fid** %7, align 8
  store i32 %3, i32* %8, align 4
  %23 = load %struct.qstr*, %struct.qstr** %6, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qstr*, %struct.qstr** %6, align 8
  %27 = getelementptr inbounds %struct.qstr, %struct.qstr* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %28)
  %30 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %31 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %30, i32 0, i32 1
  %32 = call i32 @i_size_read(%struct.TYPE_11__* %31)
  store i32 %32, i32* %20, align 4
  %33 = load i32, i32* %20, align 4
  %34 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %35 = load i32, i32* @AFS_DIR_MAX_BLOCKS, align 4
  %36 = mul nsw i32 %34, %35
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %4
  %39 = load i32, i32* %20, align 4
  %40 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %41 = sub nsw i32 %40, 1
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38, %4
  %45 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %46 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %47 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %46, i32 0, i32 0
  %48 = call i32 @clear_bit(i32 %45, i32* %47)
  br label %418

49:                                               ; preds = %38
  %50 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %51 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %21, align 4
  %56 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %57 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %58, align 8
  %60 = load i32, i32* %21, align 4
  %61 = call %struct.page* @find_or_create_page(%struct.TYPE_12__* %59, i32 0, i32 %60)
  store %struct.page* %61, %struct.page** %14, align 8
  %62 = load %struct.page*, %struct.page** %14, align 8
  %63 = icmp ne %struct.page* %62, null
  br i1 %63, label %70, label %64

64:                                               ; preds = %49
  %65 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %67 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %66, i32 0, i32 0
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  %69 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %418

70:                                               ; preds = %49
  %71 = load %struct.qstr*, %struct.qstr** %6, align 8
  %72 = getelementptr inbounds %struct.qstr, %struct.qstr* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 12, %73
  %75 = add nsw i32 %74, 1
  %76 = add nsw i32 %75, 4
  %77 = load i32, i32* @AFS_DIR_DIRENT_SIZE, align 4
  %78 = call i32 @round_up(i32 %76, i32 %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* @AFS_DIR_DIRENT_SIZE, align 4
  %80 = load i32, i32* %16, align 4
  %81 = udiv i32 %80, %79
  store i32 %81, i32* %16, align 4
  %82 = load %struct.page*, %struct.page** %14, align 8
  %83 = call %struct.afs_xdr_dir_page* @kmap(%struct.page* %82)
  store %struct.afs_xdr_dir_page* %83, %struct.afs_xdr_dir_page** %11, align 8
  %84 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %11, align 8
  %85 = getelementptr inbounds %struct.afs_xdr_dir_page, %struct.afs_xdr_dir_page* %84, i32 0, i32 0
  %86 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %85, align 8
  %87 = getelementptr inbounds %union.afs_xdr_dir_block, %union.afs_xdr_dir_block* %86, i64 0
  store %union.afs_xdr_dir_block* %87, %union.afs_xdr_dir_block** %9, align 8
  %88 = load i32, i32* %20, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %70
  br label %255

91:                                               ; preds = %70
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %94 = sdiv i32 %92, %93
  store i32 %94, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %240, %91
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %17, align 4
  %98 = add i32 %97, 1
  %99 = icmp ult i32 %96, %98
  br i1 %99, label %100, label %243

100:                                              ; preds = %95
  %101 = load i32, i32* %18, align 4
  %102 = load i32, i32* @AFS_DIR_BLOCKS_PER_PAGE, align 4
  %103 = udiv i32 %101, %102
  store i32 %103, i32* %19, align 4
  %104 = load i32, i32* %19, align 4
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %100
  %107 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %107, %struct.page** %15, align 8
  %108 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %11, align 8
  store %struct.afs_xdr_dir_page* %108, %struct.afs_xdr_dir_page** %12, align 8
  br label %143

109:                                              ; preds = %100
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @AFS_DIR_MAX_BLOCKS, align 4
  %112 = icmp uge i32 %110, %111
  br i1 %112, label %113, label %114

113:                                              ; preds = %109
  br label %406

114:                                              ; preds = %109
  %115 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %116 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 0
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  store i32 %120, i32* %21, align 4
  %121 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %122 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %123, align 8
  %125 = load i32, i32* %19, align 4
  %126 = load i32, i32* %21, align 4
  %127 = call %struct.page* @find_or_create_page(%struct.TYPE_12__* %124, i32 %125, i32 %126)
  store %struct.page* %127, %struct.page** %15, align 8
  %128 = load %struct.page*, %struct.page** %15, align 8
  %129 = icmp ne %struct.page* %128, null
  br i1 %129, label %131, label %130

130:                                              ; preds = %114
  br label %406

131:                                              ; preds = %114
  %132 = load %struct.page*, %struct.page** %15, align 8
  %133 = call i32 @PagePrivate(%struct.page* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %131
  %136 = load %struct.page*, %struct.page** %15, align 8
  %137 = call i32 @set_page_private(%struct.page* %136, i32 1)
  %138 = load %struct.page*, %struct.page** %15, align 8
  %139 = call i32 @SetPagePrivate(%struct.page* %138)
  br label %140

140:                                              ; preds = %135, %131
  %141 = load %struct.page*, %struct.page** %15, align 8
  %142 = call %struct.afs_xdr_dir_page* @kmap(%struct.page* %141)
  store %struct.afs_xdr_dir_page* %142, %struct.afs_xdr_dir_page** %12, align 8
  br label %143

143:                                              ; preds = %140, %106
  %144 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %145 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %146 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %145, i32 0, i32 0
  %147 = call i32 @test_bit(i32 %144, i32* %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %150, label %149

149:                                              ; preds = %143
  br label %385

150:                                              ; preds = %143
  %151 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %12, align 8
  %152 = getelementptr inbounds %struct.afs_xdr_dir_page, %struct.afs_xdr_dir_page* %151, i32 0, i32 0
  %153 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %152, align 8
  %154 = load i32, i32* %18, align 4
  %155 = load i32, i32* @AFS_DIR_BLOCKS_PER_PAGE, align 4
  %156 = urem i32 %154, %155
  %157 = zext i32 %156 to i64
  %158 = getelementptr inbounds %union.afs_xdr_dir_block, %union.afs_xdr_dir_block* %153, i64 %157
  store %union.afs_xdr_dir_block* %158, %union.afs_xdr_dir_block** %10, align 8
  %159 = load i32, i32* %18, align 4
  %160 = load i32, i32* %18, align 4
  %161 = load i32, i32* @AFS_DIR_BLOCKS_WITH_CTR, align 4
  %162 = icmp ult i32 %160, %161
  br i1 %162, label %163, label %172

163:                                              ; preds = %150
  %164 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %165 = bitcast %union.afs_xdr_dir_block* %164 to %struct.TYPE_9__*
  %166 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %165, i32 0, i32 0
  %167 = load i32*, i32** %166, align 8
  %168 = load i32, i32* %18, align 4
  %169 = zext i32 %168 to i64
  %170 = getelementptr inbounds i32, i32* %167, i64 %169
  %171 = load i32, i32* %170, align 4
  br label %173

172:                                              ; preds = %150
  br label %173

173:                                              ; preds = %172, %163
  %174 = phi i32 [ %171, %163 ], [ 99, %172 ]
  %175 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %176 = bitcast %union.afs_xdr_dir_block* %175 to %struct.TYPE_8__*
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @ntohs(i32 %178)
  %180 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %181 = bitcast %union.afs_xdr_dir_block* %180 to %struct.TYPE_8__*
  %182 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @ntohs(i32 %183)
  %185 = call i32 (i8*, i32, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 %159, i32 %174, i32 %179, i32 %184)
  %186 = load i32, i32* %18, align 4
  %187 = load i32, i32* %17, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %203

189:                                              ; preds = %173
  %190 = load i32, i32* %18, align 4
  %191 = call i32 (i8*, i32, ...) @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %190)
  %192 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %193 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @afs_edit_init_block(%union.afs_xdr_dir_block* %192, %union.afs_xdr_dir_block* %193, i32 %194)
  %196 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %197 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %196, i32 0, i32 1
  %198 = load i32, i32* %18, align 4
  %199 = add i32 %198, 1
  %200 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %201 = mul i32 %199, %200
  %202 = call i32 @i_size_write(%struct.TYPE_11__* %197, i32 %201)
  br label %203

203:                                              ; preds = %189, %173
  %204 = load i32, i32* %18, align 4
  %205 = load i32, i32* @AFS_DIR_BLOCKS_WITH_CTR, align 4
  %206 = icmp uge i32 %204, %205
  br i1 %206, label %218, label %207

207:                                              ; preds = %203
  %208 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %209 = bitcast %union.afs_xdr_dir_block* %208 to %struct.TYPE_9__*
  %210 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %209, i32 0, i32 0
  %211 = load i32*, i32** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = zext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %211, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %16, align 4
  %217 = icmp uge i32 %215, %216
  br i1 %217, label %218, label %228

218:                                              ; preds = %207, %203
  %219 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %220 = load i32, i32* %16, align 4
  %221 = call i32 @afs_find_contig_bits(%union.afs_xdr_dir_block* %219, i32 %220)
  store i32 %221, i32* %22, align 4
  %222 = load i32, i32* %22, align 4
  %223 = icmp sge i32 %222, 0
  br i1 %223, label %224, label %227

224:                                              ; preds = %218
  %225 = load i32, i32* %22, align 4
  %226 = call i32 (i8*, i32, ...) @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i32 %225)
  br label %267

227:                                              ; preds = %218
  br label %228

228:                                              ; preds = %227, %207
  %229 = load %struct.page*, %struct.page** %15, align 8
  %230 = load %struct.page*, %struct.page** %14, align 8
  %231 = icmp ne %struct.page* %229, %230
  br i1 %231, label %232, label %239

232:                                              ; preds = %228
  %233 = load %struct.page*, %struct.page** %15, align 8
  %234 = call i32 @unlock_page(%struct.page* %233)
  %235 = load %struct.page*, %struct.page** %15, align 8
  %236 = call i32 @kunmap(%struct.page* %235)
  %237 = load %struct.page*, %struct.page** %15, align 8
  %238 = call i32 @put_page(%struct.page* %237)
  br label %239

239:                                              ; preds = %232, %228
  br label %240

240:                                              ; preds = %239
  %241 = load i32, i32* %18, align 4
  %242 = add i32 %241, 1
  store i32 %242, i32* %18, align 4
  br label %95

243:                                              ; preds = %95
  %244 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %245 = load i32, i32* %8, align 4
  %246 = load i32, i32* @afs_edit_dir_create_nospc, align 4
  %247 = load %struct.qstr*, %struct.qstr** %6, align 8
  %248 = getelementptr inbounds %struct.qstr, %struct.qstr* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %244, i32 %245, i32 %246, i32 0, i32 0, i32 0, i32 0, i32 %249)
  %251 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %252 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %253 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %252, i32 0, i32 0
  %254 = call i32 @clear_bit(i32 %251, i32* %253)
  br label %377

255:                                              ; preds = %90
  %256 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %257 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %258 = call i32 @afs_edit_init_block(%union.afs_xdr_dir_block* %256, %union.afs_xdr_dir_block* %257, i32 0)
  %259 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  store i32 %259, i32* %20, align 4
  %260 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %261 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %260, i32 0, i32 1
  %262 = load i32, i32* %20, align 4
  %263 = call i32 @i_size_write(%struct.TYPE_11__* %261, i32 %262)
  %264 = load i32, i32* @AFS_DIR_RESV_BLOCKS0, align 4
  store i32 %264, i32* %22, align 4
  %265 = load %struct.page*, %struct.page** %14, align 8
  store %struct.page* %265, %struct.page** %15, align 8
  %266 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  store %union.afs_xdr_dir_block* %266, %union.afs_xdr_dir_block** %10, align 8
  store i32 1, i32* %17, align 4
  store i32 0, i32* %18, align 4
  br label %267

267:                                              ; preds = %255, %224
  %268 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %269 = load i32, i32* %8, align 4
  %270 = load i32, i32* @afs_edit_dir_create, align 4
  %271 = load i32, i32* %18, align 4
  %272 = load i32, i32* %22, align 4
  %273 = load %struct.afs_fid*, %struct.afs_fid** %7, align 8
  %274 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = load %struct.afs_fid*, %struct.afs_fid** %7, align 8
  %277 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 4
  %279 = load %struct.qstr*, %struct.qstr** %6, align 8
  %280 = getelementptr inbounds %struct.qstr, %struct.qstr* %279, i32 0, i32 1
  %281 = load i32, i32* %280, align 4
  %282 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %268, i32 %269, i32 %270, i32 %271, i32 %272, i32 %275, i32 %278, i32 %281)
  %283 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %284 = bitcast %union.afs_xdr_dir_block* %283 to %union.afs_xdr_dirent**
  %285 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %284, align 8
  %286 = load i32, i32* %22, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds %union.afs_xdr_dirent, %union.afs_xdr_dirent* %285, i64 %287
  store %union.afs_xdr_dirent* %288, %union.afs_xdr_dirent** %13, align 8
  %289 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %290 = bitcast %union.afs_xdr_dirent* %289 to %struct.TYPE_10__*
  %291 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %290, i32 0, i32 0
  store i32 1, i32* %291, align 8
  %292 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %293 = bitcast %union.afs_xdr_dirent* %292 to %struct.TYPE_10__*
  %294 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %293, i32 0, i32 5
  %295 = load i64*, i64** %294, align 8
  %296 = getelementptr inbounds i64, i64* %295, i64 0
  store i64 0, i64* %296, align 8
  %297 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %298 = bitcast %union.afs_xdr_dirent* %297 to %struct.TYPE_10__*
  %299 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %298, i32 0, i32 4
  store i64 0, i64* %299, align 8
  %300 = load %struct.afs_fid*, %struct.afs_fid** %7, align 8
  %301 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %300, i32 0, i32 1
  %302 = load i32, i32* %301, align 4
  %303 = call i8* @htonl(i32 %302)
  %304 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %305 = bitcast %union.afs_xdr_dirent* %304 to %struct.TYPE_10__*
  %306 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %305, i32 0, i32 3
  store i8* %303, i8** %306, align 8
  %307 = load %struct.afs_fid*, %struct.afs_fid** %7, align 8
  %308 = getelementptr inbounds %struct.afs_fid, %struct.afs_fid* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = call i8* @htonl(i32 %309)
  %311 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %312 = bitcast %union.afs_xdr_dirent* %311 to %struct.TYPE_10__*
  %313 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %312, i32 0, i32 2
  store i8* %310, i8** %313, align 8
  %314 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %315 = bitcast %union.afs_xdr_dirent* %314 to %struct.TYPE_10__*
  %316 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %315, i32 0, i32 1
  %317 = load i64*, i64** %316, align 8
  %318 = load %struct.qstr*, %struct.qstr** %6, align 8
  %319 = getelementptr inbounds %struct.qstr, %struct.qstr* %318, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = load %struct.qstr*, %struct.qstr** %6, align 8
  %322 = getelementptr inbounds %struct.qstr, %struct.qstr* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 4
  %324 = add nsw i32 %323, 1
  %325 = call i32 @memcpy(i64* %317, i32 %320, i32 %324)
  %326 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %13, align 8
  %327 = bitcast %union.afs_xdr_dirent* %326 to %struct.TYPE_10__*
  %328 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %327, i32 0, i32 1
  %329 = load i64*, i64** %328, align 8
  %330 = load %struct.qstr*, %struct.qstr** %6, align 8
  %331 = getelementptr inbounds %struct.qstr, %struct.qstr* %330, i32 0, i32 0
  %332 = load i32, i32* %331, align 4
  %333 = sext i32 %332 to i64
  %334 = getelementptr inbounds i64, i64* %329, i64 %333
  store i64 0, i64* %334, align 8
  %335 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %16, align 4
  %338 = call i32 @afs_set_contig_bits(%union.afs_xdr_dir_block* %335, i32 %336, i32 %337)
  %339 = load %struct.page*, %struct.page** %15, align 8
  %340 = load %struct.page*, %struct.page** %14, align 8
  %341 = icmp ne %struct.page* %339, %340
  br i1 %341, label %342, label %349

342:                                              ; preds = %267
  %343 = load %struct.page*, %struct.page** %15, align 8
  %344 = call i32 @unlock_page(%struct.page* %343)
  %345 = load %struct.page*, %struct.page** %15, align 8
  %346 = call i32 @kunmap(%struct.page* %345)
  %347 = load %struct.page*, %struct.page** %15, align 8
  %348 = call i32 @put_page(%struct.page* %347)
  br label %349

349:                                              ; preds = %342, %267
  %350 = load i32, i32* %18, align 4
  %351 = load i32, i32* @AFS_DIR_BLOCKS_WITH_CTR, align 4
  %352 = icmp ult i32 %350, %351
  br i1 %352, label %353, label %364

353:                                              ; preds = %349
  %354 = load i32, i32* %16, align 4
  %355 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %356 = bitcast %union.afs_xdr_dir_block* %355 to %struct.TYPE_9__*
  %357 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %356, i32 0, i32 0
  %358 = load i32*, i32** %357, align 8
  %359 = load i32, i32* %18, align 4
  %360 = zext i32 %359 to i64
  %361 = getelementptr inbounds i32, i32* %358, i64 %360
  %362 = load i32, i32* %361, align 4
  %363 = sub i32 %362, %354
  store i32 %363, i32* %361, align 4
  br label %364

364:                                              ; preds = %353, %349
  %365 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %366 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %365, i32 0, i32 1
  %367 = call i32 @inode_inc_iversion_raw(%struct.TYPE_11__* %366)
  %368 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %369 = load i32, i32* @n_dir_cr, align 4
  %370 = call i32 @afs_stat_v(%struct.afs_vnode* %368, i32 %369)
  %371 = load %struct.qstr*, %struct.qstr** %6, align 8
  %372 = getelementptr inbounds %struct.qstr, %struct.qstr* %371, i32 0, i32 1
  %373 = load i32, i32* %372, align 4
  %374 = load i32, i32* %18, align 4
  %375 = load i32, i32* %22, align 4
  %376 = call i32 (i8*, i32, ...) @_debug(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %373, i32 %374, i32 %375)
  br label %377

377:                                              ; preds = %406, %405, %364, %243
  %378 = load %struct.page*, %struct.page** %14, align 8
  %379 = call i32 @unlock_page(%struct.page* %378)
  %380 = load %struct.page*, %struct.page** %14, align 8
  %381 = call i32 @kunmap(%struct.page* %380)
  %382 = load %struct.page*, %struct.page** %14, align 8
  %383 = call i32 @put_page(%struct.page* %382)
  %384 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i64 0, i64 0))
  br label %418

385:                                              ; preds = %149
  %386 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %387 = load i32, i32* %8, align 4
  %388 = load i32, i32* @afs_edit_dir_create_inval, align 4
  %389 = load %struct.qstr*, %struct.qstr** %6, align 8
  %390 = getelementptr inbounds %struct.qstr, %struct.qstr* %389, i32 0, i32 1
  %391 = load i32, i32* %390, align 4
  %392 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %386, i32 %387, i32 %388, i32 0, i32 0, i32 0, i32 0, i32 %391)
  %393 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %394 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %395 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %394, i32 0, i32 0
  %396 = call i32 @clear_bit(i32 %393, i32* %395)
  %397 = load %struct.page*, %struct.page** %15, align 8
  %398 = load %struct.page*, %struct.page** %14, align 8
  %399 = icmp ne %struct.page* %397, %398
  br i1 %399, label %400, label %405

400:                                              ; preds = %385
  %401 = load %struct.page*, %struct.page** %15, align 8
  %402 = call i32 @kunmap(%struct.page* %401)
  %403 = load %struct.page*, %struct.page** %15, align 8
  %404 = call i32 @put_page(%struct.page* %403)
  br label %405

405:                                              ; preds = %400, %385
  br label %377

406:                                              ; preds = %130, %113
  %407 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %408 = load i32, i32* %8, align 4
  %409 = load i32, i32* @afs_edit_dir_create_error, align 4
  %410 = load %struct.qstr*, %struct.qstr** %6, align 8
  %411 = getelementptr inbounds %struct.qstr, %struct.qstr* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %407, i32 %408, i32 %409, i32 0, i32 0, i32 0, i32 0, i32 %412)
  %414 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %415 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %416 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %415, i32 0, i32 0
  %417 = call i32 @clear_bit(i32 %414, i32* %416)
  br label %377

418:                                              ; preds = %377, %64, %44
  ret void
}

declare dso_local i32 @_enter(i8*, i32, i32) #1

declare dso_local i32 @i_size_read(%struct.TYPE_11__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.page* @find_or_create_page(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @round_up(i32, i32) #1

declare dso_local %struct.afs_xdr_dir_page* @kmap(%struct.page*) #1

declare dso_local i32 @PagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @SetPagePrivate(%struct.page*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @_debug(i8*, i32, ...) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @afs_edit_init_block(%union.afs_xdr_dir_block*, %union.afs_xdr_dir_block*, i32) #1

declare dso_local i32 @i_size_write(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @afs_find_contig_bits(%union.afs_xdr_dir_block*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @trace_afs_edit_dir(%struct.afs_vnode*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @afs_set_contig_bits(%union.afs_xdr_dir_block*, i32, i32) #1

declare dso_local i32 @inode_inc_iversion_raw(%struct.TYPE_11__*) #1

declare dso_local i32 @afs_stat_v(%struct.afs_vnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
