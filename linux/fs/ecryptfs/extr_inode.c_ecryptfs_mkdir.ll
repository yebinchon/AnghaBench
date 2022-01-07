; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ecryptfs_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %10)
  store %struct.dentry* %11, %struct.dentry** %8, align 8
  %12 = load %struct.dentry*, %struct.dentry** %8, align 8
  %13 = call %struct.dentry* @lock_parent(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %9, align 8
  %14 = load %struct.dentry*, %struct.dentry** %9, align 8
  %15 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %14)
  %16 = load %struct.dentry*, %struct.dentry** %8, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @vfs_mkdir(%struct.TYPE_5__* %15, %struct.dentry* %16, i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = call i64 @d_really_is_negative(%struct.dentry* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21, %3
  br label %51

26:                                               ; preds = %21
  %27 = load %struct.dentry*, %struct.dentry** %8, align 8
  %28 = load %struct.dentry*, %struct.dentry** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @ecryptfs_interpose(%struct.dentry* %27, %struct.dentry* %28, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %51

36:                                               ; preds = %26
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %38)
  %40 = call i32 @fsstack_copy_attr_times(%struct.inode* %37, %struct.TYPE_5__* %39)
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load %struct.dentry*, %struct.dentry** %9, align 8
  %43 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %42)
  %44 = call i32 @fsstack_copy_inode_size(%struct.inode* %41, %struct.TYPE_5__* %43)
  %45 = load %struct.inode*, %struct.inode** %4, align 8
  %46 = load %struct.dentry*, %struct.dentry** %9, align 8
  %47 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %46)
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @set_nlink(%struct.inode* %45, i32 %49)
  br label %51

51:                                               ; preds = %36, %35, %25
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = call i32 @unlock_dir(%struct.dentry* %52)
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call i64 @d_really_is_negative(%struct.dentry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.dentry*, %struct.dentry** %5, align 8
  %59 = call i32 @d_drop(%struct.dentry* %58)
  br label %60

60:                                               ; preds = %57, %51
  %61 = load i32, i32* %7, align 4
  ret i32 %61
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_mkdir(%struct.TYPE_5__*, %struct.dentry*, i32) #1

declare dso_local %struct.TYPE_5__* @d_inode(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, %struct.TYPE_5__*) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, %struct.TYPE_5__*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
