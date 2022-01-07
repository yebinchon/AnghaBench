; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c___ext2_write_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c___ext2_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, i32, i64, %struct.super_block* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.super_block = type { i32 }
%struct.ext2_inode_info = type { i32, i32, i32, i32, i32, i32, i8**, i32, i32 }
%struct.buffer_head = type { i32 }
%struct.ext2_inode = type { i8**, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_10__ = type { %struct.TYPE_9__*, i32, i32 }
%struct.TYPE_9__ = type { i8* }

@EIO = common dso_local global i32 0, align 4
@EXT2_STATE_NEW = common dso_local global i32 0, align 4
@NO_UID32 = common dso_local global i32 0, align 4
@EXT2_FEATURE_RO_COMPAT_LARGE_FILE = common dso_local global i32 0, align 4
@EXT2_GOOD_OLD_REV = common dso_local global i32 0, align 4
@EXT2_N_BLOCKS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"IO error syncing ext2 inode [%s:%08lx]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i32)* @__ext2_write_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext2_write_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_inode_info*, align 8
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext2_inode*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %15)
  store %struct.ext2_inode_info* %16, %struct.ext2_inode_info** %6, align 8
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 10
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %7, align 8
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 9
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %8, align 8
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @i_uid_read(%struct.inode* %23)
  store i32 %24, i32* %9, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @i_gid_read(%struct.inode* %25)
  store i32 %26, i32* %10, align 4
  %27 = load %struct.super_block*, %struct.super_block** %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call %struct.ext2_inode* @ext2_get_inode(%struct.super_block* %27, i64 %28, %struct.buffer_head** %11)
  store %struct.ext2_inode* %29, %struct.ext2_inode** %12, align 8
  store i32 0, i32* %14, align 4
  %30 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %31 = call i64 @IS_ERR(%struct.ext2_inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %2
  %34 = load i32, i32* @EIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %358

36:                                               ; preds = %2
  %37 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %38 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EXT2_STATE_NEW, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(%struct.ext2_inode* %44, i32 0, i32 %48)
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %56 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %55, i32 0, i32 20
  store i8* %54, i8** %56, align 8
  %57 = load %struct.super_block*, %struct.super_block** %7, align 8
  %58 = load i32, i32* @NO_UID32, align 4
  %59 = call i32 @test_opt(%struct.super_block* %57, i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %93, label %61

61:                                               ; preds = %50
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @low_16_bits(i32 %62)
  %64 = call i8* @cpu_to_le16(i32 %63)
  %65 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %66 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %65, i32 0, i32 19
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* %10, align 4
  %68 = call i32 @low_16_bits(i32 %67)
  %69 = call i8* @cpu_to_le16(i32 %68)
  %70 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %71 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %70, i32 0, i32 18
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %73 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %87, label %76

76:                                               ; preds = %61
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @high_16_bits(i32 %77)
  %79 = call i8* @cpu_to_le16(i32 %78)
  %80 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %81 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %80, i32 0, i32 17
  store i8* %79, i8** %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = call i32 @high_16_bits(i32 %82)
  %84 = call i8* @cpu_to_le16(i32 %83)
  %85 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %86 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %85, i32 0, i32 16
  store i8* %84, i8** %86, align 8
  br label %92

87:                                               ; preds = %61
  %88 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %89 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %88, i32 0, i32 17
  store i8* null, i8** %89, align 8
  %90 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %91 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %90, i32 0, i32 16
  store i8* null, i8** %91, align 8
  br label %92

92:                                               ; preds = %87, %76
  br label %108

93:                                               ; preds = %50
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @fs_high2lowuid(i32 %94)
  %96 = call i8* @cpu_to_le16(i32 %95)
  %97 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %98 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %97, i32 0, i32 19
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @fs_high2lowgid(i32 %99)
  %101 = call i8* @cpu_to_le16(i32 %100)
  %102 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %103 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %102, i32 0, i32 18
  store i8* %101, i8** %103, align 8
  %104 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %105 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %104, i32 0, i32 17
  store i8* null, i8** %105, align 8
  %106 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %107 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %106, i32 0, i32 16
  store i8* null, i8** %107, align 8
  br label %108

108:                                              ; preds = %93, %92
  %109 = load %struct.inode*, %struct.inode** %4, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 8
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @cpu_to_le16(i32 %111)
  %113 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %114 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %113, i32 0, i32 15
  store i8* %112, i8** %114, align 8
  %115 = load %struct.inode*, %struct.inode** %4, align 8
  %116 = getelementptr inbounds %struct.inode, %struct.inode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i8* @cpu_to_le32(i32 %117)
  %119 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %120 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %119, i32 0, i32 14
  store i8* %118, i8** %120, align 8
  %121 = load %struct.inode*, %struct.inode** %4, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 7
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @cpu_to_le32(i32 %124)
  %126 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %127 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %126, i32 0, i32 13
  store i8* %125, i8** %127, align 8
  %128 = load %struct.inode*, %struct.inode** %4, align 8
  %129 = getelementptr inbounds %struct.inode, %struct.inode* %128, i32 0, i32 6
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = call i8* @cpu_to_le32(i32 %131)
  %133 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %134 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %133, i32 0, i32 12
  store i8* %132, i8** %134, align 8
  %135 = load %struct.inode*, %struct.inode** %4, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 5
  %137 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @cpu_to_le32(i32 %138)
  %140 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %141 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %140, i32 0, i32 11
  store i8* %139, i8** %141, align 8
  %142 = load %struct.inode*, %struct.inode** %4, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @cpu_to_le32(i32 %144)
  %146 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %147 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %146, i32 0, i32 10
  store i8* %145, i8** %147, align 8
  %148 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %149 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @cpu_to_le32(i32 %150)
  %152 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %153 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %152, i32 0, i32 9
  store i8* %151, i8** %153, align 8
  %154 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %155 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @cpu_to_le32(i32 %156)
  %158 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %159 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %158, i32 0, i32 8
  store i8* %157, i8** %159, align 8
  %160 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %161 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @cpu_to_le32(i32 %162)
  %164 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %165 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %164, i32 0, i32 7
  store i8* %163, i8** %165, align 8
  %166 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %167 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %166, i32 0, i32 8
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %170 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %169, i32 0, i32 6
  store i32 %168, i32* %170, align 4
  %171 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %172 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %175 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %174, i32 0, i32 5
  store i32 %173, i32* %175, align 8
  %176 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %177 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i8* @cpu_to_le32(i32 %178)
  %180 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %181 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %180, i32 0, i32 4
  store i8* %179, i8** %181, align 8
  %182 = load %struct.inode*, %struct.inode** %4, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 4
  %184 = load i32, i32* %183, align 8
  %185 = call i32 @S_ISREG(i32 %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %194, label %187

187:                                              ; preds = %108
  %188 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %189 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %188, i32 0, i32 5
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @cpu_to_le32(i32 %190)
  %192 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %193 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %192, i32 0, i32 3
  store i8* %191, i8** %193, align 8
  br label %244

194:                                              ; preds = %108
  %195 = load %struct.inode*, %struct.inode** %4, align 8
  %196 = getelementptr inbounds %struct.inode, %struct.inode* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = ashr i32 %197, 32
  %199 = call i8* @cpu_to_le32(i32 %198)
  %200 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %201 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %200, i32 0, i32 2
  store i8* %199, i8** %201, align 8
  %202 = load %struct.inode*, %struct.inode** %4, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = icmp ugt i64 %205, 2147483647
  br i1 %206, label %207, label %243

207:                                              ; preds = %194
  %208 = load %struct.super_block*, %struct.super_block** %7, align 8
  %209 = load i32, i32* @EXT2_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %210 = call i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.super_block* %208, i32 %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %207
  %213 = load %struct.super_block*, %struct.super_block** %7, align 8
  %214 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %213)
  %215 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load i8*, i8** %217, align 8
  %219 = load i32, i32* @EXT2_GOOD_OLD_REV, align 4
  %220 = call i8* @cpu_to_le32(i32 %219)
  %221 = icmp eq i8* %218, %220
  br i1 %221, label %222, label %242

222:                                              ; preds = %212, %207
  %223 = load %struct.super_block*, %struct.super_block** %7, align 8
  %224 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %223)
  %225 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %224, i32 0, i32 1
  %226 = call i32 @spin_lock(i32* %225)
  %227 = load %struct.super_block*, %struct.super_block** %7, align 8
  %228 = call i32 @ext2_update_dynamic_rev(%struct.super_block* %227)
  %229 = load %struct.super_block*, %struct.super_block** %7, align 8
  %230 = load i32, i32* @EXT2_FEATURE_RO_COMPAT_LARGE_FILE, align 4
  %231 = call i32 @EXT2_SET_RO_COMPAT_FEATURE(%struct.super_block* %229, i32 %230)
  %232 = load %struct.super_block*, %struct.super_block** %7, align 8
  %233 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %232)
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = call i32 @spin_unlock(i32* %234)
  %236 = load %struct.super_block*, %struct.super_block** %7, align 8
  %237 = load %struct.super_block*, %struct.super_block** %7, align 8
  %238 = call %struct.TYPE_10__* @EXT2_SB(%struct.super_block* %237)
  %239 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %238, i32 0, i32 0
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %239, align 8
  %241 = call i32 @ext2_sync_super(%struct.super_block* %236, %struct.TYPE_9__* %240, i32 1)
  br label %242

