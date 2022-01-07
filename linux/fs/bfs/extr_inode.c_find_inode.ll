; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_find_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_find_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfs_inode = type { i32 }
%struct.super_block = type { i8* }
%struct.buffer_head = type { i64 }
%struct.TYPE_2__ = type { i32 }

@BFS_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Bad inode number %s:%08x\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BFS_INODES_PER_BLOCK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Unable to read inode %s:%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.bfs_inode* (%struct.super_block*, i32, %struct.buffer_head**)* @find_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.bfs_inode* @find_inode(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.bfs_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @BFS_ROOT_INO, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %18, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.super_block*, %struct.super_block** %5, align 8
  %14 = call %struct.TYPE_2__* @BFS_SB(%struct.super_block* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp sgt i32 %12, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %11, %3
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = getelementptr inbounds %struct.super_block, %struct.super_block* %19, i32 0, i32 0
  %21 = load i8*, i8** %20, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %21, i32 %22)
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.bfs_inode* @ERR_PTR(i32 %25)
  store %struct.bfs_inode* %26, %struct.bfs_inode** %4, align 8
  br label %61

27:                                               ; preds = %11
  %28 = load i32, i32* @BFS_ROOT_INO, align 4
  %29 = load i32, i32* %6, align 4
  %30 = sub nsw i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.super_block*, %struct.super_block** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @BFS_INODES_PER_BLOCK, align 4
  %34 = sdiv i32 %32, %33
  %35 = add nsw i32 1, %34
  %36 = call %struct.buffer_head* @sb_bread(%struct.super_block* %31, i32 %35)
  %37 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %36, %struct.buffer_head** %37, align 8
  %38 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %39 = load %struct.buffer_head*, %struct.buffer_head** %38, align 8
  %40 = icmp ne %struct.buffer_head* %39, null
  br i1 %40, label %50, label %41

41:                                               ; preds = %27
  %42 = load %struct.super_block*, %struct.super_block** %5, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @printf(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8* %44, i32 %45)
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  %49 = call %struct.bfs_inode* @ERR_PTR(i32 %48)
  store %struct.bfs_inode* %49, %struct.bfs_inode** %4, align 8
  br label %61

50:                                               ; preds = %27
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %51, align 8
  %53 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = inttoptr i64 %54 to %struct.bfs_inode*
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @BFS_INODES_PER_BLOCK, align 4
  %58 = srem i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.bfs_inode, %struct.bfs_inode* %55, i64 %59
  store %struct.bfs_inode* %60, %struct.bfs_inode** %4, align 8
  br label %61

61:                                               ; preds = %50, %41, %18
  %62 = load %struct.bfs_inode*, %struct.bfs_inode** %4, align 8
  ret %struct.bfs_inode* %62
}

declare dso_local %struct.TYPE_2__* @BFS_SB(%struct.super_block*) #1

declare dso_local i32 @printf(i8*, i8*, i32) #1

declare dso_local %struct.bfs_inode* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
