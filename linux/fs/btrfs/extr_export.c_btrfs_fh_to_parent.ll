; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_export.c_btrfs_fh_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_export.c_btrfs_fh_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i32 }
%struct.btrfs_fid = type { i32, i32, i32, i32 }

@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_CONNECTABLE = common dso_local global i32 0, align 4
@FILEID_BTRFS_WITH_PARENT_ROOT = common dso_local global i32 0, align 4
@BTRFS_FID_SIZE_CONNECTABLE_ROOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @btrfs_fh_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @btrfs_fh_to_parent(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.btrfs_fid*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.fid*, %struct.fid** %7, align 8
  %15 = bitcast %struct.fid* %14 to %struct.btrfs_fid*
  store %struct.btrfs_fid* %15, %struct.btrfs_fid** %10, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %55

24:                                               ; preds = %19
  %25 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %26 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %12, align 4
  br label %43

28:                                               ; preds = %4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @FILEID_BTRFS_WITH_PARENT_ROOT, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @BTRFS_FID_SIZE_CONNECTABLE_ROOT, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %55

37:                                               ; preds = %32
  %38 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %39 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %12, align 4
  br label %42

41:                                               ; preds = %28
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %55

42:                                               ; preds = %37
  br label %43

43:                                               ; preds = %42, %24
  %44 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %45 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %11, align 4
  %47 = load %struct.btrfs_fid*, %struct.btrfs_fid** %10, align 8
  %48 = getelementptr inbounds %struct.btrfs_fid, %struct.btrfs_fid* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  %50 = load %struct.super_block*, %struct.super_block** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* %13, align 4
  %54 = call %struct.dentry* @btrfs_get_dentry(%struct.super_block* %50, i32 %51, i32 %52, i32 %53, i32 1)
  store %struct.dentry* %54, %struct.dentry** %5, align 8
  br label %55

55:                                               ; preds = %43, %41, %36, %23
  %56 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %56
}

declare dso_local %struct.dentry* @btrfs_get_dentry(%struct.super_block*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
