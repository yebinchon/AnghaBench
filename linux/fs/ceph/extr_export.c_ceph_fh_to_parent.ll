; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_fh_to_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_fh_to_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.fid = type { i64 }
%struct.ceph_nfs_confh = type { i32, i32 }
%struct.ceph_nfs_snapfh = type { i32 }

@FILEID_BTRFS_WITH_PARENT = common dso_local global i32 0, align 4
@FILEID_INO32_GEN_PARENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"fh_to_parent %llx\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, %struct.fid*, i32, i32)* @ceph_fh_to_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ceph_fh_to_parent(%struct.super_block* %0, %struct.fid* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_nfs_confh*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca %struct.ceph_nfs_snapfh*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fid* %1, %struct.fid** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.fid*, %struct.fid** %7, align 8
  %14 = getelementptr inbounds %struct.fid, %struct.fid* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = bitcast i8* %16 to %struct.ceph_nfs_confh*
  store %struct.ceph_nfs_confh* %17, %struct.ceph_nfs_confh** %10, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @FILEID_BTRFS_WITH_PARENT, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %4
  %22 = load %struct.fid*, %struct.fid** %7, align 8
  %23 = getelementptr inbounds %struct.fid, %struct.fid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = bitcast i8* %25 to %struct.ceph_nfs_snapfh*
  store %struct.ceph_nfs_snapfh* %26, %struct.ceph_nfs_snapfh** %12, align 8
  %27 = load %struct.super_block*, %struct.super_block** %6, align 8
  %28 = load %struct.ceph_nfs_snapfh*, %struct.ceph_nfs_snapfh** %12, align 8
  %29 = call %struct.dentry* @__snapfh_to_dentry(%struct.super_block* %27, %struct.ceph_nfs_snapfh* %28, i32 1)
  store %struct.dentry* %29, %struct.dentry** %5, align 8
  br label %66

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @FILEID_INO32_GEN_PARENT, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %66

35:                                               ; preds = %30
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ult i64 %37, 2
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %66

40:                                               ; preds = %35
  %41 = load %struct.ceph_nfs_confh*, %struct.ceph_nfs_confh** %10, align 8
  %42 = getelementptr inbounds %struct.ceph_nfs_confh, %struct.ceph_nfs_confh* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dout(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load %struct.super_block*, %struct.super_block** %6, align 8
  %46 = load %struct.ceph_nfs_confh*, %struct.ceph_nfs_confh** %10, align 8
  %47 = getelementptr inbounds %struct.ceph_nfs_confh, %struct.ceph_nfs_confh* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.dentry* @__get_parent(%struct.super_block* %45, i32* null, i32 %48)
  store %struct.dentry* %49, %struct.dentry** %11, align 8
  %50 = load %struct.dentry*, %struct.dentry** %11, align 8
  %51 = load i32, i32* @ENOENT, align 4
  %52 = sub nsw i32 0, %51
  %53 = call %struct.dentry* @ERR_PTR(i32 %52)
  %54 = icmp eq %struct.dentry* %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %40
  %59 = load %struct.super_block*, %struct.super_block** %6, align 8
  %60 = load %struct.ceph_nfs_confh*, %struct.ceph_nfs_confh** %10, align 8
  %61 = getelementptr inbounds %struct.ceph_nfs_confh, %struct.ceph_nfs_confh* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call %struct.dentry* @__fh_to_dentry(%struct.super_block* %59, i32 %62)
  store %struct.dentry* %63, %struct.dentry** %11, align 8
  br label %64

64:                                               ; preds = %58, %40
  %65 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %65, %struct.dentry** %5, align 8
  br label %66

66:                                               ; preds = %64, %39, %34, %21
  %67 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %67
}

declare dso_local %struct.dentry* @__snapfh_to_dentry(%struct.super_block*, %struct.ceph_nfs_snapfh*, i32) #1

declare dso_local i32 @dout(i8*, i32) #1

declare dso_local %struct.dentry* @__get_parent(%struct.super_block*, i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @__fh_to_dentry(%struct.super_block*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
