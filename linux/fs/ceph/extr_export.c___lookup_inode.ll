; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___lookup_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___lookup_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_vino = type { i32, i32 }
%struct.ceph_mds_request = type { i32, %struct.inode*, %struct.ceph_vino, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ceph_mds_client* }

@CEPH_NOSNAP = common dso_local global i32 0, align 4
@CEPH_MDS_OP_LOOKUPINO = common dso_local global i32 0, align 4
@USE_ANY_MDS = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4
@CEPH_CAP_XATTR_SHARED = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @__lookup_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @__lookup_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_mds_client*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.ceph_vino, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ceph_mds_request*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.TYPE_6__* @ceph_sb_to_client(%struct.super_block* %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %14, align 8
  store %struct.ceph_mds_client* %15, %struct.ceph_mds_client** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %8, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = load i32, i32* @CEPH_NOSNAP, align 4
  %19 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %8, i32 0, i32 0
  store i32 %18, i32* %19, align 4
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = bitcast %struct.ceph_vino* %8 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call %struct.inode* @ceph_find_inode(%struct.super_block* %20, i64 %22)
  store %struct.inode* %23, %struct.inode** %7, align 8
  %24 = load %struct.inode*, %struct.inode** %7, align 8
  %25 = icmp ne %struct.inode* %24, null
  br i1 %25, label %91, label %26

26:                                               ; preds = %2
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %28 = load i32, i32* @CEPH_MDS_OP_LOOKUPINO, align 4
  %29 = load i32, i32* @USE_ANY_MDS, align 4
  %30 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %27, i32 %28, i32 %29)
  store %struct.ceph_mds_request* %30, %struct.ceph_mds_request** %10, align 8
  %31 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %32 = call i64 @IS_ERR(%struct.ceph_mds_request* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %36 = call %struct.inode* @ERR_CAST(%struct.ceph_mds_request* %35)
  store %struct.inode* %36, %struct.inode** %3, align 8
  br label %93

37:                                               ; preds = %26
  %38 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  store i32 %38, i32* %11, align 4
  %39 = load %struct.super_block*, %struct.super_block** %4, align 8
  %40 = getelementptr inbounds %struct.super_block, %struct.super_block* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @d_inode(i32 %41)
  %43 = call i64 @ceph_security_xattr_wanted(i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %37
  %46 = load i32, i32* @CEPH_CAP_XATTR_SHARED, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %45, %37
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @cpu_to_le32(i32 %50)
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  store i32 %51, i32* %55, align 8
  %56 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %56, i32 0, i32 2
  %58 = bitcast %struct.ceph_vino* %57 to i8*
  %59 = bitcast %struct.ceph_vino* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 4 %59, i64 8, i1 false)
  %60 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %61 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  %62 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %63 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %64 = call i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %62, i32* null, %struct.ceph_mds_request* %63)
  store i32 %64, i32* %9, align 4
  %65 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %66 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %65, i32 0, i32 1
  %67 = load %struct.inode*, %struct.inode** %66, align 8
  store %struct.inode* %67, %struct.inode** %7, align 8
  %68 = load %struct.inode*, %struct.inode** %7, align 8
  %69 = icmp ne %struct.inode* %68, null
  br i1 %69, label %70, label %73

70:                                               ; preds = %49
  %71 = load %struct.inode*, %struct.inode** %7, align 8
  %72 = call i32 @ihold(%struct.inode* %71)
  br label %73

73:                                               ; preds = %70, %49
  %74 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %10, align 8
  %75 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %74)
  %76 = load %struct.inode*, %struct.inode** %7, align 8
  %77 = icmp ne %struct.inode* %76, null
  br i1 %77, label %90, label %78

78:                                               ; preds = %73
  %79 = load i32, i32* %9, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %78
  %82 = load i32, i32* %9, align 4
  %83 = call %struct.inode* @ERR_PTR(i32 %82)
  br label %88

84:                                               ; preds = %78
  %85 = load i32, i32* @ESTALE, align 4
  %86 = sub nsw i32 0, %85
  %87 = call %struct.inode* @ERR_PTR(i32 %86)
  br label %88

88:                                               ; preds = %84, %81
  %89 = phi %struct.inode* [ %83, %81 ], [ %87, %84 ]
  store %struct.inode* %89, %struct.inode** %3, align 8
  br label %93

90:                                               ; preds = %73
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %92, %struct.inode** %3, align 8
  br label %93

93:                                               ; preds = %91, %88, %34
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %94
}

declare dso_local %struct.TYPE_6__* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local %struct.inode* @ceph_find_inode(%struct.super_block*, i64) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.ceph_mds_request*) #1

declare dso_local i64 @ceph_security_xattr_wanted(i32) #1

declare dso_local i32 @d_inode(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client*, i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
