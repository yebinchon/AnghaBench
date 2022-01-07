; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_dynroot_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_dynroot_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { %struct.super_block* }
%struct.super_block = type { %struct.dentry*, i32 }
%struct.dentry = type { i32, i8* }
%struct.afs_cell = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_dynroot_mkdir(%struct.afs_net* %0, %struct.afs_cell* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_net*, align 8
  %5 = alloca %struct.afs_cell*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.afs_net* %0, %struct.afs_net** %4, align 8
  store %struct.afs_cell* %1, %struct.afs_cell** %5, align 8
  %10 = load %struct.afs_net*, %struct.afs_net** %4, align 8
  %11 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %6, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = icmp ne %struct.super_block* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = getelementptr inbounds %struct.super_block, %struct.super_block* %16, i32 0, i32 1
  %18 = call i64 @atomic_read(i32* %17)
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %52

21:                                               ; preds = %15
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = getelementptr inbounds %struct.super_block, %struct.super_block* %22, i32 0, i32 0
  %24 = load %struct.dentry*, %struct.dentry** %23, align 8
  store %struct.dentry* %24, %struct.dentry** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @inode_lock(i32 %27)
  %29 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %30 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dentry*, %struct.dentry** %7, align 8
  %33 = load %struct.afs_cell*, %struct.afs_cell** %5, align 8
  %34 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.dentry* @lookup_one_len(i32 %31, %struct.dentry* %32, i32 %35)
  store %struct.dentry* %36, %struct.dentry** %8, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = call i64 @IS_ERR(%struct.dentry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %21
  %41 = load %struct.dentry*, %struct.dentry** %8, align 8
  %42 = call i32 @PTR_ERR(%struct.dentry* %41)
  store i32 %42, i32* %9, align 4
  br label %46

43:                                               ; preds = %21
  %44 = load %struct.dentry*, %struct.dentry** %8, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  store i8* inttoptr (i64 1 to i8*), i8** %45, align 8
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %43, %40
  %47 = load %struct.dentry*, %struct.dentry** %7, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @inode_unlock(i32 %49)
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local %struct.dentry* @lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
