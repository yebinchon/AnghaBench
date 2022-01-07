; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @ecryptfs_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %12)
  store %struct.dentry* %13, %struct.dentry** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %10, align 8
  %15 = call %struct.dentry* @lock_parent(%struct.dentry* %14)
  store %struct.dentry* %15, %struct.dentry** %11, align 8
  %16 = load %struct.dentry*, %struct.dentry** %11, align 8
  %17 = call i32 @d_inode(%struct.dentry* %16)
  %18 = load %struct.dentry*, %struct.dentry** %10, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @vfs_mknod(i32 %17, %struct.dentry* %18, i32 %19, i32 %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.dentry*, %struct.dentry** %10, align 8
  %26 = call i64 @d_really_is_negative(%struct.dentry* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %24, %4
  br label %48

29:                                               ; preds = %24
  %30 = load %struct.dentry*, %struct.dentry** %10, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ecryptfs_interpose(%struct.dentry* %30, %struct.dentry* %31, i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %29
  br label %48

39:                                               ; preds = %29
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = load %struct.dentry*, %struct.dentry** %11, align 8
  %42 = call i32 @d_inode(%struct.dentry* %41)
  %43 = call i32 @fsstack_copy_attr_times(%struct.inode* %40, i32 %42)
  %44 = load %struct.inode*, %struct.inode** %5, align 8
  %45 = load %struct.dentry*, %struct.dentry** %11, align 8
  %46 = call i32 @d_inode(%struct.dentry* %45)
  %47 = call i32 @fsstack_copy_inode_size(%struct.inode* %44, i32 %46)
  br label %48

48:                                               ; preds = %39, %38, %28
  %49 = load %struct.dentry*, %struct.dentry** %11, align 8
  %50 = call i32 @unlock_dir(%struct.dentry* %49)
  %51 = load %struct.dentry*, %struct.dentry** %6, align 8
  %52 = call i64 @d_really_is_negative(%struct.dentry* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.dentry*, %struct.dentry** %6, align 8
  %56 = call i32 @d_drop(%struct.dentry* %55)
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32, i32* %9, align 4
  ret i32 %58
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.dentry* @lock_parent(%struct.dentry*) #1

declare dso_local i32 @vfs_mknod(i32, %struct.dentry*, i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_interpose(%struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @fsstack_copy_attr_times(%struct.inode*, i32) #1

declare dso_local i32 @fsstack_copy_inode_size(%struct.inode*, i32) #1

declare dso_local i32 @unlock_dir(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
