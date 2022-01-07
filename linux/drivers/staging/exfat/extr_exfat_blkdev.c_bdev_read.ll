; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_blkdev.c_bdev_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_blkdev.c_bdev_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bd_info_t = type { i32, i32 }
%struct.fs_info_t = type { i32 }
%struct.exfat_sb_info = type { i64, %struct.fs_info_t, %struct.bd_info_t }

@FFS_MEDIAERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"[EXFAT] No bh, device seems wrong or to be ejected.\0A\00", align 1
@EXFAT_DEBUGFLAGS_ERROR_RW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdev_read(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.bd_info_t*, align 8
  %13 = alloca %struct.fs_info_t*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load %struct.super_block*, %struct.super_block** %7, align 8
  %15 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %14)
  %16 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %15, i32 0, i32 2
  store %struct.bd_info_t* %16, %struct.bd_info_t** %12, align 8
  %17 = load %struct.super_block*, %struct.super_block** %7, align 8
  %18 = call %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block* %17)
  %19 = getelementptr inbounds %struct.exfat_sb_info, %struct.exfat_sb_info* %18, i32 0, i32 1
  store %struct.fs_info_t* %19, %struct.fs_info_t** %13, align 8
  %20 = load %struct.bd_info_t*, %struct.bd_info_t** %12, align 8
  %21 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %5
  %25 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %25, i32* %6, align 4
  br label %75

26:                                               ; preds = %5
  %27 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = icmp ne %struct.buffer_head* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  %33 = call i32 @__brelse(%struct.buffer_head* %32)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load i32, i32* %11, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %49

37:                                               ; preds = %34
  %38 = load %struct.super_block*, %struct.super_block** %7, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.bd_info_t*, %struct.bd_info_t** %12, align 8
  %44 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = shl i32 %42, %45
  %47 = call %struct.buffer_head* @__bread(i32 %40, i32 %41, i32 %46)
  %48 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %47, %struct.buffer_head** %48, align 8
  br label %61

49:                                               ; preds = %34
  %50 = load %struct.super_block*, %struct.super_block** %7, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.bd_info_t*, %struct.bd_info_t** %12, align 8
  %56 = getelementptr inbounds %struct.bd_info_t, %struct.bd_info_t* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %54, %57
  %59 = call %struct.buffer_head* @__getblk(i32 %52, i32 %53, i32 %58)
  %60 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  store %struct.buffer_head* %59, %struct.buffer_head** %60, align 8
  br label %61

61:                                               ; preds = %49, %37
  %62 = load %struct.buffer_head**, %struct.buffer_head*** %9, align 8
  %63 = load %struct.buffer_head*, %struct.buffer_head** %62, align 8
  %64 = icmp ne %struct.buffer_head* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %75

66:                                               ; preds = %61
  %67 = load %struct.fs_info_t*, %struct.fs_info_t** %13, align 8
  %68 = getelementptr inbounds %struct.fs_info_t, %struct.fs_info_t* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @WARN(i32 %72, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %74 = load i32, i32* @FFS_MEDIAERR, align 4
  store i32 %74, i32* %6, align 4
  br label %75

75:                                               ; preds = %66, %65, %24
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

declare dso_local %struct.exfat_sb_info* @EXFAT_SB(%struct.super_block*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

declare dso_local %struct.buffer_head* @__bread(i32, i32, i32) #1

declare dso_local %struct.buffer_head* @__getblk(i32, i32, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
