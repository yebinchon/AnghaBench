; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_physmem_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_physmem_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.cramfs_sb_info = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@PAGE_SIZE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@ENOSYS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"get_unmapped for %s ofs %#lx siz %lu at 0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64)* @cramfs_physmem_get_unmapped_area to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @cramfs_physmem_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca %struct.super_block*, align 8
  %14 = alloca %struct.cramfs_sb_info*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = call %struct.inode* @file_inode(%struct.file* %19)
  store %struct.inode* %20, %struct.inode** %12, align 8
  %21 = load %struct.inode*, %struct.inode** %12, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 1
  %23 = load %struct.super_block*, %struct.super_block** %22, align 8
  store %struct.super_block* %23, %struct.super_block** %13, align 8
  %24 = load %struct.super_block*, %struct.super_block** %13, align 8
  %25 = call %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block* %24)
  store %struct.cramfs_sb_info* %25, %struct.cramfs_sb_info** %14, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @PAGE_SIZE, align 8
  %28 = add i64 %26, %27
  %29 = sub i64 %28, 1
  %30 = load i64, i64* @PAGE_SHIFT, align 8
  %31 = lshr i64 %29, %30
  %32 = trunc i64 %31 to i32
  store i32 %32, i32* %15, align 4
  %33 = load %struct.inode*, %struct.inode** %12, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PAGE_SIZE, align 8
  %37 = add i64 %35, %36
  %38 = sub i64 %37, 1
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = lshr i64 %38, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %17, align 4
  %42 = load i64, i64* %10, align 8
  %43 = load i32, i32* %17, align 4
  %44 = zext i32 %43 to i64
  %45 = icmp uge i64 %42, %44
  br i1 %45, label %54, label %46

46:                                               ; preds = %5
  %47 = load i32, i32* %15, align 4
  %48 = zext i32 %47 to i64
  %49 = load i32, i32* %17, align 4
  %50 = zext i32 %49 to i64
  %51 = load i64, i64* %10, align 8
  %52 = sub i64 %50, %51
  %53 = icmp ugt i64 %48, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46, %5
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %6, align 8
  br label %90

57:                                               ; preds = %46
  %58 = load i32, i32* %15, align 4
  store i32 %58, i32* %16, align 4
  %59 = load %struct.inode*, %struct.inode** %12, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @cramfs_get_block_range(%struct.inode* %59, i64 %60, i32* %16)
  store i32 %61, i32* %18, align 4
  %62 = load i32, i32* %18, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %57
  %65 = load i32, i32* %16, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %65, %66
  br i1 %67, label %68, label %71

68:                                               ; preds = %64, %57
  %69 = load i64, i64* @ENOSYS, align 8
  %70 = sub i64 0, %69
  store i64 %70, i64* %6, align 8
  br label %90

71:                                               ; preds = %64
  %72 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %14, align 8
  %73 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %18, align 4
  %76 = add i32 %74, %75
  %77 = zext i32 %76 to i64
  store i64 %77, i64* %8, align 8
  %78 = load %struct.file*, %struct.file** %7, align 8
  %79 = call %struct.TYPE_4__* @file_dentry(%struct.file* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %10, align 8
  %84 = load i64, i64* @PAGE_SIZE, align 8
  %85 = mul i64 %83, %84
  %86 = load i64, i64* %9, align 8
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @pr_debug(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %82, i64 %85, i64 %86, i64 %87)
  %89 = load i64, i64* %8, align 8
  store i64 %89, i64* %6, align 8
  br label %90

90:                                               ; preds = %71, %68, %54
  %91 = load i64, i64* %6, align 8
  ret i64 %91
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block*) #1

declare dso_local i32 @cramfs_get_block_range(%struct.inode*, i64, i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i64, i64, i64) #1

declare dso_local %struct.TYPE_4__* @file_dentry(%struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