242:                                              ; preds = %222, %212
  br label %243

243:                                              ; preds = %242, %194
  br label %244

244:                                              ; preds = %243, %187
  %245 = load %struct.inode*, %struct.inode** %4, align 8
  %246 = getelementptr inbounds %struct.inode, %struct.inode* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = call i8* @cpu_to_le32(i32 %247)
  %249 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %250 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %249, i32 0, i32 1
  store i8* %248, i8** %250, align 8
  %251 = load %struct.inode*, %struct.inode** %4, align 8
  %252 = getelementptr inbounds %struct.inode, %struct.inode* %251, i32 0, i32 4
  %253 = load i32, i32* %252, align 8
  %254 = call i64 @S_ISCHR(i32 %253)
  %255 = icmp ne i64 %254, 0
  br i1 %255, label %262, label %256

256:                                              ; preds = %244
  %257 = load %struct.inode*, %struct.inode** %4, align 8
  %258 = getelementptr inbounds %struct.inode, %struct.inode* %257, i32 0, i32 4
  %259 = load i32, i32* %258, align 8
  %260 = call i64 @S_ISBLK(i32 %259)
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %301

262:                                              ; preds = %256, %244
  %263 = load %struct.inode*, %struct.inode** %4, align 8
  %264 = getelementptr inbounds %struct.inode, %struct.inode* %263, i32 0, i32 3
  %265 = load i32, i32* %264, align 4
  %266 = call i64 @old_valid_dev(i32 %265)
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %282

