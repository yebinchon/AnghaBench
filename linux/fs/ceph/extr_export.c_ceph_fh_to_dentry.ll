; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i64 }
%struct.ceph_nfs_fh = type { i32 }
%struct.ceph_nfs_snapfh = type { i32 }

@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@FILEID_INO32_GEN = common dso_local global i32 0, align 4
@FILEID_INO32_GEN_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fh_to_dentry %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @ceph_fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ceph_fh_to_dentry(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_nfs_fh*, align 8
  %11 = alloca %struct.ceph_nfs_snapfh*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.fid*, %struct.fid** %7, align 8
  %13 = getelementptr inbounds %struct.fid, %struct.fid* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to i8*
  %16 = bitcast i8* %15 to %struct.ceph_nfs_fh*
  store %struct.ceph_nfs_fh* %16, %struct.ceph_nfs_fh** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %4
  %21 = load %struct.fid*, %struct.fid** %7, align 8
  %22 = getelementptr inbounds %struct.fid, %struct.fid* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = bitcast i8* %24 to %struct.ceph_nfs_snapfh*
  store %struct.ceph_nfs_snapfh* %25, %struct.ceph_nfs_snapfh** %11, align 8
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %11, align 8
  %28 = call %struct.dentry* @__snapfh_to_dentry(%struct.super_block* %26, %struct.ceph_nfs_snapfh* %27, i32 0)
  store %struct.dentry* %28, %struct.dentry** %5, align 8
  br label %53

29:                                               ; preds = %4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FILEID_INO32_GEN, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @FILEID_INO32_GEN_PARENT, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %53

38:                                               ; preds = %33, %29
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = icmp ult i64 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %53

43:                                               ; preds = %38
  %44 = load %struct.ceph_nfs_fh*, %struct.ceph_nfs_fh** %10, align 8
  %45 = getelementptr inbounds %struct.ceph_nfs_fh, %struct.ceph_nfs_fh* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = load %struct.ceph_nfs_fh*, %struct.ceph_nfs_fh** %10, align 8
  %50 = getelementptr inbounds %struct.ceph_nfs_fh, %struct.ceph_nfs_fh* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call %struct.dentry* @__fh_to_dentry(%struct.super_block* %48, i32 %51)
  store %struct.dentry* %52, %struct.dentry** %5, align 8
  br label %53

53:                                               ; preds = %43, %42, %37, %20
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %54
}

declare dso_local %struct.dentry* @__snapfh_to_dentry(%struct.super_block*, %struct.ceph_nfs_snapfh*, i32) #1

declare dso_local i32 @dout(i8*, i32) #1

declare dso_local %struct.dentry* @__fh_to_dentry(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
