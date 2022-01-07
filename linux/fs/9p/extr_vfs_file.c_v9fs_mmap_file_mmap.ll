; ModuleID = '/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_mmap_file_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/9p/extr_vfs_file.c_v9fs_mmap_file_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i32, i32* }
%struct.inode = type { i32 }
%struct.v9fs_inode = type { i32, i8* }
%struct.p9_fid = type { i32 }

@VM_SHARED = common dso_local global i32 0, align 4
@VM_WRITE = common dso_local global i32 0, align 4
@v9fs_mmap_file_vm_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @v9fs_mmap_file_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v9fs_mmap_file_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.v9fs_inode*, align 8
  %9 = alloca %struct.p9_fid*, align 8
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = call %struct.inode* @file_inode(%struct.file* %10)
  store %struct.inode* %11, %struct.inode** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %7, align 8
  %13 = call %struct.v9fs_inode* @V9FS_I(%struct.inode* %12)
  store %struct.v9fs_inode* %13, %struct.v9fs_inode** %8, align 8
  %14 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %15 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %14, i32 0, i32 0
  %16 = call i32 @mutex_lock(i32* %15)
  %17 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %18 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %17, i32 0, i32 1
  %19 = load i8*, i8** %18, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %54, label %21

21:                                               ; preds = %2
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %23 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @VM_SHARED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %54

28:                                               ; preds = %21
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %30 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @VM_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %54

35:                                               ; preds = %28
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = call i32 @file_dentry(%struct.file* %36)
  %38 = call %struct.p9_fid* @v9fs_writeback_fid(i32 %37)
  store %struct.p9_fid* %38, %struct.p9_fid** %9, align 8
  %39 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %40 = call i64 @IS_ERR(%struct.p9_fid* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %44 = call i32 @PTR_ERR(%struct.p9_fid* %43)
  store i32 %44, i32* %6, align 4
  %45 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %46 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %68

49:                                               ; preds = %35
  %50 = load %struct.p9_fid*, %struct.p9_fid** %9, align 8
  %51 = bitcast %struct.p9_fid* %50 to i8*
  %52 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %53 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %52, i32 0, i32 1
  store i8* %51, i8** %53, align 8
  br label %54

54:                                               ; preds = %49, %28, %21, %2
  %55 = load %struct.v9fs_inode*, %struct.v9fs_inode** %8, align 8
  %56 = getelementptr inbounds %struct.v9fs_inode, %struct.v9fs_inode* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load %struct.file*, %struct.file** %4, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = call i32 @generic_file_mmap(%struct.file* %58, %struct.vm_area_struct* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  store i32* @v9fs_mmap_file_vm_ops, i32** %65, align 8
  br label %66

66:                                               ; preds = %63, %54
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %66, %42
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.v9fs_inode* @V9FS_I(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.p9_fid* @v9fs_writeback_fid(i32) #1

declare dso_local i32 @file_dentry(%struct.file*) #1

declare dso_local i64 @IS_ERR(%struct.p9_fid*) #1

declare dso_local i32 @PTR_ERR(%struct.p9_fid*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @generic_file_mmap(%struct.file*, %struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
