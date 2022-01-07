; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_vm_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_vm_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_2__*, %struct.page* }
%struct.TYPE_2__ = type { %struct.file* }
%struct.file = type { i64 }
%struct.page = type { i64 }
%struct.v9fs_inode = type { i32 }
%struct.inode = type { i64 }

@P9_DEBUG_VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"page %p fid %lx\0A\00", align 1
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @v9fs_vm_page_mkwrite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_vm_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.v9fs_inode*, align 8
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.file*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 1
  %10 = load %struct.page*, %struct.page** %9, align 8
  store %struct.page* %10, %struct.page** %5, align 8
  %11 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %12 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.file*, %struct.file** %14, align 8
  store %struct.file* %15, %struct.file** %6, align 8
  %16 = load %struct.file*, %struct.file** %6, align 8
  %17 = call %struct.inode* @file_inode(%struct.file* %16)
  store %struct.inode* %17, %struct.inode** %7, align 8
  %18 = load i32, i32* @P9_DEBUG_VFS, align 4
  %19 = load %struct.page*, %struct.page** %5, align 8
  %20 = load %struct.file*, %struct.file** %6, align 8
  %21 = getelementptr inbounds %struct.file, %struct.file* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @p9_debug(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.page* %19, i64 %22)
  %24 = load %struct.file*, %struct.file** %6, align 8
  %25 = call i32 @file_update_time(%struct.file* %24)
  %26 = load %struct.inode*, %struct.inode** %7, align 8
  %27 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %26)
  store %struct.v9fs_inode* %27, %struct.v9fs_inode** %4, align 8
  %28 = load %struct.inode*, %struct.inode** %7, align 8
  %29 = load %struct.page*, %struct.page** %5, align 8
  %30 = call i32 @v9fs_fscache_wait_on_page_write(%struct.inode* %28, %struct.page* %29)
  %31 = load %struct.v9fs_inode*, %struct.v9fs_inode** %4, align 8
  %32 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load %struct.page*, %struct.page** %5, align 8
  %39 = call i32 @lock_page(%struct.page* %38)
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.inode*, %struct.inode** %7, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %1
  br label %52

48:                                               ; preds = %1
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = call i32 @wait_for_stable_page(%struct.page* %49)
  %51 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %51, i32* %2, align 4
  br label %56

52:                                               ; preds = %47
  %53 = load %struct.page*, %struct.page** %5, align 8
  %54 = call i32 @unlock_page(%struct.page* %53)
  %55 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local i32 @p9_debug(i32, i8*, %struct.page*, i64) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @v9fs_fscache_wait_on_page_write(%struct.inode*, %struct.page*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @wait_for_stable_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
