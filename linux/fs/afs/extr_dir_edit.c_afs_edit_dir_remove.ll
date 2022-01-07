; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_edit_dir_remove.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dir_edit.c_afs_edit_dir_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.TYPE_8__, %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.qstr = type { i32, i64 }
%struct.afs_xdr_dir_page = type { %union.afs_xdr_dir_block* }
%union.afs_xdr_dir_block = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%union.afs_xdr_dirent = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32 }
%struct.page = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c",,{%d,%s},\00", align 1
@AFS_DIR_BLOCK_SIZE = common dso_local global i32 0, align 4
@AFS_DIR_MAX_BLOCKS = common dso_local global i32 0, align 4
@AFS_VNODE_DIR_VALID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c" [fgp]\00", align 1
@AFS_DIR_DIRENT_SIZE = common dso_local global i32 0, align 4
@AFS_DIR_BLOCKS_PER_PAGE = common dso_local global i32 0, align 4
@AFS_DIR_BLOCKS_WITH_CTR = common dso_local global i32 0, align 4
@AFS_DIR_SLOTS_PER_BLOCK = common dso_local global i32 0, align 4
@afs_edit_dir_delete_noent = common dso_local global i32 0, align 4
@afs_edit_dir_delete = common dso_local global i32 0, align 4
@n_dir_rm = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Remove %s from %u[%u]\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@afs_edit_dir_delete_inval = common dso_local global i32 0, align 4
@afs_edit_dir_delete_error = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_edit_dir_remove(%struct.afs_vnode* %0, %struct.qstr* %1, i32 %2) #0 {
  %4 = alloca %struct.afs_vnode*, align 8
  %5 = alloca %struct.qstr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.afs_xdr_dir_page*, align 8
  %8 = alloca %struct.afs_xdr_dir_page*, align 8
  %9 = alloca %union.afs_xdr_dir_block*, align 8
  %10 = alloca %union.afs_xdr_dir_block*, align 8
  %11 = alloca %union.afs_xdr_dirent*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.afs_vnode* %0, %struct.afs_vnode** %4, align 8
  store %struct.qstr* %1, %struct.qstr** %5, align 8
  store i32 %2, i32* %6, align 4
  %20 = load %struct.qstr*, %struct.qstr** %5, align 8
  %21 = getelementptr inbounds %struct.qstr, %struct.qstr* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.qstr*, %struct.qstr** %5, align 8
  %24 = getelementptr inbounds %struct.qstr, %struct.qstr* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @_enter(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %22, i32 %25)
  %27 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %28 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %27, i32 0, i32 2
  %29 = call i32 @i_size_read(%struct.TYPE_9__* %28)
  store i32 %29, i32* %18, align 4
  %30 = load i32, i32* %18, align 4
  %31 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %3
  %34 = load i32, i32* %18, align 4
  %35 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %36 = load i32, i32* @AFS_DIR_MAX_BLOCKS, align 4
  %37 = mul nsw i32 %35, %36
  %38 = icmp sgt i32 %34, %37
  br i1 %38, label %45, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %18, align 4
  %41 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %42 = sub nsw i32 %41, 1
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %39, %33, %3
  %46 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %47 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %48 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %47, i32 0, i32 0
  %49 = call i32 @clear_bit(i32 %46, i32* %48)
  br label %301

