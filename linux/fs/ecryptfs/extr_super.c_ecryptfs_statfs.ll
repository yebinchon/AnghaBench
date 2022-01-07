; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_super.c_ecryptfs_statfs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_super.c_ecryptfs_statfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.kstatfs = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@ECRYPTFS_SUPER_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.kstatfs*)* @ecryptfs_statfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_statfs(%struct.dentry* %0, %struct.kstatfs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.kstatfs*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.kstatfs* %1, %struct.kstatfs** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %4, align 8
  %9 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %8)
  store %struct.dentry* %9, %struct.dentry** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = getelementptr inbounds %struct.dentry, %struct.dentry* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = bitcast {}** %15 to i32 (%struct.dentry*, %struct.kstatfs*)**
  %17 = load i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.dentry*, %struct.kstatfs*)** %16, align 8
  %18 = icmp ne i32 (%struct.dentry*, %struct.kstatfs*)* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSYS, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %54

22:                                               ; preds = %2
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.dentry*, %struct.kstatfs*)**
  %30 = load i32 (%struct.dentry*, %struct.kstatfs*)*, i32 (%struct.dentry*, %struct.kstatfs*)** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %33 = call i32 %30(%struct.dentry* %31, %struct.kstatfs* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %22
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %3, align 4
  br label %54

38:                                               ; preds = %22
  %39 = load i32, i32* @ECRYPTFS_SUPER_MAGIC, align 4
  %40 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %41 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %43 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %42, i32 0, i32 0
  %44 = load %struct.kstatfs*, %struct.kstatfs** %5, align 8
  %45 = getelementptr inbounds %struct.kstatfs, %struct.kstatfs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.dentry*, %struct.dentry** %4, align 8
  %48 = getelementptr inbounds %struct.dentry, %struct.dentry* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = call %struct.TYPE_5__* @ecryptfs_superblock_to_private(%struct.TYPE_6__* %49)
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = call i32 @ecryptfs_set_f_namelen(i32* %43, i32 %46, i32* %51)
  store i32 %52, i32* %7, align 4
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %38, %36, %19
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @ecryptfs_set_f_namelen(i32*, i32, i32*) #1

declare dso_local %struct.TYPE_5__* @ecryptfs_superblock_to_private(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
