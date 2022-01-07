; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_mmap_vm_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_mmap_vm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i32, i64, i64 }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32, i32, i64, i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@LONG_MAX = common dso_local global i64 0, align 8
@WB_SYNC_ALL = common dso_local global i32 0, align 4
@VM_SHARED = common dso_local global i32 0, align 4
@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"9p VMA close, %p, flushing\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vm_area_struct*)* @v9fs_mmap_vm_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v9fs_mmap_vm_close(%struct.vm_area_struct* %0) #0 {
  %2 = alloca %struct.vm_area_struct*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.writeback_control, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %2, align 8
  %5 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 0
  %6 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %7 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* %5, align 8
  %11 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 1
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @PAGE_SIZE, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %19 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %18, i32 0, i32 4
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 3
  %23 = load i64, i64* %22, align 8
  %24 = sub nsw i64 %20, %23
  %25 = sub nsw i64 %24, 1
  %26 = add nsw i64 %17, %25
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %11, align 4
  %28 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 2
  %29 = load i64, i64* @LONG_MAX, align 8
  store i64 %29, i64* %28, align 8
  %30 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 3
  %31 = load i32, i32* @WB_SYNC_ALL, align 4
  store i32 %31, i32* %30, align 8
  %32 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %33 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @VM_SHARED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %1
  br label %58

39:                                               ; preds = %1
  %40 = load i32, i32* @P9_DEBUG_VFS, align 4
  %41 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %42 = call i32 @p9_debug(i32 %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.vm_area_struct* %41)
  %43 = load %struct.vm_area_struct*, %struct.vm_area_struct** %2, align 8
  %44 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call %struct.inode* @file_inode(i32 %45)
  store %struct.inode* %46, %struct.inode** %3, align 8
  %47 = load %struct.inode*, %struct.inode** %3, align 8
  %48 = getelementptr inbounds %struct.inode, %struct.inode* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @mapping_cap_writeback_dirty(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %39
  %53 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %4, i32 0, i32 2
  store i64 0, i64* %53, align 8
  br label %54

54:                                               ; preds = %52, %39
  %55 = call i32 (...) @might_sleep()
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = call i32 @sync_inode(%struct.inode* %56, %struct.writeback_control* %4)
  br label %58

58:                                               ; preds = %54, %38
  ret void
}

declare dso_local i32 @p9_debug(i32, i8*, %struct.vm_area_struct*) #1

declare dso_local %struct.inode* @file_inode(i32) #1

declare dso_local i32 @mapping_cap_writeback_dirty(i32) #1

declare dso_local i32 @might_sleep(...) #1

declare dso_local i32 @sync_inode(%struct.inode*, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
