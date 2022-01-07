; ModuleID = '/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debug_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/debugfs/extr_inode.c_debug_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tree_descr = type { i8* }
%struct.super_block = type { %struct.debugfs_fs_info*, i32*, i32* }
%struct.debugfs_fs_info = type { i32 }

@debug_fill_super.debug_files = internal constant [1 x %struct.tree_descr] [%struct.tree_descr { i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0) }], align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEBUGFS_MAGIC = common dso_local global i32 0, align 4
@debugfs_super_operations = common dso_local global i32 0, align 4
@debugfs_dops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*, i32)* @debug_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @debug_fill_super(%struct.super_block* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.debugfs_fs_info*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.debugfs_fs_info* @kzalloc(i32 4, i32 %10)
  store %struct.debugfs_fs_info* %11, %struct.debugfs_fs_info** %8, align 8
  %12 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = getelementptr inbounds %struct.super_block, %struct.super_block* %13, i32 0, i32 0
  store %struct.debugfs_fs_info* %12, %struct.debugfs_fs_info** %14, align 8
  %15 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %8, align 8
  %16 = icmp ne %struct.debugfs_fs_info* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %9, align 4
  br label %42

20:                                               ; preds = %3
  %21 = load i8*, i8** %6, align 8
  %22 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %8, align 8
  %23 = getelementptr inbounds %struct.debugfs_fs_info, %struct.debugfs_fs_info* %22, i32 0, i32 0
  %24 = call i32 @debugfs_parse_options(i8* %21, i32* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %42

28:                                               ; preds = %20
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = load i32, i32* @DEBUGFS_MAGIC, align 4
  %31 = call i32 @simple_fill_super(%struct.super_block* %29, i32 %30, %struct.tree_descr* getelementptr inbounds ([1 x %struct.tree_descr], [1 x %struct.tree_descr]* @debug_fill_super.debug_files, i64 0, i64 0))
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %42

35:                                               ; preds = %28
  %36 = load %struct.super_block*, %struct.super_block** %5, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 2
  store i32* @debugfs_super_operations, i32** %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 1
  store i32* @debugfs_dops, i32** %39, align 8
  %40 = load %struct.super_block*, %struct.super_block** %5, align 8
  %41 = call i32 @debugfs_apply_options(%struct.super_block* %40)
  store i32 0, i32* %4, align 4
  br label %48

42:                                               ; preds = %34, %27, %17
  %43 = load %struct.debugfs_fs_info*, %struct.debugfs_fs_info** %8, align 8
  %44 = call i32 @kfree(%struct.debugfs_fs_info* %43)
  %45 = load %struct.super_block*, %struct.super_block** %5, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  store %struct.debugfs_fs_info* null, %struct.debugfs_fs_info** %46, align 8
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local %struct.debugfs_fs_info* @kzalloc(i32, i32) #1

declare dso_local i32 @debugfs_parse_options(i8*, i32*) #1

declare dso_local i32 @simple_fill_super(%struct.super_block*, i32, %struct.tree_descr*) #1

declare dso_local i32 @debugfs_apply_options(%struct.super_block*) #1

declare dso_local i32 @kfree(%struct.debugfs_fs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
