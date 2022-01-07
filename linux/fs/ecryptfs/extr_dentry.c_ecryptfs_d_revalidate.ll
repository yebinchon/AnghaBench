; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_dentry.c_ecryptfs_d_revalidate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_dentry.c_ecryptfs_d_revalidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }
%struct.inode = type { i32 }

@LOOKUP_RCU = common dso_local global i32 0, align 4
@ECHILD = common dso_local global i32 0, align 4
@DCACHE_OP_REVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i32)* @ecryptfs_d_revalidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_d_revalidate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %9)
  store %struct.dentry* %10, %struct.dentry** %6, align 8
  store i32 1, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @LOOKUP_RCU, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ECHILD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %54

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DCACHE_OP_REVALIDATE, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %18
  %26 = load %struct.dentry*, %struct.dentry** %6, align 8
  %27 = getelementptr inbounds %struct.dentry, %struct.dentry* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.dentry*, i32)**
  %31 = load i32 (%struct.dentry*, i32)*, i32 (%struct.dentry*, i32)** %30, align 8
  %32 = load %struct.dentry*, %struct.dentry** %6, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 %31(%struct.dentry* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  br label %35

35:                                               ; preds = %25, %18
  %36 = load %struct.dentry*, %struct.dentry** %4, align 8
  %37 = call i64 @d_really_is_positive(%struct.dentry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %35
  %40 = load %struct.dentry*, %struct.dentry** %4, align 8
  %41 = call %struct.inode* @d_inode(%struct.dentry* %40)
  store %struct.inode* %41, %struct.inode** %8, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = load %struct.inode*, %struct.inode** %8, align 8
  %44 = call i32 @ecryptfs_inode_to_lower(%struct.inode* %43)
  %45 = call i32 @fsstack_copy_attr_all(%struct.inode* %42, i32 %44)
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %54

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %35
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %52, %50, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @fsstack_copy_attr_all(%struct.inode*, i32) #1

declare dso_local i32 @ecryptfs_inode_to_lower(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
