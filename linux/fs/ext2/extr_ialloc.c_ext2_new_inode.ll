; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i64, i64, i32, i32, i32, i64, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.qstr = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext2_group_desc = type { i32, i32 }
%struct.ext2_super_block = type { i32 }
%struct.ext2_inode_info = type { i32, i32, i32, i64, i32*, i64, i64, i64, i64, i64, i64, i32 }
%struct.ext2_sb_info = type { i32, i32*, i32, i32, i32, i32, %struct.ext2_super_block* }

@ENOMEM = common dso_local global i32 0, align 4
@OLDALLOC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ext2_new_inode\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"reserved inode or inode > inodes count - block_group = %d,inode=%lu\00", align 1
@GRPID = common dso_local global i32 0, align 4
@EXT2_FL_INHERITED = common dso_local global i32 0, align 4
@EXT2_STATE_NEW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"inode number already in use - inode=%lu\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"allocating inode %lu\0A\00", align 1
@S_NOQUOTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @ext2_new_inode(%struct.inode* %0, i32 %1, %struct.qstr* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qstr*, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.ext2_group_desc*, align 8
  %16 = alloca %struct.ext2_super_block*, align 8
  %17 = alloca %struct.ext2_inode_info*, align 8
  %18 = alloca %struct.ext2_sb_info*, align 8
  %19 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.qstr* %2, %struct.qstr** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i64 0, i64* %13, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 10
  %22 = load %struct.super_block*, %struct.super_block** %21, align 8
  store %struct.super_block* %22, %struct.super_block** %8, align 8
  %23 = load %struct.super_block*, %struct.super_block** %8, align 8
  %24 = call %struct.inode* @new_inode(%struct.super_block* %23)
  store %struct.inode* %24, %struct.inode** %14, align 8
  %25 = load %struct.inode*, %struct.inode** %14, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  %30 = call %struct.inode* @ERR_PTR(i32 %29)
  store %struct.inode* %30, %struct.inode** %4, align 8
  br label %427

31:                                               ; preds = %3
  %32 = load %struct.inode*, %struct.inode** %14, align 8
  %33 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %32)
  store %struct.ext2_inode_info* %33, %struct.ext2_inode_info** %17, align 8
  %34 = load %struct.super_block*, %struct.super_block** %8, align 8
  %35 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %34)
  store %struct.ext2_sb_info* %35, %struct.ext2_sb_info** %18, align 8
  %36 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %37 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %36, i32 0, i32 6
  %38 = load %struct.ext2_super_block*, %struct.ext2_super_block** %37, align 8
  store %struct.ext2_super_block* %38, %struct.ext2_super_block** %16, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @S_ISDIR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load %struct.super_block*, %struct.super_block** %8, align 8
  %44 = load i32, i32* @OLDALLOC, align 4
  %45 = call i64 @test_opt(%struct.super_block* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.super_block*, %struct.super_block** %8, align 8
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i32 @find_group_dir(%struct.super_block* %48, %struct.inode* %49)
  store i32 %50, i32* %11, align 4
  br label %55

51:                                               ; preds = %42
  %52 = load %struct.super_block*, %struct.super_block** %8, align 8
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call i32 @find_group_orlov(%struct.super_block* %52, %struct.inode* %53)
  store i32 %54, i32* %11, align 4
  br label %55

55:                                               ; preds = %51, %47
  br label %60

56:                                               ; preds = %31
  %57 = load %struct.super_block*, %struct.super_block** %8, align 8
  %58 = load %struct.inode*, %struct.inode** %5, align 8
  %59 = call i32 @find_group_other(%struct.super_block* %57, %struct.inode* %58)
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %56, %55
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %19, align 4
  br label %420

66:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  br label %67

67:                                               ; preds = %151, %66
  %68 = load i32, i32* %12, align 4
  %69 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %70 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = icmp slt i32 %68, %71
  br i1 %72, label %73, label %154

73:                                               ; preds = %67
  %74 = load %struct.super_block*, %struct.super_block** %8, align 8
  %75 = load i32, i32* %11, align 4
  %76 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %74, i32 %75, %struct.buffer_head** %10)
  store %struct.ext2_group_desc* %76, %struct.ext2_group_desc** %15, align 8
  %77 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %15, align 8
  %78 = icmp ne %struct.ext2_group_desc* %77, null
  br i1 %78, label %88, label %79

