; ModuleID = '/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/bfs/extr_dir.c_bfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { i32 }
%struct.bfs_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @bfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.bfs_sb_info*, align 8
  %10 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = call %struct.inode* @d_inode(%struct.dentry* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.bfs_sb_info* @BFS_SB(i32 %15)
  store %struct.bfs_sb_info* %16, %struct.bfs_sb_info** %9, align 8
  %17 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %18 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %17, i32 0, i32 0
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.inode*, %struct.inode** %6, align 8
  %21 = load %struct.dentry*, %struct.dentry** %7, align 8
  %22 = getelementptr inbounds %struct.dentry, %struct.dentry* %21, i32 0, i32 0
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @bfs_add_entry(%struct.inode* %20, i32* %22, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %3
  %30 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %31 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %51

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %8, align 8
  %36 = call i32 @inc_nlink(%struct.inode* %35)
  %37 = load %struct.inode*, %struct.inode** %8, align 8
  %38 = call i32 @current_time(%struct.inode* %37)
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load %struct.inode*, %struct.inode** %8, align 8
  %42 = call i32 @mark_inode_dirty(%struct.inode* %41)
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @ihold(%struct.inode* %43)
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @d_instantiate(%struct.dentry* %45, %struct.inode* %46)
  %48 = load %struct.bfs_sb_info*, %struct.bfs_sb_info** %9, align 8
  %49 = getelementptr inbounds %struct.bfs_sb_info, %struct.bfs_sb_info* %48, i32 0, i32 0
  %50 = call i32 @mutex_unlock(i32* %49)
  store i32 0, i32* %4, align 4
  br label %51

51:                                               ; preds = %34, %29
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local %struct.bfs_sb_info* @BFS_SB(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bfs_add_entry(%struct.inode*, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
