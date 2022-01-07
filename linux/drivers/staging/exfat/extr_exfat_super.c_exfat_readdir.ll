; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_readdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_readdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.dir_context = type { i32 }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.exfat_sb_info = type { %struct.bd_info_t, %struct.fs_info_t }
%struct.bd_info_t = type { i32 }
%struct.fs_info_t = type { i64 }
%struct.dir_entry_t = type { i32, i32*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i32 }

@EXFAT = common dso_local global i64 0, align 8
@EXFAT_ROOT_INO = common dso_local global i64 0, align 8
@DENTRY_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DENTRY_SIZE_BITS = common dso_local global i32 0, align 4
@FFS_MEDIAERR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@DOS_CUR_DIR_NAME = common dso_local global i32 0, align 4
@DOS_NAME_LENGTH = common dso_local global i32 0, align 4
@DOS_PAR_DIR_NAME = common dso_local global i32 0, align 4
@ATTR_SUBDIR = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@DT_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @exfat_readdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @exfat_readdir(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.dir_context*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.exfat_sb_info*, align 8
  %8 = alloca %struct.fs_info_t*, align 8
  %9 = alloca %struct.bd_info_t*, align 8
  %10 = alloca %struct.dir_entry_t, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.inode*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  store %struct.dir_context* %1, %struct.dir_context** %4, align 8
  %16 = load %struct.file*, %struct.file** %3, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %5, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load %struct.super_block*, %struct.super_block** %19, align 8
  store %struct.super_block* %20, %struct.super_block** %6, align 8
  %21 = load %struct.super_block*, %struct.super_block** %6, align 8
  %22 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %21)
  store %struct.exfat_sb_info* %22, %struct.exfat_sb_info** %7, align 8
  %23 = load %struct.exfat_sb_info*, %struct.exfat_sb_info** %7, align 8
  %24 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %23, i32 0, i32 1
  store %struct.fs_info_t* %24, %struct.fs_info_t** %8, align 8
  %25 = load %struct.super_block*, %struct.super_block** %6, align 8
  %26 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %26, i32 0, i32 0
  store %struct.bd_info_t* %27, %struct.bd_info_t** %9, align 8
  store i32 0, i32* %13, align 4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = call i32 @__lock_super(%struct.super_block* %28)
  %30 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %31 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %12, align 4
  %33 = load %struct.fs_info_t*, %struct.fs_info_t** %8, align 8
  %34 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @EXFAT, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %2
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @EXFAT_ROOT_INO, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %88

44:                                               ; preds = %38, %2
  br label %45

45:                                               ; preds = %76, %44
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 2
  br i1 %47, label %48, label %83

48:                                               ; preds = %45
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EXFAT_ROOT_INO, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i64, i64* @EXFAT_ROOT_INO, align 8
  store i64 %55, i64* %11, align 8
  br label %70

56:                                               ; preds = %48
  %57 = load i32, i32* %12, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load %struct.inode*, %struct.inode** %5, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %11, align 8
  br label %69

63:                                               ; preds = %56
  %64 = load %struct.file*, %struct.file** %3, align 8
  %65 = getelementptr inbounds %struct.file, %struct.file* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i64 @parent_ino(i32 %67)
  store i64 %68, i64* %11, align 8
  br label %69

69:                                               ; preds = %63, %59
  br label %70

70:                                               ; preds = %69, %54
  %71 = load %struct.file*, %struct.file** %3, align 8
  %72 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %73 = call i32 @dir_emit_dots(%struct.file* %71, %struct.dir_context* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %70
  br label %238

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %12, align 4
  %79 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %80 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %45

83:                                               ; preds = %45
  %84 = load i32, i32* %12, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %87

86:                                               ; preds = %83
  store i32 0, i32* %12, align 4
  br label %87

87:                                               ; preds = %86, %83
  br label %88

88:                                               ; preds = %87, %38
  %89 = load i32, i32* %12, align 4
  %90 = load i32, i32* @DENTRY_SIZE, align 4
  %91 = sub nsw i32 %90, 1
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @ENOENT, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %13, align 4
  br label %238

97:                                               ; preds = %88
  br label %98

98:                                               ; preds = %230, %97
  %99 = load %struct.inode*, %struct.inode** %5, align 8
  %100 = call i32 @i_size_read(%struct.inode* %99)
  %101 = load %struct.inode*, %struct.inode** %5, align 8
  %102 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 2
  store i32 %100, i32* %104, align 8
  %105 = load i32, i32* %12, align 4
  %106 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %107 = ashr i32 %105, %106
  %108 = load %struct.inode*, %struct.inode** %5, align 8
  %109 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %108)
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 0
  store i32 %107, i32* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = call i32 @ffsReadDir(%struct.inode* %112, %struct.dir_entry_t* %10)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %138

116:                                              ; preds = %98
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* @FFS_MEDIAERR, align 4
  %119 = icmp eq i32 %117, %118
  br i1 %119, label %120, label %135

120:                                              ; preds = %116
  %121 = load %struct.bd_info_t*, %struct.bd_info_t** %9, align 8
  %122 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 1, %123
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, %124
  store i32 %126, i32* %12, align 4
  %127 = load %struct.bd_info_t*, %struct.bd_info_t** %9, align 8
  %128 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = shl i32 1, %129
  %131 = sub nsw i32 %130, 1
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %12, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %135

135:                                              ; preds = %120, %116
  %136 = load i32, i32* @EIO, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %13, align 4
  br label %234