268:                                              ; preds = %262
  %269 = load %struct.inode*, %struct.inode** %4, align 8
  %270 = getelementptr inbounds %struct.inode, %struct.inode* %269, i32 0, i32 3
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @old_encode_dev(i32 %271)
  %273 = call i8* @cpu_to_le32(i32 %272)
  %274 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %275 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %274, i32 0, i32 0
  %276 = load i8**, i8*** %275, align 8
  %277 = getelementptr inbounds i8*, i8** %276, i64 0
  store i8* %273, i8** %277, align 8
  %278 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %279 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %278, i32 0, i32 0
  %280 = load i8**, i8*** %279, align 8
  %281 = getelementptr inbounds i8*, i8** %280, i64 1
  store i8* null, i8** %281, align 8
  br label %300

282:                                              ; preds = %262
  %283 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %284 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %283, i32 0, i32 0
  %285 = load i8**, i8*** %284, align 8
  %286 = getelementptr inbounds i8*, i8** %285, i64 0
  store i8* null, i8** %286, align 8
  %287 = load %struct.inode*, %struct.inode** %4, align 8
  %288 = getelementptr inbounds %struct.inode, %struct.inode* %287, i32 0, i32 3
  %289 = load i32, i32* %288, align 4
  %290 = call i32 @new_encode_dev(i32 %289)
  %291 = call i8* @cpu_to_le32(i32 %290)
  %292 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %293 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %292, i32 0, i32 0
  %294 = load i8**, i8*** %293, align 8
  %295 = getelementptr inbounds i8*, i8** %294, i64 1
  store i8* %291, i8** %295, align 8
  %296 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %297 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %296, i32 0, i32 0
  %298 = load i8**, i8*** %297, align 8
  %299 = getelementptr inbounds i8*, i8** %298, i64 2
  store i8* null, i8** %299, align 8
  br label %300

300:                                              ; preds = %282, %268
  br label %324