50:                                               ; preds = %39
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* @AFS_DIR_BLOCK_SIZE, align 4
  %53 = sdiv i32 %51, %52
  store i32 %53, i32* %15, align 4
  %54 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %55 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call %struct.page* @find_lock_page(i32 %57, i32 0)
  store %struct.page* %58, %struct.page** %12, align 8
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %67, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %63 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %64 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %63, i32 0, i32 0
  %65 = call i32 @clear_bit(i32 %62, i32* %64)
  %66 = call i32 @_leave(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %301

67:                                               ; preds = %50
  %68 = load %struct.qstr*, %struct.qstr** %5, align 8
  %69 = getelementptr inbounds %struct.qstr, %struct.qstr* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 12, %70
  %72 = add nsw i64 %71, 1
  %73 = add nsw i64 %72, 4
  %74 = load i32, i32* @AFS_DIR_DIRENT_SIZE, align 4
  %75 = call i32 @round_up(i64 %73, i32 %74)
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* @AFS_DIR_DIRENT_SIZE, align 4
  %77 = load i32, i32* %14, align 4
  %78 = udiv i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load %struct.page*, %struct.page** %12, align 8
  %80 = call %struct.afs_xdr_dir_page* @kmap(%struct.page* %79)
  store %struct.afs_xdr_dir_page* %80, %struct.afs_xdr_dir_page** %7, align 8
  %81 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %7, align 8
  %82 = getelementptr inbounds %struct.afs_xdr_dir_page, %struct.afs_xdr_dir_page* %81, i32 0, i32 0
  %83 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %82, align 8
  %84 = getelementptr inbounds %union.afs_xdr_dir_block, %union.afs_xdr_dir_block* %83, i64 0
  store %union.afs_xdr_dir_block* %84, %union.afs_xdr_dir_block** %9, align 8
  store i32 0, i32* %16, align 4
  br label %85

85:                                               ; preds = %165, %67
  %86 = load i32, i32* %16, align 4
  %87 = load i32, i32* %15, align 4
  %88 = icmp ult i32 %86, %87
  br i1 %88, label %89, label %168

89:                                               ; preds = %85
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* @AFS_DIR_BLOCKS_PER_PAGE, align 4
  %92 = udiv i32 %90, %91
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %89
  %96 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %97 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %17, align 4
  %101 = call %struct.page* @find_lock_page(i32 %99, i32 %100)
  store %struct.page* %101, %struct.page** %13, align 8
  %102 = load %struct.page*, %struct.page** %13, align 8
  %103 = icmp ne %struct.page* %102, null
  br i1 %103, label %105, label %104

104:                                              ; preds = %95
  br label %289

105:                                              ; preds = %95
  %106 = load %struct.page*, %struct.page** %13, align 8
  %107 = call %struct.afs_xdr_dir_page* @kmap(%struct.page* %106)
  store %struct.afs_xdr_dir_page* %107, %struct.afs_xdr_dir_page** %8, align 8
  br label %111

108:                                              ; preds = %89
  %109 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %109, %struct.page** %13, align 8
  %110 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %7, align 8
  store %struct.afs_xdr_dir_page* %110, %struct.afs_xdr_dir_page** %8, align 8
  br label %111

111:                                              ; preds = %108, %105
  %112 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %113 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %114 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %113, i32 0, i32 0
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %118, label %117

117:                                              ; preds = %111
  br label %266

118:                                              ; preds = %111
  %119 = load %struct.afs_xdr_dir_page*, %struct.afs_xdr_dir_page** %8, align 8
  %120 = getelementptr inbounds %struct.afs_xdr_dir_page, %struct.afs_xdr_dir_page* %119, i32 0, i32 0
  %121 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %120, align 8
  %122 = load i32, i32* %16, align 4
  %123 = load i32, i32* @AFS_DIR_BLOCKS_PER_PAGE, align 4
  %124 = urem i32 %122, %123
  %125 = zext i32 %124 to i64
  %126 = getelementptr inbounds %union.afs_xdr_dir_block, %union.afs_xdr_dir_block* %121, i64 %125
  store %union.afs_xdr_dir_block* %126, %union.afs_xdr_dir_block** %10, align 8
  %127 = load i32, i32* %16, align 4
  %128 = load i32, i32* @AFS_DIR_BLOCKS_WITH_CTR, align 4
  %129 = icmp ugt i32 %127, %128
  br i1 %129, label %144, label %130

130:                                              ; preds = %118
  %131 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %132 = bitcast %union.afs_xdr_dir_block* %131 to %struct.TYPE_7__*
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 0
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %16, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @AFS_DIR_SLOTS_PER_BLOCK, align 4
  %140 = sub nsw i32 %139, 1
  %141 = load i32, i32* %14, align 4
  %142 = sub i32 %140, %141
  %143 = icmp ule i32 %138, %142
  br i1 %143, label %144, label %153

144:                                              ; preds = %130, %118
  %145 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %146 = load %struct.qstr*, %struct.qstr** %5, align 8
  %147 = load i32, i32* %16, align 4
  %148 = call i32 @afs_dir_scan_block(%union.afs_xdr_dir_block* %145, %struct.qstr* %146, i32 %147)
  store i32 %148, i32* %19, align 4
  %149 = load i32, i32* %19, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %144
  br label %180

152:                                              ; preds = %144
  br label %153

153:                                              ; preds = %152, %130
  %154 = load %struct.page*, %struct.page** %13, align 8
  %155 = load %struct.page*, %struct.page** %12, align 8
  %156 = icmp ne %struct.page* %154, %155
  br i1 %156, label %157, label %164

157:                                              ; preds = %153
  %158 = load %struct.page*, %struct.page** %13, align 8
  %159 = call i32 @unlock_page(%struct.page* %158)
  %160 = load %struct.page*, %struct.page** %13, align 8
  %161 = call i32 @kunmap(%struct.page* %160)
  %162 = load %struct.page*, %struct.page** %13, align 8
  %163 = call i32 @put_page(%struct.page* %162)
  br label %164

164:                                              ; preds = %157, %153
  br label %165

165:                                              ; preds = %164
  %166 = load i32, i32* %16, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %16, align 4
  br label %85

168:                                              ; preds = %85
  %169 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %170 = load i32, i32* %6, align 4
  %171 = load i32, i32* @afs_edit_dir_delete_noent, align 4
  %172 = load %struct.qstr*, %struct.qstr** %5, align 8
  %173 = getelementptr inbounds %struct.qstr, %struct.qstr* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %169, i32 %170, i32 %171, i32 0, i32 0, i32 0, i32 0, i32 %174)
  %176 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %177 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %178 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %177, i32 0, i32 0
  %179 = call i32 @clear_bit(i32 %176, i32* %178)
  br label %258