79:                                               ; preds = %73
  %80 = load i32, i32* %11, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %11, align 4
  %82 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %83 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp eq i32 %81, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %87

87:                                               ; preds = %86, %79
  br label %151

88:                                               ; preds = %73
  %89 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %90 = call i32 @brelse(%struct.buffer_head* %89)
  %91 = load %struct.super_block*, %struct.super_block** %8, align 8
  %92 = load i32, i32* %11, align 4
  %93 = call %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %91, i32 %92)
  store %struct.buffer_head* %93, %struct.buffer_head** %9, align 8
  %94 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %95 = icmp ne %struct.buffer_head* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %88
  %97 = load i32, i32* @EIO, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %19, align 4
  br label %420

99:                                               ; preds = %88
  store i64 0, i64* %13, align 8
  br label %100

100:                                              ; preds = %149, %99
  %101 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %102 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i64*
  %105 = load %struct.super_block*, %struct.super_block** %8, align 8
  %106 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %105)
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @ext2_find_next_zero_bit(i64* %104, i32 %106, i64 %107)
  store i64 %108, i64* %13, align 8
  %109 = load i64, i64* %13, align 8
  %110 = load %struct.super_block*, %struct.super_block** %8, align 8
  %111 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %110)
  %112 = sext i32 %111 to i64
  %113 = icmp sge i64 %109, %112
  br i1 %113, label %114, label %123

114:                                              ; preds = %100
  %115 = load i32, i32* %11, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %11, align 4
  %117 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %118 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %122

121:                                              ; preds = %114
  store i32 0, i32* %11, align 4
  br label %122

122:                                              ; preds = %121, %114
  br label %151

123:                                              ; preds = %100
  %124 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %125 = load i32, i32* %11, align 4
  %126 = call i32* @sb_bgl_lock(%struct.ext2_sb_info* %124, i32 %125)
  %127 = load i64, i64* %13, align 8
  %128 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %129 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i64 @ext2_set_bit_atomic(i32* %126, i64 %127, i64 %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %150

133:                                              ; preds = %123
  %134 = load i64, i64* %13, align 8
  %135 = add nsw i64 %134, 1
  store i64 %135, i64* %13, align 8
  %136 = load %struct.super_block*, %struct.super_block** %8, align 8
  %137 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %136)
  %138 = sext i32 %137 to i64
  %139 = icmp sge i64 %135, %138
  br i1 %139, label %140, label %149

140:                                              ; preds = %133
  %141 = load i32, i32* %11, align 4
  %142 = add nsw i32 %141, 1
  store i32 %142, i32* %11, align 4
  %143 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %144 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = icmp eq i32 %142, %145
  br i1 %146, label %147, label %148

147:                                              ; preds = %140
  store i32 0, i32* %11, align 4
  br label %148

148:                                              ; preds = %147, %140
  br label %151

149:                                              ; preds = %133
  br label %100

150:                                              ; preds = %123
  br label %159

151:                                              ; preds = %148, %122, %87
  %152 = load i32, i32* %12, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %12, align 4
  br label %67

154:                                              ; preds = %67
  %155 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %156 = call i32 @brelse(%struct.buffer_head* %155)
  %157 = load i32, i32* @ENOSPC, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %19, align 4
  br label %420

159:                                              ; preds = %150
  %160 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %161 = call i32 @mark_buffer_dirty(%struct.buffer_head* %160)
  %162 = load %struct.super_block*, %struct.super_block** %8, align 8
  %163 = getelementptr inbounds %struct.super_block, %struct.super_block* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %166 = and i32 %164, %165
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %171

