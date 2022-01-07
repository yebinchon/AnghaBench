; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_partial_object.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_file.c_ceph_zero_partial_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_osd_request = type { i32 }

@CEPH_OSD_OP_DELETE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_TRUNCATE = common dso_local global i32 0, align 4
@CEPH_OSD_OP_ZERO = common dso_local global i32 0, align 4
@CEPH_OSD_FLAG_WRITE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, i64*)* @ceph_zero_partial_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_zero_partial_object(%struct.inode* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca %struct.ceph_osd_request*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %13 = load %struct.inode*, %struct.inode** %4, align 8
  %14 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %13)
  store %struct.ceph_inode_info* %14, %struct.ceph_inode_info** %7, align 8
  %15 = load %struct.inode*, %struct.inode** %4, align 8
  %16 = call %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode* %15)
  store %struct.ceph_fs_client* %16, %struct.ceph_fs_client** %8, align 8
  store i32 0, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %17 = load i64*, i64** %6, align 8
  %18 = icmp ne i64* %17, null
  br i1 %18, label %28, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* %5, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %19
  %23 = load i32, i32* @CEPH_OSD_OP_DELETE, align 4
  br label %26

24:                                               ; preds = %19
  %25 = load i32, i32* @CEPH_OSD_OP_TRUNCATE, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %12, align 4
  store i64* %11, i64** %6, align 8
  br label %30

28:                                               ; preds = %3
  %29 = load i32, i32* @CEPH_OSD_OP_ZERO, align 4
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %28, %26
  %31 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %32 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %36 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %35, i32 0, i32 0
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = call i32 @ceph_vino(%struct.inode* %37)
  %39 = load i64, i64* %5, align 8
  %40 = load i64*, i64** %6, align 8
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* @CEPH_OSD_FLAG_WRITE, align 4
  %43 = call %struct.ceph_osd_request* @ceph_osdc_new_request(i32* %34, i32* %36, i32 %38, i64 %39, i64* %40, i32 0, i32 1, i32 %41, i32 %42, i32* null, i32 0, i32 0, i32 0)
  store %struct.ceph_osd_request* %43, %struct.ceph_osd_request** %9, align 8
  %44 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %45 = call i64 @IS_ERR(%struct.ceph_osd_request* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %30
  %48 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %49 = call i32 @PTR_ERR(%struct.ceph_osd_request* %48)
  store i32 %49, i32* %10, align 4
  br label %80

50:                                               ; preds = %30
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %55 = getelementptr inbounds %struct.ceph_osd_request, %struct.ceph_osd_request* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %57 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %61 = call i32 @ceph_osdc_start_request(i32* %59, %struct.ceph_osd_request* %60, i32 0)
  store i32 %61, i32* %10, align 4
  %62 = load i32, i32* %10, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %77, label %64

64:                                               ; preds = %50
  %65 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %66 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %70 = call i32 @ceph_osdc_wait_request(i32* %68, %struct.ceph_osd_request* %69)
  store i32 %70, i32* %10, align 4
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @ENOENT, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp eq i32 %71, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store i32 0, i32* %10, align 4
  br label %76

76:                                               ; preds = %75, %64
  br label %77

77:                                               ; preds = %76, %50
  %78 = load %struct.ceph_osd_request*, %struct.ceph_osd_request** %9, align 8
  %79 = call i32 @ceph_osdc_put_request(%struct.ceph_osd_request* %78)
  br label %80

80:                                               ; preds = %77, %47
  %81 = load i32, i32* %10, align 4
  ret i32 %81
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local %struct.ceph_fs_client* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local %struct.ceph_osd_request* @ceph_osdc_new_request(i32*, i32*, i32, i64, i64*, i32, i32, i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @ceph_vino(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @PTR_ERR(%struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_start_request(i32*, %struct.ceph_osd_request*, i32) #1

declare dso_local i32 @ceph_osdc_wait_request(i32*, %struct.ceph_osd_request*) #1

declare dso_local i32 @ceph_osdc_put_request(%struct.ceph_osd_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
