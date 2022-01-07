; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_main.c_ecryptfs_put_lower_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_main.c_ecryptfs_put_lower_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ecryptfs_inode_info = type { i32, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecryptfs_put_lower_file(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ecryptfs_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode* %4)
  store %struct.ecryptfs_inode_info* %5, %struct.ecryptfs_inode_info** %3, align 8
  %6 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %7 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %6, i32 0, i32 2
  %8 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %9 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %8, i32 0, i32 0
  %10 = call i64 @atomic_dec_and_mutex_lock(i32* %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %1
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @filemap_write_and_wait(i32 %15)
  %17 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %18 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = call i32 @fput(i32* %19)
  %21 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %22 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %21, i32 0, i32 1
  store i32* null, i32** %22, align 8
  %23 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %3, align 8
  %24 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  br label %26

26:                                               ; preds = %12, %1
  ret void
}

declare dso_local %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local i64 @atomic_dec_and_mutex_lock(i32*, i32*) #1

declare dso_local i32 @filemap_write_and_wait(i32) #1

declare dso_local i32 @fput(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