168:                                              ; preds = %159
  %169 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %170 = call i32 @sync_dirty_buffer(%struct.buffer_head* %169)
  br label %171

171:                                              ; preds = %168, %159
  %172 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %173 = call i32 @brelse(%struct.buffer_head* %172)
  %174 = load i32, i32* %11, align 4
  %175 = load %struct.super_block*, %struct.super_block** %8, align 8
  %176 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %175)
  %177 = mul nsw i32 %174, %176
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = load i64, i64* %13, align 8
  %181 = add nsw i64 %180, %179
  store i64 %181, i64* %13, align 8
  %182 = load i64, i64* %13, align 8
  %183 = load %struct.super_block*, %struct.super_block** %8, align 8
  %184 = call i64 @EXT2_FIRST_INO(%struct.super_block* %183)
  %185 = icmp slt i64 %182, %184
  br i1 %185, label %193, label %186

186:                                              ; preds = %171
  %187 = load i64, i64* %13, align 8
  %188 = load %struct.ext2_super_block*, %struct.ext2_super_block** %16, align 8
  %189 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @le32_to_cpu(i32 %190)
  %192 = icmp sgt i64 %187, %191
  br i1 %192, label %193, label %201

193:                                              ; preds = %186, %171
  %194 = load %struct.super_block*, %struct.super_block** %8, align 8
  %195 = load i32, i32* %11, align 4
  %196 = sext i32 %195 to i64
  %197 = load i64, i64* %13, align 8
  %198 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @ext2_error(%struct.super_block* %194, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i64 %196, i64 %197)
  %199 = load i32, i32* @EIO, align 4
  %200 = sub nsw i32 0, %199
  store i32 %200, i32* %19, align 4
  br label %420