180:                                              ; preds = %151
  %181 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %182 = bitcast %union.afs_xdr_dir_block* %181 to %union.afs_xdr_dirent**
  %183 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %182, align 8
  %184 = load i32, i32* %19, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds %union.afs_xdr_dirent, %union.afs_xdr_dirent* %183, i64 %185
  store %union.afs_xdr_dirent* %186, %union.afs_xdr_dirent** %11, align 8
  %187 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %188 = load i32, i32* %6, align 4
  %189 = load i32, i32* @afs_edit_dir_delete, align 4
  %190 = load i32, i32* %16, align 4
  %191 = load i32, i32* %19, align 4
  %192 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %11, align 8
  %193 = bitcast %union.afs_xdr_dirent* %192 to %struct.TYPE_6__*
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @ntohl(i32 %195)
  %197 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %11, align 8
  %198 = bitcast %union.afs_xdr_dirent* %197 to %struct.TYPE_6__*
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @ntohl(i32 %200)
  %202 = load %struct.qstr*, %struct.qstr** %5, align 8
  %203 = getelementptr inbounds %struct.qstr, %struct.qstr* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %187, i32 %188, i32 %189, i32 %190, i32 %191, i32 %196, i32 %201, i32 %204)
  %206 = load %union.afs_xdr_dirent*, %union.afs_xdr_dirent** %11, align 8
  %207 = load i32, i32* %14, align 4
  %208 = zext i32 %207 to i64
  %209 = mul i64 8, %208
  %210 = trunc i64 %209 to i32
  %211 = call i32 @memset(%union.afs_xdr_dirent* %206, i32 0, i32 %210)
  %212 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %10, align 8
  %213 = load i32, i32* %19, align 4
  %214 = load i32, i32* %14, align 4
  %215 = call i32 @afs_clear_contig_bits(%union.afs_xdr_dir_block* %212, i32 %213, i32 %214)
  %216 = load %struct.page*, %struct.page** %13, align 8
  %217 = load %struct.page*, %struct.page** %12, align 8
  %218 = icmp ne %struct.page* %216, %217
  br i1 %218, label %219, label %226

219:                                              ; preds = %180
  %220 = load %struct.page*, %struct.page** %13, align 8
  %221 = call i32 @unlock_page(%struct.page* %220)
  %222 = load %struct.page*, %struct.page** %13, align 8
  %223 = call i32 @kunmap(%struct.page* %222)
  %224 = load %struct.page*, %struct.page** %13, align 8
  %225 = call i32 @put_page(%struct.page* %224)
  br label %226

226:                                              ; preds = %219, %180
  %227 = load i32, i32* %16, align 4
  %228 = load i32, i32* @AFS_DIR_BLOCKS_WITH_CTR, align 4
  %229 = icmp ult i32 %227, %228
  br i1 %229, label %230, label %241

