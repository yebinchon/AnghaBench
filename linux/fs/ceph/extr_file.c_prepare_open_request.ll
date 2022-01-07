; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_prepare_open_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_prepare_open_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_request = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.super_block = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }

@USE_ANY_MDS = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@CEPH_MDS_OP_CREATE = common dso_local global i32 0, align 4
@CEPH_MDS_OP_OPEN = common dso_local global i32 0, align 4
@O_WRONLY = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@USE_AUTH_MDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_mds_request* (%struct.super_block*, i32, i32)* @prepare_open_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_mds_request* @prepare_open_request(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ceph_fs_client*, align 8
  %8 = alloca %struct.ceph_mds_client*, align 8
  %9 = alloca %struct.ceph_mds_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load %struct.super_block*, %struct.super_block** %4, align 8
  %13 = call %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block* %12)
  store %struct.ceph_fs_client* %13, %struct.ceph_fs_client** %7, align 8
  %14 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %15 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %14, i32 0, i32 0
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %15, align 8
  store %struct.ceph_mds_client* %16, %struct.ceph_mds_client** %8, align 8
  %17 = load i32, i32* @USE_ANY_MDS, align 4
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @O_CREAT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i32, i32* @CEPH_MDS_OP_CREATE, align 4
  br label %26

24:                                               ; preds = %3
  %25 = load i32, i32* @CEPH_MDS_OP_OPEN, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %11, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @O_WRONLY, align 4
  %30 = load i32, i32* @O_RDWR, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @O_CREAT, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @O_TRUNC, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %28, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %26
  %39 = load i32, i32* @USE_AUTH_MDS, align 4
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %38, %26
  %41 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %8, align 8
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client* %41, i32 %42, i32 %43)
  store %struct.ceph_mds_request* %44, %struct.ceph_mds_request** %9, align 8
  %45 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %46 = call i64 @IS_ERR(%struct.ceph_mds_request* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %66

49:                                               ; preds = %40
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @ceph_flags_to_mode(i32 %50)
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @ceph_flags_sys2wire(i32 %54)
  %56 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 1
  store i32 %55, i32* %59, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @cpu_to_le32(i32 %60)
  %62 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  store i32 %61, i32* %65, align 4
  br label %66

66:                                               ; preds = %49, %48
  %67 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %9, align 8
  ret %struct.ceph_mds_request* %67
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local %struct.ceph_mds_request* @ceph_mdsc_create_request(%struct.ceph_mds_client*, i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_flags_to_mode(i32) #1

declare dso_local i32 @ceph_flags_sys2wire(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
