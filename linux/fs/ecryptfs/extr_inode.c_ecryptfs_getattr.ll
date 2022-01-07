; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_getattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_getattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.kstat*, i32, i32)* @ecryptfs_getattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_getattr(%struct.path* %0, %struct.kstat* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.kstat*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.kstat, align 4
  %11 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.kstat* %1, %struct.kstat** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.path*, %struct.path** %5, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %12, i32 0, i32 0
  %14 = load %struct.dentry*, %struct.dentry** %13, align 8
  store %struct.dentry* %14, %struct.dentry** %9, align 8
  %15 = load %struct.dentry*, %struct.dentry** %9, align 8
  %16 = call i32 @ecryptfs_dentry_to_lower_path(%struct.dentry* %15)
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @vfs_getattr(i32 %16, %struct.kstat* %10, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %4
  %23 = load %struct.dentry*, %struct.dentry** %9, align 8
  %24 = call i32 @d_inode(%struct.dentry* %23)
  %25 = load %struct.dentry*, %struct.dentry** %9, align 8
  %26 = call i32 @d_inode(%struct.dentry* %25)
  %27 = call i32 @ecryptfs_inode_to_lower(i32 %26)
  %28 = call i32 @fsstack_copy_attr_all(i32 %24, i32 %27)
  %29 = load %struct.dentry*, %struct.dentry** %9, align 8
  %30 = call i32 @d_inode(%struct.dentry* %29)
  %31 = load %struct.kstat*, %struct.kstat** %6, align 8
  %32 = call i32 @generic_fillattr(i32 %30, %struct.kstat* %31)
  %33 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.kstat*, %struct.kstat** %6, align 8
  %36 = getelementptr inbounds %struct.kstat, %struct.kstat* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %22, %4
  %38 = load i32, i32* %11, align 4
  ret i32 %38
}

declare dso_local i32 @vfs_getattr(i32, %struct.kstat*, i32, i32) #1

declare dso_local i32 @ecryptfs_dentry_to_lower_path(%struct.dentry*) #1

declare dso_local i32 @fsstack_copy_attr_all(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_inode_to_lower(i32) #1

declare dso_local i32 @generic_fillattr(i32, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