201:                                              ; preds = %186
  %202 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %203 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %202, i32 0, i32 5
  %204 = call i32 @percpu_counter_add(i32* %203, i32 -1)
  %205 = load i32, i32* %6, align 4
  %206 = call i64 @S_ISDIR(i32 %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %212

208:                                              ; preds = %201
  %209 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %210 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %209, i32 0, i32 4
  %211 = call i32 @percpu_counter_inc(i32* %210)
  br label %212

212:                                              ; preds = %208, %201
  %213 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %214 = load i32, i32* %11, align 4
  %215 = call i32* @sb_bgl_lock(%struct.ext2_sb_info* %213, i32 %214)
  %216 = call i32 @spin_lock(i32* %215)
  %217 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %15, align 8
  %218 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %217, i32 0, i32 1
  %219 = call i32 @le16_add_cpu(i32* %218, i32 -1)
  %220 = load i32, i32* %6, align 4
  %221 = call i64 @S_ISDIR(i32 %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %245

223:                                              ; preds = %212
  %224 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %225 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %224, i32 0, i32 1
  %226 = load i32*, i32** %225, align 8
  %227 = load i32, i32* %11, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, i32* %226, i64 %228
  %230 = load i32, i32* %229, align 4
  %231 = icmp slt i32 %230, 255
  br i1 %231, label %232, label %241

232:                                              ; preds = %223
  %233 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %234 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %233, i32 0, i32 1
  %235 = load i32*, i32** %234, align 8
  %236 = load i32, i32* %11, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds i32, i32* %235, i64 %237
  %239 = load i32, i32* %238, align 4
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 4
  br label %241

241:                                              ; preds = %232, %223
  %242 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %15, align 8
  %243 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %242, i32 0, i32 0
  %244 = call i32 @le16_add_cpu(i32* %243, i32 1)
  br label %264

245:                                              ; preds = %212
  %246 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %247 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %246, i32 0, i32 1
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %11, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %263

254:                                              ; preds = %245
  %255 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %256 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %255, i32 0, i32 1
  %257 = load i32*, i32** %256, align 8
  %258 = load i32, i32* %11, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds i32, i32* %257, i64 %259
  %261 = load i32, i32* %260, align 4
  %262 = add nsw i32 %261, -1
  store i32 %262, i32* %260, align 4
  br label %263

263:                                              ; preds = %254, %245
  br label %264

264:                                              ; preds = %263, %241
  %265 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %266 = load i32, i32* %11, align 4
  %267 = call i32* @sb_bgl_lock(%struct.ext2_sb_info* %265, i32 %266)
  %268 = call i32 @spin_unlock(i32* %267)
  %269 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %270 = call i32 @mark_buffer_dirty(%struct.buffer_head* %269)
  %271 = load %struct.super_block*, %struct.super_block** %8, align 8
  %272 = load i32, i32* @GRPID, align 4
  %273 = call i64 @test_opt(%struct.super_block* %271, i32 %272)
  %274 = icmp ne i64 %273, 0
  br i1 %274, label %275, label %287

275:                                              ; preds = %264
  %276 = load i32, i32* %6, align 4
  %277 = load %struct.inode*, %struct.inode** %14, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 9
  store i32 %276, i32* %278, align 8
  %279 = call i32 (...) @current_fsuid()
  %280 = load %struct.inode*, %struct.inode** %14, align 8
  %281 = getelementptr inbounds %struct.inode, %struct.inode* %280, i32 0, i32 8
  store i32 %279, i32* %281, align 4
  %282 = load %struct.inode*, %struct.inode** %5, align 8
  %283 = getelementptr inbounds %struct.inode, %struct.inode* %282, i32 0, i32 7
  %284 = load i32, i32* %283, align 8
  %285 = load %struct.inode*, %struct.inode** %14, align 8
  %286 = getelementptr inbounds %struct.inode, %struct.inode* %285, i32 0, i32 7
  store i32 %284, i32* %286, align 8
  br label %292

287:                                              ; preds = %264
  %288 = load %struct.inode*, %struct.inode** %14, align 8
  %289 = load %struct.inode*, %struct.inode** %5, align 8
  %290 = load i32, i32* %6, align 4
  %291 = call i32 @inode_init_owner(%struct.inode* %288, %struct.inode* %289, i32 %290)
  br label %292

292:                                              ; preds = %287, %275
  %293 = load i64, i64* %13, align 8
  %294 = load %struct.inode*, %struct.inode** %14, align 8
  %295 = getelementptr inbounds %struct.inode, %struct.inode* %294, i32 0, i32 1
  store i64 %293, i64* %295, align 8
  %296 = load %struct.inode*, %struct.inode** %14, align 8
  %297 = getelementptr inbounds %struct.inode, %struct.inode* %296, i32 0, i32 6
  store i64 0, i64* %297, align 8
  %298 = load %struct.inode*, %struct.inode** %14, align 8
  %299 = call i32 @current_time(%struct.inode* %298)
  %300 = load %struct.inode*, %struct.inode** %14, align 8
  %301 = getelementptr inbounds %struct.inode, %struct.inode* %300, i32 0, i32 3
  store i32 %299, i32* %301, align 8
  %302 = load %struct.inode*, %struct.inode** %14, align 8
  %303 = getelementptr inbounds %struct.inode, %struct.inode* %302, i32 0, i32 4
  store i32 %299, i32* %303, align 4
  %304 = load %struct.inode*, %struct.inode** %14, align 8
  %305 = getelementptr inbounds %struct.inode, %struct.inode* %304, i32 0, i32 5
  store i32 %299, i32* %305, align 8
  %306 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %307 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %306, i32 0, i32 11
  %308 = load i32, i32* %307, align 8
  %309 = call i32 @memset(i32 %308, i32 0, i32 4)
  %310 = load i32, i32* %6, align 4
  %311 = load %struct.inode*, %struct.inode** %5, align 8
  %312 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %311)
  %313 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* @EXT2_FL_INHERITED, align 4
  %316 = and i32 %314, %315
  %317 = call i32 @ext2_mask_flags(i32 %310, i32 %316)
  %318 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %319 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 8
  %320 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %321 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %320, i32 0, i32 10
  store i64 0, i64* %321, align 8
  %322 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %323 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %322, i32 0, i32 9
  store i64 0, i64* %323, align 8
  %324 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %325 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %324, i32 0, i32 8
  store i64 0, i64* %325, align 8
  %326 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %327 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %326, i32 0, i32 7
  store i64 0, i64* %327, align 8
  %328 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %329 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %328, i32 0, i32 6
  store i64 0, i64* %329, align 8
  %330 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %331 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %330, i32 0, i32 5
  store i64 0, i64* %331, align 8
  %332 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %333 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %332, i32 0, i32 4
  store i32* null, i32** %333, align 8
  %334 = load i32, i32* %11, align 4
  %335 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %336 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 4
  %337 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %338 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %337, i32 0, i32 3
  store i64 0, i64* %338, align 8
  %339 = load i32, i32* @EXT2_STATE_NEW, align 4
  %340 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %17, align 8
  %341 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %340, i32 0, i32 2
  store i32 %339, i32* %341, align 8
  %342 = load %struct.inode*, %struct.inode** %14, align 8
  %343 = call i32 @ext2_set_inode_flags(%struct.inode* %342)
  %344 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %345 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %344, i32 0, i32 2
  %346 = call i32 @spin_lock(i32* %345)
  %347 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %348 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %347, i32 0, i32 3
  %349 = load i32, i32* %348, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %348, align 4
  %351 = sext i32 %349 to i64
  %352 = load %struct.inode*, %struct.inode** %14, align 8
  %353 = getelementptr inbounds %struct.inode, %struct.inode* %352, i32 0, i32 2
  store i64 %351, i64* %353, align 8
  %354 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %18, align 8
  %355 = getelementptr inbounds %struct.ext2_sb_info, %struct.ext2_sb_info* %354, i32 0, i32 2
  %356 = call i32 @spin_unlock(i32* %355)
  %357 = load %struct.inode*, %struct.inode** %14, align 8
  %358 = call i64 @insert_inode_locked(%struct.inode* %357)
  %359 = icmp slt i64 %358, 0
  br i1 %359, label %360, label %366

360:                                              ; preds = %292
  %361 = load %struct.super_block*, %struct.super_block** %8, align 8
  %362 = load i64, i64* %13, align 8
  %363 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @ext2_error(%struct.super_block* %361, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i64 %362)
  %364 = load i32, i32* @EIO, align 4
  %365 = sub nsw i32 0, %364
  store i32 %365, i32* %19, align 4
  br label %420

366:                                              ; preds = %292
  %367 = load %struct.inode*, %struct.inode** %14, align 8
  %368 = call i32 @dquot_initialize(%struct.inode* %367)
  store i32 %368, i32* %19, align 4
  %369 = load i32, i32* %19, align 4
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %371, label %372

371:                                              ; preds = %366
  br label %406

372:                                              ; preds = %366
  %373 = load %struct.inode*, %struct.inode** %14, align 8
  %374 = call i32 @dquot_alloc_inode(%struct.inode* %373)
  store i32 %374, i32* %19, align 4
  %375 = load i32, i32* %19, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %372
  br label %406

378:                                              ; preds = %372
  %379 = load %struct.inode*, %struct.inode** %14, align 8
  %380 = load %struct.inode*, %struct.inode** %5, align 8
  %381 = call i32 @ext2_init_acl(%struct.inode* %379, %struct.inode* %380)
  store i32 %381, i32* %19, align 4
  %382 = load i32, i32* %19, align 4
  %383 = icmp ne i32 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %378
  br label %403

385:                                              ; preds = %378
  %386 = load %struct.inode*, %struct.inode** %14, align 8
  %387 = load %struct.inode*, %struct.inode** %5, align 8
  %388 = load %struct.qstr*, %struct.qstr** %7, align 8
  %389 = call i32 @ext2_init_security(%struct.inode* %386, %struct.inode* %387, %struct.qstr* %388)
  store i32 %389, i32* %19, align 4
  %390 = load i32, i32* %19, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

392:                                              ; preds = %385
  br label %403

393:                                              ; preds = %385
  %394 = load %struct.inode*, %struct.inode** %14, align 8
  %395 = call i32 @mark_inode_dirty(%struct.inode* %394)
  %396 = load %struct.inode*, %struct.inode** %14, align 8
  %397 = getelementptr inbounds %struct.inode, %struct.inode* %396, i32 0, i32 1
  %398 = load i64, i64* %397, align 8
  %399 = call i32 @ext2_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i64 %398)
  %400 = load %struct.inode*, %struct.inode** %14, align 8
  %401 = call i32 @ext2_preread_inode(%struct.inode* %400)
  %402 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %402, %struct.inode** %4, align 8
  br label %427

