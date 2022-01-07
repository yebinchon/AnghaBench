; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_blkdev.c_bdev_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_blkdev.c_bdev_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i64, i32 }
%struct.bd_info_t = type { i32, i32 }
%struct.fs_info_t = type { i32 }
%struct.exfat_sb_info = type { i64, %struct.fs_info_t, %struct.bd_info_t }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[EXFAT] No bh, device seems wrong or to be ejected.\0A\00", align 1
@EXFAT_DEBUGFLAGS_ERROR_RW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdev_write(%struct.super_block* %0, i64 %1, %struct.buffer_head* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.buffer_head*, align 8
  %14 = alloca %struct.bd_info_t*, align 8
  %15 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.super_block*, %struct.super_block** %7, align 8
  %17 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %17, i32 0, i32 2
  store %struct.bd_info_t* %18, %struct.bd_info_t** %14, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %20, i32 0, i32 1
  store %struct.fs_info_t* %21, %struct.fs_info_t** %15, align 8
  %22 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %23 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %5
  %27 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %27, i32* %6, align 4
  br label %106

28:                                               ; preds = %5
  %29 = load i64, i64* %8, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %29, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %28
  %35 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %36 = call i32 @lock_buffer(%struct.buffer_head* %35)
  %37 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %38 = call i32 @set_buffer_uptodate(%struct.buffer_head* %37)
  %39 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %40 = call i32 @mark_buffer_dirty(%struct.buffer_head* %39)
  %41 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %42 = call i32 @unlock_buffer(%struct.buffer_head* %41)
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %34
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = call i64 @sync_dirty_buffer(%struct.buffer_head* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %50, i32* %6, align 4
  br label %106

51:                                               ; preds = %45, %34
  br label %96

52:                                               ; preds = %28
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.bd_info_t*, %struct.bd_info_t** %14, align 8
  %55 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %53, %56
  store i32 %57, i32* %12, align 4
  %58 = load %struct.super_block*, %struct.super_block** %7, align 8
  %59 = getelementptr inbounds %struct.super_block, %struct.super_block* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i64, i64* %8, align 8
  %62 = load i32, i32* %12, align 4
  %63 = call %struct.buffer_head* @__getblk(i32 %60, i64 %61, i32 %62)
  store %struct.buffer_head* %63, %struct.buffer_head** %13, align 8
  %64 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %65 = icmp ne %struct.buffer_head* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %52
  br label %97

67:                                               ; preds = %52
  %68 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %69 = call i32 @lock_buffer(%struct.buffer_head* %68)
  %70 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %71 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %74 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @memcpy(i32 %72, i32 %75, i32 %76)
  %78 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %79 = call i32 @set_buffer_uptodate(%struct.buffer_head* %78)
  %80 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %81 = call i32 @mark_buffer_dirty(%struct.buffer_head* %80)
  %82 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %83 = call i32 @unlock_buffer(%struct.buffer_head* %82)
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %93

86:                                               ; preds = %67
  %87 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %88 = call i64 @sync_dirty_buffer(%struct.buffer_head* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %92 = call i32 @__brelse(%struct.buffer_head* %91)
  br label %97

93:                                               ; preds = %86, %67
  %94 = load %struct.buffer_head*, %struct.buffer_head** %13, align 8
  %95 = call i32 @__brelse(%struct.buffer_head* %94)
  br label %96

96:                                               ; preds = %93, %51
  store i32 0, i32* %6, align 4
  br label %106

97:                                               ; preds = %90, %66
  %98 = load %struct.fs_info_t*, %struct.fs_info_t** %15, align 8
  %99 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %100, 0
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  %104 = call i32 @WARN(i32 %103, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %97, %96, %49, %26
  %107 = load i32, i32* %6, align 4
  ret i32 %107
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i64 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @__getblk(i32, i64, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
