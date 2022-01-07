; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_main.c_ecryptfs_get_lower_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_main.c_ecryptfs_get_lower_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.ecryptfs_inode_info = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_get_lower_file(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ecryptfs_inode_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode* %8)
  store %struct.ecryptfs_inode_info* %9, %struct.ecryptfs_inode_info** %5, align 8
  %10 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %5, align 8
  %11 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %10, i32 0, i32 0
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %5, align 8
  %14 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %13, i32 0, i32 1
  %15 = call i32 @atomic_inc_return(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = call i64 @WARN_ON_ONCE(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %40

24:                                               ; preds = %2
  %25 = load i32, i32* %6, align 4
  %26 = icmp eq i32 %25, 1
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load %struct.dentry*, %struct.dentry** %3, align 8
  %29 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %5, align 8
  %30 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %29, i32 0, i32 2
  %31 = call i32 @ecryptfs_init_lower_file(%struct.dentry* %28, i32* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %27
  %35 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %5, align 8
  %36 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %35, i32 0, i32 1
  %37 = call i32 @atomic_set(i32* %36, i32 0)
  br label %38

38:                                               ; preds = %34, %27
  br label %39

39:                                               ; preds = %38, %24
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.ecryptfs_inode_info*, %struct.ecryptfs_inode_info** %5, align 8
  %42 = getelementptr inbounds %struct.ecryptfs_inode_info, %struct.ecryptfs_inode_info* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  %44 = load i32, i32* %7, align 4
  ret i32 %44
}

declare dso_local %struct.ecryptfs_inode_info* @ecryptfs_inode_to_private(%struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ecryptfs_init_lower_file(%struct.dentry*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
