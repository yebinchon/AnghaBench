; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_ext2_init_block_alloc_info.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_ext2_init_block_alloc_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ext2_inode_info = type { %struct.ext2_block_alloc_info* }
%struct.ext2_block_alloc_info = type { i64, i64, %struct.ext2_reserve_window_node }
%struct.ext2_reserve_window_node = type { i64, i64, i8*, i8* }

@GFP_NOFS = common dso_local global i32 0, align 4
@EXT2_RESERVE_WINDOW_NOT_ALLOCATED = common dso_local global i8* null, align 8
@RESERVATION = common dso_local global i32 0, align 4
@EXT2_DEFAULT_RESERVE_BLOCKS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_init_block_alloc_info(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ext2_inode_info*, align 8
  %4 = alloca %struct.ext2_block_alloc_info*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.ext2_reserve_window_node*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = call %struct.ext2_inode_info* @EXT2_I(%struct.inode* %7)
  store %struct.ext2_inode_info* %8, %struct.ext2_inode_info** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load %struct.super_block*, %struct.super_block** %10, align 8
  store %struct.super_block* %11, %struct.super_block** %5, align 8
  %12 = load i32, i32* @GFP_NOFS, align 4
  %13 = call %struct.ext2_block_alloc_info* @kmalloc(i32 48, i32 %12)
  store %struct.ext2_block_alloc_info* %13, %struct.ext2_block_alloc_info** %4, align 8
  %14 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %15 = icmp ne %struct.ext2_block_alloc_info* %14, null
  br i1 %15, label %16, label %43

16:                                               ; preds = %1
  %17 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %18 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %17, i32 0, i32 2
  store %struct.ext2_reserve_window_node* %18, %struct.ext2_reserve_window_node** %6, align 8
  %19 = load i8*, i8** @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %20 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %21 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %20, i32 0, i32 3
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @EXT2_RESERVE_WINDOW_NOT_ALLOCATED, align 8
  %23 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %24 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = load i32, i32* @RESERVATION, align 4
  %27 = call i32 @test_opt(%struct.super_block* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %16
  %30 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %31 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  br label %36

32:                                               ; preds = %16
  %33 = load i64, i64* @EXT2_DEFAULT_RESERVE_BLOCKS, align 8
  %34 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %35 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %34, i32 0, i32 1
  store i64 %33, i64* %35, align 8
  br label %36

36:                                               ; preds = %32, %29
  %37 = load %struct.ext2_reserve_window_node*, %struct.ext2_reserve_window_node** %6, align 8
  %38 = getelementptr inbounds %struct.ext2_reserve_window_node, %struct.ext2_reserve_window_node* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %40 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %39, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %42 = getelementptr inbounds %struct.ext2_block_alloc_info, %struct.ext2_block_alloc_info* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  br label %43

43:                                               ; preds = %36, %1
  %44 = load %struct.ext2_block_alloc_info*, %struct.ext2_block_alloc_info** %4, align 8
  %45 = load %struct.ext2_inode_info*, %struct.ext2_inode_info** %3, align 8
  %46 = getelementptr inbounds %struct.ext2_inode_info, %struct.ext2_inode_info* %45, i32 0, i32 0
  store %struct.ext2_block_alloc_info* %44, %struct.ext2_block_alloc_info** %46, align 8
  ret void
}

declare dso_local %struct.ext2_inode_info* @EXT2_I(%struct.inode*) #1

declare dso_local %struct.ext2_block_alloc_info* @kmalloc(i32, i32) #1

declare dso_local i32 @test_opt(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
