; ModuleID = '/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofilefs.c_oprofilefs_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/oprofile/extr_oprofilefs.c_oprofilefs_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, i32, i32*, i32, i32, i32 }
%struct.fs_context = type { i32 }
%struct.inode = type { i32*, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@OPROFILEFS_MAGIC = common dso_local global i32 0, align 4
@s_ops = common dso_local global i32 0, align 4
@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_dir_inode_operations = common dso_local global i32 0, align 4
@simple_dir_operations = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @oprofilefs_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @oprofilefs_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %7 = load i32, i32* @PAGE_SIZE, align 4
  %8 = load %struct.super_block*, %struct.super_block** %4, align 8
  %9 = getelementptr inbounds %struct.super_block, %struct.super_block* %8, i32 0, i32 5
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @PAGE_SHIFT, align 4
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = getelementptr inbounds %struct.super_block, %struct.super_block* %11, i32 0, i32 4
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @OPROFILEFS_MAGIC, align 4
  %14 = load %struct.super_block*, %struct.super_block** %4, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 3
  store i32 %13, i32* %15, align 8
  %16 = load %struct.super_block*, %struct.super_block** %4, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 2
  store i32* @s_ops, i32** %17, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = load i32, i32* @S_IFDIR, align 4
  %22 = or i32 %21, 493
  %23 = call %struct.inode* @oprofilefs_get_inode(%struct.super_block* %20, i32 %22)
  store %struct.inode* %23, %struct.inode** %6, align 8
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %50

29:                                               ; preds = %2
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 1
  store i32* @simple_dir_inode_operations, i32** %31, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32* @simple_dir_operations, i32** %33, align 8
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = call i32 @d_make_root(%struct.inode* %34)
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %29
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %50

45:                                               ; preds = %29
  %46 = load %struct.super_block*, %struct.super_block** %4, align 8
  %47 = getelementptr inbounds %struct.super_block, %struct.super_block* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @oprofile_create_files(i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %45, %42, %26
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.inode* @oprofilefs_get_inode(%struct.super_block*, i32) #1

declare dso_local i32 @d_make_root(%struct.inode*) #1

declare dso_local i32 @oprofile_create_files(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
