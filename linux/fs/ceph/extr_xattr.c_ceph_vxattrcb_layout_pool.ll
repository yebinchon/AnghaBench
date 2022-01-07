; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_layout_pool.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_xattr.c_ceph_vxattrcb_layout_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { %struct.TYPE_4__, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.ceph_osd_client }
%struct.ceph_osd_client = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ceph_inode_info*, i8*, i64)* @ceph_vxattrcb_layout_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ceph_vxattrcb_layout_pool(%struct.ceph_inode_info* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.ceph_fs_client*, align 8
  %9 = alloca %struct.ceph_osd_client*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.ceph_fs_client* @ceph_sb_to_client(i32 %15)
  store %struct.ceph_fs_client* %16, %struct.ceph_fs_client** %8, align 8
  %17 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %8, align 8
  %18 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %17, i32 0, i32 0
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store %struct.ceph_osd_client* %20, %struct.ceph_osd_client** %9, align 8
  %21 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %10, align 4
  %25 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %26 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %25, i32 0, i32 0
  %27 = call i32 @down_read(i32* %26)
  %28 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %29 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i8* @ceph_pg_pool_name_by_id(i32 %30, i32 %31)
  store i8* %32, i8** %11, align 8
  %33 = load i8*, i8** %11, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %47

35:                                               ; preds = %3
  %36 = load i8*, i8** %11, align 8
  %37 = call i64 @strlen(i8* %36)
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %35
  %42 = load i8*, i8** %5, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %7, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  br label %46

46:                                               ; preds = %41, %35
  br label %52

47:                                               ; preds = %3
  %48 = load i8*, i8** %5, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i64 @ceph_fmt_xattr(i8* %48, i64 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %50)
  store i64 %51, i64* %7, align 8
  br label %52

52:                                               ; preds = %47, %46
  %53 = load %struct.ceph_osd_client*, %struct.ceph_osd_client** %9, align 8
  %54 = getelementptr inbounds %struct.ceph_osd_client, %struct.ceph_osd_client* %53, i32 0, i32 0
  %55 = call i32 @up_read(i32* %54)
  %56 = load i64, i64* %7, align 8
  ret i64 %56
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @ceph_pg_pool_name_by_id(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i64 @ceph_fmt_xattr(i8*, i64, i8*, i32) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
