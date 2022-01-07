; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_blkdev_fill_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_blkdev_fill_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { %struct.cramfs_sb_info* }
%struct.cramfs_sb_info = type { i32 }
%struct.fs_context = type { i32 }
%struct.cramfs_super = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@READ_BUFFERS = common dso_local global i32 0, align 4
@buffer_blocknr = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fs_context*)* @cramfs_blkdev_fill_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cramfs_blkdev_fill_super(%struct.super_block* %0, %struct.fs_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fs_context*, align 8
  %6 = alloca %struct.cramfs_sb_info*, align 8
  %7 = alloca %struct.cramfs_super, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fs_context* %1, %struct.fs_context** %5, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.cramfs_sb_info* @kzalloc(i32 4, i32 %10)
  store %struct.cramfs_sb_info* %11, %struct.cramfs_sb_info** %6, align 8
  %12 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %13 = icmp ne %struct.cramfs_sb_info* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %45

17:                                               ; preds = %2
  %18 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %6, align 8
  %19 = load %struct.super_block*, %struct.super_block** %4, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  store %struct.cramfs_sb_info* %18, %struct.cramfs_sb_info** %20, align 8
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %30, %17
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @READ_BUFFERS, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %33

25:                                               ; preds = %21
  %26 = load i32*, i32** @buffer_blocknr, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  store i32 -1, i32* %29, align 4
  br label %30

30:                                               ; preds = %25
  %31 = load i32, i32* %8, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %8, align 4
  br label %21

33:                                               ; preds = %21
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = load %struct.fs_context*, %struct.fs_context** %5, align 8
  %36 = call i32 @cramfs_read_super(%struct.super_block* %34, %struct.fs_context* %35, %struct.cramfs_super* %7)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %3, align 4
  br label %45

41:                                               ; preds = %33
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = getelementptr inbounds %struct.cramfs_super, %struct.cramfs_super* %7, i32 0, i32 0
  %44 = call i32 @cramfs_finalize_super(%struct.super_block* %42, i32* %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %41, %39, %14
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.cramfs_sb_info* @kzalloc(i32, i32) #1

declare dso_local i32 @cramfs_read_super(%struct.super_block*, %struct.fs_context*, %struct.cramfs_super*) #1

declare dso_local i32 @cramfs_finalize_super(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