403:                                              ; preds = %392, %384
  %404 = load %struct.inode*, %struct.inode** %14, align 8
  %405 = call i32 @dquot_free_inode(%struct.inode* %404)
  br label %406

406:                                              ; preds = %403, %377, %371
  %407 = load %struct.inode*, %struct.inode** %14, align 8
  %408 = call i32 @dquot_drop(%struct.inode* %407)
  %409 = load i32, i32* @S_NOQUOTA, align 4
  %410 = load %struct.inode*, %struct.inode** %14, align 8
  %411 = getelementptr inbounds %struct.inode, %struct.inode* %410, i32 0, i32 0
  %412 = load i32, i32* %411, align 8
  %413 = or i32 %412, %409
  store i32 %413, i32* %411, align 8
  %414 = load %struct.inode*, %struct.inode** %14, align 8
  %415 = call i32 @clear_nlink(%struct.inode* %414)
  %416 = load %struct.inode*, %struct.inode** %14, align 8
  %417 = call i32 @discard_new_inode(%struct.inode* %416)
  %418 = load i32, i32* %19, align 4
  %419 = call %struct.inode* @ERR_PTR(i32 %418)
  store %struct.inode* %419, %struct.inode** %4, align 8
  br label %427

420:                                              ; preds = %360, %193, %154, %96, %63
  %421 = load %struct.inode*, %struct.inode** %14, align 8
  %422 = call i32 @make_bad_inode(%struct.inode* %421)
  %423 = load %struct.inode*, %struct.inode** %14, align 8
  %424 = call i32 @iput(%struct.inode* %423)
  %425 = load i32, i32* %19, align 4
  %426 = call %struct.inode* @ERR_PTR(i32 %425)
  store %struct.inode* %426, %struct.inode** %4, align 8
  br label %427