230:                                              ; preds = %226
  %231 = load i32, i32* %14, align 4
  %232 = load %union.afs_xdr_dir_block*, %union.afs_xdr_dir_block** %9, align 8
  %233 = bitcast %union.afs_xdr_dir_block* %232 to %struct.TYPE_7__*
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 0
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %16, align 4
  %237 = zext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add i32 %239, %231
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %230, %226
  %242 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %243 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %242, i32 0, i32 2
  %244 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %245 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %244, i32 0, i32 1
  %246 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %245, i32 0, i32 0
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @inode_set_iversion_raw(%struct.TYPE_9__* %243, i32 %247)
  %249 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %250 = load i32, i32* @n_dir_rm, align 4
  %251 = call i32 @afs_stat_v(%struct.afs_vnode* %249, i32 %250)
  %252 = load %struct.qstr*, %struct.qstr** %5, align 8
  %253 = getelementptr inbounds %struct.qstr, %struct.qstr* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 8
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %19, align 4
  %257 = call i32 @_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %255, i32 %256)
  br label %258

258:                                              ; preds = %289, %288, %241, %168
  %259 = load %struct.page*, %struct.page** %12, align 8
  %260 = call i32 @unlock_page(%struct.page* %259)
  %261 = load %struct.page*, %struct.page** %12, align 8
  %262 = call i32 @kunmap(%struct.page* %261)
  %263 = load %struct.page*, %struct.page** %12, align 8
  %264 = call i32 @put_page(%struct.page* %263)
  %265 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %301

266:                                              ; preds = %117
  %267 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %268 = load i32, i32* %6, align 4
  %269 = load i32, i32* @afs_edit_dir_delete_inval, align 4
  %270 = load %struct.qstr*, %struct.qstr** %5, align 8
  %271 = getelementptr inbounds %struct.qstr, %struct.qstr* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %267, i32 %268, i32 %269, i32 0, i32 0, i32 0, i32 0, i32 %272)
  %274 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %275 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %276 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %275, i32 0, i32 0
  %277 = call i32 @clear_bit(i32 %274, i32* %276)
  %278 = load %struct.page*, %struct.page** %13, align 8
  %279 = load %struct.page*, %struct.page** %12, align 8
  %280 = icmp ne %struct.page* %278, %279
  br i1 %280, label %281, label %288

281:                                              ; preds = %266
  %282 = load %struct.page*, %struct.page** %13, align 8
  %283 = call i32 @unlock_page(%struct.page* %282)
  %284 = load %struct.page*, %struct.page** %13, align 8
  %285 = call i32 @kunmap(%struct.page* %284)
  %286 = load %struct.page*, %struct.page** %13, align 8
  %287 = call i32 @put_page(%struct.page* %286)
  br label %288

288:                                              ; preds = %281, %266
  br label %258

289:                                              ; preds = %104
  %290 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %291 = load i32, i32* %6, align 4
  %292 = load i32, i32* @afs_edit_dir_delete_error, align 4
  %293 = load %struct.qstr*, %struct.qstr** %5, align 8
  %294 = getelementptr inbounds %struct.qstr, %struct.qstr* %293, i32 0, i32 0
  %295 = load i32, i32* %294, align 8
  %296 = call i32 @trace_afs_edit_dir(%struct.afs_vnode* %290, i32 %291, i32 %292, i32 0, i32 0, i32 0, i32 0, i32 %295)
  %297 = load i32, i32* @AFS_VNODE_DIR_VALID, align 4
  %298 = load %struct.afs_vnode*, %struct.afs_vnode** %4, align 8
  %299 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %298, i32 0, i32 0
  %300 = call i32 @clear_bit(i32 %297, i32* %299)
  br label %258

301:                                              ; preds = %258, %61, %45
  ret void
}

declare dso_local i32 @_enter(i8*, i64, i32) #1

declare dso_local i32 @i_size_read(%struct.TYPE_9__*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.page* @find_lock_page(i32, i32) #1

declare dso_local i32 @_leave(i8*) #1

declare dso_local i32 @round_up(i64, i32) #1

declare dso_local %struct.afs_xdr_dir_page* @kmap(%struct.page*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @afs_dir_scan_block(%union.afs_xdr_dir_block*, %struct.qstr*, i32) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

declare dso_local i32 @trace_afs_edit_dir(%struct.afs_vnode*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memset(%union.afs_xdr_dirent*, i32, i32) #1

declare dso_local i32 @afs_clear_contig_bits(%union.afs_xdr_dir_block*, i32, i32) #1

declare dso_local i32 @inode_set_iversion_raw(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @afs_stat_v(%struct.afs_vnode*, i32) #1

declare dso_local i32 @_debug(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