138:                                              ; preds = %98
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %139)
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = load i32, i32* @DENTRY_SIZE_BITS, align 4
  %145 = shl i32 %143, %144
  store i32 %145, i32* %12, align 4
  %146 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %10, i32 0, i32 1
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 0
  %149 = load i32, i32* %148, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %152, label %151

151:                                              ; preds = %138
  br label %234

152:                                              ; preds = %138
  %153 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %10, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @DOS_CUR_DIR_NAME, align 4
  %156 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %157 = call i32 @memcmp(i32 %154, i32 %155, i32 %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %163, label %159

159:                                              ; preds = %152
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = getelementptr inbounds %struct.inode, %struct.inode* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  store i64 %162, i64* %11, align 8
  br label %208

163:                                              ; preds = %152
  %164 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %10, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @DOS_PAR_DIR_NAME, align 4
  %167 = load i32, i32* @DOS_NAME_LENGTH, align 4
  %168 = call i32 @memcmp(i32 %165, i32 %166, i32 %167)
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %176, label %170

170:                                              ; preds = %163
  %171 = load %struct.file*, %struct.file** %3, align 8
  %172 = getelementptr inbounds %struct.file, %struct.file* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @parent_ino(i32 %174)
  store i64 %175, i64* %11, align 8
  br label %207

176:                                              ; preds = %163
  %177 = load %struct.inode*, %struct.inode** %5, align 8
  %178 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %177)
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %179, i32 0, i32 1
  %181 = load i64, i64* %180, align 8
  %182 = trunc i64 %181 to i32
  %183 = shl i32 %182, 32
  %184 = load %struct.inode*, %struct.inode** %5, align 8
  %185 = call %struct.TYPE_6__* @EXFAT_I(%struct.inode* %184)
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  %190 = or i32 %183, %189
  store i32 %190, i32* %14, align 4
  %191 = load %struct.super_block*, %struct.super_block** %6, align 8
  %192 = load i32, i32* %14, align 4
  %193 = call %struct.inode* @exfat_iget(%struct.super_block* %191, i32 %192)
  store %struct.inode* %193, %struct.inode** %15, align 8
  %194 = load %struct.inode*, %struct.inode** %15, align 8
  %195 = icmp ne %struct.inode* %194, null
  br i1 %195, label %196, label %202

196:                                              ; preds = %176
  %197 = load %struct.inode*, %struct.inode** %15, align 8
  %198 = getelementptr inbounds %struct.inode, %struct.inode* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  store i64 %199, i64* %11, align 8
  %200 = load %struct.inode*, %struct.inode** %15, align 8
  %201 = call i32 @iput(%struct.inode* %200)
  br label %206

202:                                              ; preds = %176
  %203 = load %struct.super_block*, %struct.super_block** %6, align 8
  %204 = load i64, i64* @EXFAT_ROOT_INO, align 8
  %205 = call i64 @iunique(%struct.super_block* %203, i64 %204)
  store i64 %205, i64* %11, align 8
  br label %206

206:                                              ; preds = %202, %196
  br label %207

207:                                              ; preds = %206, %170
  br label %208

208:                                              ; preds = %207, %159
  %209 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %210 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %10, i32 0, i32 1
  %211 = load i32*, i32** %210, align 8
  %212 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %10, i32 0, i32 1
  %213 = load i32*, i32** %212, align 8
  %214 = call i32 @strlen(i32* %213)
  %215 = load i64, i64* %11, align 8
  %216 = getelementptr inbounds %struct.dir_entry_t, %struct.dir_entry_t* %10, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* @ATTR_SUBDIR, align 4
  %219 = and i32 %217, %218
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %223

221:                                              ; preds = %208
  %222 = load i32, i32* @DT_DIR, align 4
  br label %225

223:                                              ; preds = %208
  %224 = load i32, i32* @DT_REG, align 4
  br label %225

225:                                              ; preds = %223, %221
  %226 = phi i32 [ %222, %221 ], [ %224, %223 ]
  %227 = call i32 @dir_emit(%struct.dir_context* %209, i32* %211, i32 %214, i64 %215, i32 %226)
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %225
  br label %238

230:                                              ; preds = %225
  %231 = load i32, i32* %12, align 4
  %232 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %233 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %232, i32 0, i32 0
  store i32 %231, i32* %233, align 4
  br label %98

234:                                              ; preds = %151, %135
  %235 = load i32, i32* %12, align 4
  %236 = load %struct.dir_context*, %struct.dir_context** %4, align 8
  %237 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %236, i32 0, i32 0
  store i32 %235, i32* %237, align 4
  br label %238

238:                                              ; preds = %234, %229, %94, %75
  %239 = load %struct.super_block*, %struct.super_block** %6, align 8
  %240 = call i32 @__unlock_super(%struct.super_block* %239)
  %241 = load i32, i32* %13, align 4
  ret i32 %241
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @__lock_super(%struct.super_block*) #1

declare dso_local i64 @parent_ino(i32) #1

declare dso_local i32 @dir_emit_dots(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_6__* @EXFAT_I(%struct.inode*) #1

declare dso_local i32 @ffsReadDir(%struct.inode*, %struct.dir_entry_t*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local %struct.inode* @exfat_iget(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i64 @iunique(%struct.super_block*, i64) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32*, i32, i64, i32) #1

declare dso_local i32 @strlen(i32*) #1

declare dso_local i32 @__unlock_super(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
