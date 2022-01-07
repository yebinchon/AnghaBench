; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c___ecryptfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c___ecryptfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32 }
%struct.super_block = type { i32 }

@EXDEV = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@ecryptfs_inode_test = common dso_local global i32 0, align 4
@ecryptfs_inode_set = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.inode*, %struct.super_block*)* @__ecryptfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @__ecryptfs_get_inode(%struct.inode* %0, %struct.super_block* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.super_block* %1, %struct.super_block** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.super_block*, %struct.super_block** %5, align 8
  %11 = call i64 @ecryptfs_superblock_to_lower(%struct.super_block* %10)
  %12 = icmp ne i64 %9, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @EXDEV, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inode* @ERR_PTR(i32 %15)
  store %struct.inode* %16, %struct.inode** %3, align 8
  br label %53

17:                                               ; preds = %2
  %18 = load %struct.inode*, %struct.inode** %4, align 8
  %19 = call i32 @igrab(%struct.inode* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load i32, i32* @ESTALE, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.inode* @ERR_PTR(i32 %23)
  store %struct.inode* %24, %struct.inode** %3, align 8
  br label %53

25:                                               ; preds = %17
  %26 = load %struct.super_block*, %struct.super_block** %5, align 8
  %27 = load %struct.inode*, %struct.inode** %4, align 8
  %28 = ptrtoint %struct.inode* %27 to i64
  %29 = load i32, i32* @ecryptfs_inode_test, align 4
  %30 = load i32, i32* @ecryptfs_inode_set, align 4
  %31 = load %struct.inode*, %struct.inode** %4, align 8
  %32 = call %struct.inode* @iget5_locked(%struct.super_block* %26, i64 %28, i32 %29, i32 %30, %struct.inode* %31)
  store %struct.inode* %32, %struct.inode** %6, align 8
  %33 = load %struct.inode*, %struct.inode** %6, align 8
  %34 = icmp ne %struct.inode* %33, null
  br i1 %34, label %41, label %35

35:                                               ; preds = %25
  %36 = load %struct.inode*, %struct.inode** %4, align 8
  %37 = call i32 @iput(%struct.inode* %36)
  %38 = load i32, i32* @EACCES, align 4
  %39 = sub nsw i32 0, %38
  %40 = call %struct.inode* @ERR_PTR(i32 %39)
  store %struct.inode* %40, %struct.inode** %3, align 8
  br label %53

41:                                               ; preds = %25
  %42 = load %struct.inode*, %struct.inode** %6, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @I_NEW, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %52, %struct.inode** %3, align 8
  br label %53

53:                                               ; preds = %51, %35, %21, %13
  %54 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %54
}

declare dso_local i64 @ecryptfs_superblock_to_lower(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local %struct.inode* @iget5_locked(%struct.super_block*, i64, i32, i32, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
