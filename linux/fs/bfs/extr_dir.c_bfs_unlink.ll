; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_unlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i8* }
%struct.dentry = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_dirent = type { i64 }
%struct.bfs_sb_info = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"unlinking non-existent file %s:%lu (nlink=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @bfs_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_unlink(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.bfs_dirent*, align 8
  %9 = alloca %struct.bfs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %10 = load i32, i32* @ENOENT, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call %struct.inode* @d_inode(%struct.dentry* %12)
  store %struct.inode* %13, %struct.inode** %6, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_2__* %16)
  store %struct.bfs_sb_info* %17, %struct.bfs_sb_info** %9, align 8
  %18 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %19 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %18, i32 0, i32 0
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.inode*, %struct.inode** %3, align 8
  %22 = load %struct.dentry*, %struct.dentry** %4, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 0
  %24 = call %struct.buffer_head* @bfs_find_entry(%struct.inode* %21, i32* %23, %struct.bfs_dirent** %8)
  store %struct.buffer_head* %24, %struct.buffer_head** %7, align 8
  %25 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %2
  %28 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %29 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @le16_to_cpu(i64 %30)
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %27, %2
  br label %78

37:                                               ; preds = %27
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %57, label %42

42:                                               ; preds = %37
  %43 = load %struct.inode*, %struct.inode** %6, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 3
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = load %struct.inode*, %struct.inode** %6, align 8
  %49 = getelementptr inbounds %struct.inode, %struct.inode* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i8* %47, i64 %50, i32 %53)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = call i32 @set_nlink(%struct.inode* %55, i32 1)
  br label %57

57:                                               ; preds = %42, %37
  %58 = load %struct.bfs_dirent*, %struct.bfs_dirent** %8, align 8
  %59 = getelementptr inbounds %struct.bfs_dirent, %struct.bfs_dirent* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  %60 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %60, %struct.inode* %61)
  %63 = load %struct.inode*, %struct.inode** %3, align 8
  %64 = call i32 @current_time(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %3, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  %67 = load %struct.inode*, %struct.inode** %3, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  store i32 %64, i32* %68, align 8
  %69 = load %struct.inode*, %struct.inode** %3, align 8
  %70 = call i32 @mark_inode_dirty(%struct.inode* %69)
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 8
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = call i32 @inode_dec_link_count(%struct.inode* %76)
  store i32 0, i32* %5, align 4
  br label %78

78:                                               ; preds = %57, %36
  %79 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %80 = call i32 @brelse(%struct.buffer_head* %79)
  %81 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %82 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %81, i32 0, i32 0
  %83 = call i32 @mutex_unlock(i32* %82)
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.TYPE_2__*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.buffer_head* @bfs_find_entry(%struct.inode*, i32*, %struct.bfs_dirent**) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @printf(i8*, i8*, i64, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
