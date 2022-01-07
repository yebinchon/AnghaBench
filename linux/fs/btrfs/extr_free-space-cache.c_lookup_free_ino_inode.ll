; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_lookup_free_ino_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_lookup_free_ino_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.btrfs_root = type { i32, %struct.inode*, i32 }
%struct.btrfs_path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @lookup_free_ino_inode(%struct.btrfs_root* %0, %struct.btrfs_path* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.btrfs_root*, align 8
  %5 = alloca %struct.btrfs_path*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.btrfs_root* %0, %struct.btrfs_root** %4, align 8
  store %struct.btrfs_path* %1, %struct.btrfs_path** %5, align 8
  store %struct.inode* null, %struct.inode** %6, align 8
  %7 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %8 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %10, i32 0, i32 1
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %2
  %15 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %16 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %15, i32 0, i32 1
  %17 = load %struct.inode*, %struct.inode** %16, align 8
  %18 = call i8* @igrab(%struct.inode* %17)
  %19 = bitcast i8* %18 to %struct.inode*
  store %struct.inode* %19, %struct.inode** %6, align 8
  br label %20

20:                                               ; preds = %14, %2
  %21 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %22 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %21, i32 0, i32 0
  %23 = call i32 @spin_unlock(i32* %22)
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %27, %struct.inode** %3, align 8
  br label %57

28:                                               ; preds = %20
  %29 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %30 = load %struct.btrfs_path*, %struct.btrfs_path** %5, align 8
  %31 = call %struct.inode* @__lookup_free_space_inode(%struct.btrfs_root* %29, %struct.btrfs_path* %30, i32 0)
  store %struct.inode* %31, %struct.inode** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i64 @IS_ERR(%struct.inode* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %36, %struct.inode** %3, align 8
  br label %57

37:                                               ; preds = %28
  %38 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %39 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %38, i32 0, i32 0
  %40 = call i32 @spin_lock(i32* %39)
  %41 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %42 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @btrfs_fs_closing(i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %37
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = call i8* @igrab(%struct.inode* %47)
  %49 = bitcast i8* %48 to %struct.inode*
  %50 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %51 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %50, i32 0, i32 1
  store %struct.inode* %49, %struct.inode** %51, align 8
  br label %52

52:                                               ; preds = %46, %37
  %53 = load %struct.btrfs_root*, %struct.btrfs_root** %4, align 8
  %54 = getelementptr inbounds %struct.btrfs_root, %struct.btrfs_root* %53, i32 0, i32 0
  %55 = call i32 @spin_unlock(i32* %54)
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %56, %struct.inode** %3, align 8
  br label %57

57:                                               ; preds = %52, %35, %26
  %58 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %58
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i8* @igrab(%struct.inode*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local %struct.inode* @__lookup_free_space_inode(%struct.btrfs_root*, %struct.btrfs_path*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @btrfs_fs_closing(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
