; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_evict_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_inode.c_bfs_evict_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.bfs_inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.bfs_sb_info = type { i64, i32, i32, i32, i32 }
%struct.bfs_inode_info = type { i64, i64, i64 }

@.str = private unnamed_addr constant [11 x i8] c"ino=%08lx\0A\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"evict_inode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @bfs_evict_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfs_evict_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.bfs_inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.bfs_sb_info*, align 8
  %8 = alloca %struct.bfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %3, align 8
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 3
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.bfs_sb_info* @BFS_SB(%struct.super_block* %15)
  store %struct.bfs_sb_info* %16, %struct.bfs_sb_info** %7, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = call %struct.bfs_inode_info* @BFS_I(%struct.inode* %17)
  store %struct.bfs_inode_info* %18, %struct.bfs_inode_info** %8, align 8
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @dprintf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 2
  %23 = call i32 @truncate_inode_pages_final(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = call i32 @invalidate_inode_buffers(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = call i32 @clear_inode(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %1
  br label %108

33:                                               ; preds = %1
  %34 = load %struct.super_block*, %struct.super_block** %6, align 8
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call %struct.bfs_inode* @find_inode(%struct.super_block* %34, i64 %37, %struct.buffer_head** %5)
  store %struct.bfs_inode* %38, %struct.bfs_inode** %4, align 8
  %39 = load %struct.bfs_inode*, %struct.bfs_inode** %4, align 8
  %40 = call i64 @IS_ERR(%struct.bfs_inode* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %108

43:                                               ; preds = %33
  %44 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %45 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %44, i32 0, i32 1
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.bfs_inode*, %struct.bfs_inode** %4, align 8
  %48 = call i32 @memset(%struct.bfs_inode* %47, i32 0, i32 4)
  %49 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %50 = call i32 @mark_buffer_dirty(%struct.buffer_head* %49)
  %51 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %52 = call i32 @brelse(%struct.buffer_head* %51)
  %53 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %8, align 8
  %54 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %43
  %58 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %8, align 8
  %59 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %77

62:                                               ; preds = %57
  %63 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %8, align 8
  %64 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  %67 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %8, align 8
  %68 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = sub nsw i64 %66, %69
  %71 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %72 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  br label %77

77:                                               ; preds = %62, %57
  %78 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %79 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = load i64, i64* %3, align 8
  %83 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %84 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @clear_bit(i64 %82, i32 %85)
  %87 = load %struct.super_block*, %struct.super_block** %6, align 8
  %88 = call i32 @bfs_dump_imap(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %struct.super_block* %87)
  br label %89

89:                                               ; preds = %77, %43
  %90 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %91 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %8, align 8
  %94 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %89
  %98 = load %struct.bfs_inode_info*, %struct.bfs_inode_info** %8, align 8
  %99 = getelementptr inbounds %struct.bfs_inode_info, %struct.bfs_inode_info* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = sub nsw i64 %100, 1
  %102 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %103 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  br label %104

104:                                              ; preds = %97, %89
  %105 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %7, align 8
  %106 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %105, i32 0, i32 1
  %107 = call i32 @mutex_unlock(i32* %106)
  br label %108

108:                                              ; preds = %104, %42, %32
  ret void
}

declare dso_local %struct.bfs_sb_info* @BFS_SB(%struct.super_block*) #1

declare dso_local %struct.bfs_inode_info* @BFS_I(%struct.inode*) #1

declare dso_local i32 @dprintf(i8*, i64) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @invalidate_inode_buffers(%struct.inode*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local %struct.bfs_inode* @find_inode(%struct.super_block*, i64, %struct.buffer_head**) #1

declare dso_local i64 @IS_ERR(%struct.bfs_inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memset(%struct.bfs_inode*, i32, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @clear_bit(i64, i32) #1

declare dso_local i32 @bfs_dump_imap(i8*, %struct.super_block*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
