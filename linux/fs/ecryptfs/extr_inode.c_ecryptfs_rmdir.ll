; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*)* @ecryptfs_rmdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_rmdir(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.dentry* %1, %struct.dentry** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %8)
  store %struct.dentry* %9, %struct.dentry** %5, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call i32 @dget(%struct.dentry* %10)
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  %13 = call %struct.dentry* @lock_parent(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %6, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = call i32 @dget(%struct.dentry* %14)
  %16 = load %struct.dentry*, %struct.dentry** %6, align 8
  %17 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %16)
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call i32 @vfs_rmdir(%struct.TYPE_5__* %17, %struct.dentry* %18)
  store i32 %19, i32* %7, align 4
  %20 = load %struct.dentry*, %struct.dentry** %5, align 8
  %21 = call i32 @dput(%struct.dentry* %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %2
  %25 = load %struct.dentry*, %struct.dentry** %4, align 8
  %26 = call i64 @d_really_is_positive(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.dentry*, %struct.dentry** %4, align 8
  %30 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %29)
  %31 = call i32 @clear_nlink(%struct.TYPE_5__* %30)
  br label %32

32:                                               ; preds = %28, %24, %2
  %33 = load %struct.inode*, %struct.inode** %3, align 8
  %34 = load %struct.dentry*, %struct.dentry** %6, align 8
  %35 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %34)
  %36 = call i32 @fsstack_copy_attr_times(%struct.inode* %33, %struct.TYPE_5__* %35)
  %37 = load %struct.inode*, %struct.inode** %3, align 8
  %38 = load %struct.dentry*, %struct.dentry** %6, align 8
  %39 = call %struct.TYPE_5__* @d_inode(%struct.dentry* %38)
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @set_nlink(%struct.inode* %37, i32 %41)
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = call i32 @unlock_dir(%struct.dentry* %43)
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %32
  %48 = load %struct.dentry*, %struct.dentry** %4, align 8
  %49 = call i32 @d_drop(%struct.dentry* %48)
  br label %50

50:                                               ; preds = %47, %32
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = call i32 @dput(%struct.dentry* %51)
  %53 = load i32, i32* %7, align 4
  ret i32 %53
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_rmdir(%struct.TYPE_5__*, %struct.dentry*) #1

declare dso_local %struct.TYPE_5__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @clear_nlink(%struct.TYPE_5__*) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, %struct.TYPE_5__*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