301:                                              ; preds = %256
  store i32 0, i32* %13, align 4
  br label %302

302:                                              ; preds = %320, %301
  %303 = load i32, i32* %13, align 4
  %304 = load i32, i32* @EXT2_N_BLOCKS, align 4
  %305 = icmp slt i32 %303, %304
  br i1 %305, label %306, label %323

306:                                              ; preds = %302
  %307 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %308 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %307, i32 0, i32 6
  %309 = load i8**, i8*** %308, align 8
  %310 = load i32, i32* %13, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds i8*, i8** %309, i64 %311
  %313 = load i8*, i8** %312, align 8
  %314 = load %struct.ext2_inode*, %struct.ext2_inode** %12, align 8
  %315 = getelementptr inbounds %struct.ext2_inode, %struct.ext2_inode* %314, i32 0, i32 0
  %316 = load i8**, i8*** %315, align 8
  %317 = load i32, i32* %13, align 4
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds i8*, i8** %316, i64 %318
  store i8* %313, i8** %319, align 8
  br label %320

320:                                              ; preds = %306
  %321 = load i32, i32* %13, align 4
  %322 = add nsw i32 %321, 1
  store i32 %322, i32* %13, align 4
  br label %302

323:                                              ; preds = %302
  br label %324

324:                                              ; preds = %323, %300
  %325 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %326 = call i32 @mark_buffer_dirty(%struct.buffer_head* %325)
  %327 = load i32, i32* %5, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %348

329:                                              ; preds = %324
  %330 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %331 = call i32 @sync_dirty_buffer(%struct.buffer_head* %330)
  %332 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %333 = call i64 @buffer_req(%struct.buffer_head* %332)
  %334 = icmp ne i64 %333, 0
  br i1 %334, label %335, label %347

335:                                              ; preds = %329
  %336 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %337 = call i32 @buffer_uptodate(%struct.buffer_head* %336)
  %338 = icmp ne i32 %337, 0
  br i1 %338, label %347, label %339

339:                                              ; preds = %335
  %340 = load %struct.super_block*, %struct.super_block** %7, align 8
  %341 = getelementptr inbounds %struct.super_block, %struct.super_block* %340, i32 0, i32 0
  %342 = load i32, i32* %341, align 4
  %343 = load i64, i64* %8, align 8
  %344 = call i32 @printk(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %342, i64 %343)
  %345 = load i32, i32* @EIO, align 4
  %346 = sub nsw i32 0, %345
  store i32 %346, i32* %14, align 4
  br label %347

347:                                              ; preds = %339, %335, %329
  br label %348

348:                                              ; preds = %347, %324
  %349 = load i32, i32* @EXT2_STATE_NEW, align 4
  %350 = xor i32 %349, -1
  %351 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %6, align 8
  %352 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %351, i32 0, i32 0
  %353 = load i32, i32* %352, align 8
  %354 = and i32 %353, %350
  store i32 %354, i32* %352, align 8
  %355 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %356 = call i32 @brelse(%struct.buffer_head* %355)
  %357 = load i32, i32* %14, align 4
  store i32 %357, i32* %3, align 4
  br label %358

358:                                              ; preds = %348, %33
  %359 = load i32, i32* %3, align 4
  ret i32 %359
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local i32 @i_uid_read(%struct.inode*) #1

declare dso_local i32 @i_gid_read(%struct.inode*) #1

declare dso_local %struct.ext2_inode* @ext2_get_inode(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.ext2_inode*) #1

declare dso_local i32 @memset(%struct.ext2_inode*, i32, i32) #1

declare dso_local %struct.TYPE_10__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

declare dso_local i32 @low_16_bits(i32) #1

declare dso_local i32 @high_16_bits(i32) #1

declare dso_local i32 @fs_high2lowuid(i32) #1

declare dso_local i32 @fs_high2lowgid(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @EXT2_HAS_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ext2_update_dynamic_rev(%struct.super_block*) #1

declare dso_local i32 @EXT2_SET_RO_COMPAT_FEATURE(%struct.super_block*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ext2_sync_super(%struct.super_block*, %struct.TYPE_9__*, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @old_valid_dev(i32) #1

declare dso_local i32 @old_encode_dev(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i64 @buffer_req(%struct.buffer_head*) #1

declare dso_local i32 @buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @printk(i8*, i32, i64) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
