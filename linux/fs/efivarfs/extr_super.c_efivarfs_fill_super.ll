; ModuleID = '/home/carl/AnghaBench/linux/fs/efivarfs/extr_super.c_efivarfs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/efivarfs/extr_super.c_efivarfs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.dentry*, i32*, i32*, i32, i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32* }

@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@EFIVARFS_MAGIC = common dso_local global i32 0, align 4
@efivarfs_ops = common dso_local global i32 0, align 4
@efivarfs_d_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@efivarfs_dir_inode_operations = common dso_local global i32 0, align 4
@efivarfs_list = common dso_local global i32 0, align 4
@efivarfs_callback = common dso_local global i32 0, align 4
@efivarfs_destroy = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @efivarfs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efivarfs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %9 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = getelementptr inbounds %struct.super_block, %struct.super_block* %10, i32 0, i32 7
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = load %struct.super_block*, %struct.super_block** %4, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 6
  store i32 %12, i32* %14, align 8
  %15 = load i32, i32* @PAGE_SHIFT, align 4
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* @EFIVARFS_MAGIC, align 4
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 4
  store i32 %18, i32* %20, align 8
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 3
  store i32* @efivarfs_ops, i32** %22, align 8
  %23 = load %struct.super_block*, %struct.super_block** %4, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 2
  store i32* @efivarfs_d_ops, i32** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %4, align 8
  %26 = getelementptr inbounds %struct.super_block, %struct.super_block* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = load i32, i32* @S_IFDIR, align 4
  %29 = or i32 %28, 493
  %30 = call %struct.inode* @efivarfs_get_inode(%struct.super_block* %27, i32* null, i32 %29, i32 0, i32 1)
  store %struct.inode* %30, %struct.inode** %6, align 8
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = icmp ne %struct.inode* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %2
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %62

36:                                               ; preds = %2
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  store i32* @efivarfs_dir_inode_operations, i32** %38, align 8
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call %struct.dentry* @d_make_root(%struct.inode* %39)
  store %struct.dentry* %40, %struct.dentry** %7, align 8
  %41 = load %struct.dentry*, %struct.dentry** %7, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 1
  store %struct.dentry* %41, %struct.dentry** %43, align 8
  %44 = load %struct.dentry*, %struct.dentry** %7, align 8
  %45 = icmp ne %struct.dentry* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %62

49:                                               ; preds = %36
  %50 = call i32 @INIT_LIST_HEAD(i32* @efivarfs_list)
  %51 = load i32, i32* @efivarfs_callback, align 4
  %52 = load %struct.super_block*, %struct.super_block** %4, align 8
  %53 = bitcast %struct.super_block* %52 to i8*
  %54 = call i32 @efivar_init(i32 %51, i8* %53, i32 1, i32* @efivarfs_list)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %49
  %58 = load i32, i32* @efivarfs_destroy, align 4
  %59 = call i32 @__efivar_entry_iter(i32 %58, i32* @efivarfs_list, i32* null, i32* null)
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %3, align 4
  br label %62

62:                                               ; preds = %60, %46, %33
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.inode* @efivarfs_get_inode(%struct.super_block*, i32*, i32, i32, i32) #1

declare dso_local %struct.dentry* @d_make_root(%struct.inode*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @efivar_init(i32, i8*, i32, i32*) #1

declare dso_local i32 @__efivar_entry_iter(i32, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