427:                                              ; preds = %420, %406, %393, %27
  %428 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %428
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @find_group_dir(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @find_group_orlov(%struct.super_block*, %struct.inode*) #1

declare dso_local i32 @find_group_other(%struct.super_block*, %struct.inode*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @read_inode_bitmap(%struct.super_block*, i32) #1

declare dso_local i64 @ext2_find_next_zero_bit(i64*, i32, i64) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local i64 @ext2_set_bit_atomic(i32*, i64, i64) #1

declare dso_local i32* @sb_bgl_lock(%struct.ext2_sb_info*, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @EXT2_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i64, ...) #1

declare dso_local i32 @percpu_counter_add(i32*, i32) #1

declare dso_local i32 @percpu_counter_inc(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @le16_add_cpu(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @ext2_mask_flags(i32, i32) #1

declare dso_local i32 @ext2_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @insert_inode_locked(%struct.inode*) #1

declare dso_local i32 @dquot_initialize(%struct.inode*) #1

declare dso_local i32 @dquot_alloc_inode(%struct.inode*) #1

declare dso_local i32 @ext2_init_acl(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext2_init_security(%struct.inode*, %struct.inode*, %struct.qstr*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ext2_debug(i8*, i64) #1

declare dso_local i32 @ext2_preread_inode(%struct.inode*) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @discard_new_inode(%struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
