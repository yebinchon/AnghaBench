; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @ecryptfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.dentry* %2, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %4, align 8
  %13 = call i32 @d_inode(%struct.dentry* %12)
  %14 = call i32 @i_size_read(i32 %13)
  store i32 %14, i32* %10, align 4
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %7, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %17)
  store %struct.dentry* %18, %struct.dentry** %8, align 8
  %19 = load %struct.dentry*, %struct.dentry** %7, align 8
  %20 = call i32 @dget(%struct.dentry* %19)
  %21 = load %struct.dentry*, %struct.dentry** %8, align 8
  %22 = call i32 @dget(%struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %8, align 8
  %24 = call %struct.dentry* @lock_parent(%struct.dentry* %23)
  store %struct.dentry* %24, %struct.dentry** %9, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = load %struct.dentry*, %struct.dentry** %9, align 8
  %27 = call i32 @d_inode(%struct.dentry* %26)
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = call i32 @vfs_link(%struct.dentry* %25, i32 %27, %struct.dentry* %28, i32* null)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %3
  %33 = load %struct.dentry*, %struct.dentry** %8, align 8
  %34 = call i64 @d_really_is_negative(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32, %3
  br label %68

37:                                               ; preds = %32
  %38 = load %struct.dentry*, %struct.dentry** %8, align 8
  %39 = load %struct.dentry*, %struct.dentry** %6, align 8
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ecryptfs_interpose(%struct.dentry* %38, %struct.dentry* %39, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %68

47:                                               ; preds = %37
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = load %struct.dentry*, %struct.dentry** %9, align 8
  %50 = call i32 @d_inode(%struct.dentry* %49)
  %51 = call i32 @fsstack_copy_attr_times(%struct.inode* %48, i32 %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = load %struct.dentry*, %struct.dentry** %9, align 8
  %54 = call i32 @d_inode(%struct.dentry* %53)
  %55 = call i32 @fsstack_copy_inode_size(%struct.inode* %52, i32 %54)
  %56 = load %struct.dentry*, %struct.dentry** %4, align 8
  %57 = call i32 @d_inode(%struct.dentry* %56)
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = call i32 @d_inode(%struct.dentry* %58)
  %60 = call %struct.TYPE_2__* @ecryptfs_inode_to_lower(i32 %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @set_nlink(i32 %57, i32 %62)
  %64 = load %struct.dentry*, %struct.dentry** %6, align 8
  %65 = call i32 @d_inode(%struct.dentry* %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @i_size_write(i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %47, %46, %36
  %69 = load %struct.dentry*, %struct.dentry** %9, align 8
  %70 = call i32 @unlock_dir(%struct.dentry* %69)
  %71 = load %struct.dentry*, %struct.dentry** %8, align 8
  %72 = call i32 @dput(%struct.dentry* %71)
  %73 = load %struct.dentry*, %struct.dentry** %7, align 8
  %74 = call i32 @dput(%struct.dentry* %73)
  %75 = load i32, i32* %11, align 4
  ret i32 %75
}

declare dso_local i32 @i_size_read(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @dget(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_link(%struct.dentry*, i32, %struct.dentry*, i32*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, i32) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(i32, i32) #1

declare dso_local %struct.TYPE_2__* @ecryptfs_inode_to_lower(i32) #1

declare dso_local i32 @i_size_write(i32, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
