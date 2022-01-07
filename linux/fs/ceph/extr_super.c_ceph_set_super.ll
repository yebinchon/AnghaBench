; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_set_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_set_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32, %struct.ceph_fs_client*, i32, i64, i32*, i32*, i32*, i32, i32, i32 }
%struct.ceph_fs_client = type { i64, %struct.super_block*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"set_super %p data %p\0A\00", align 1
@MAX_LFS_FILESIZE = common dso_local global i32 0, align 4
@ceph_xattr_handlers = common dso_local global i32 0, align 4
@ceph_super_ops = common dso_local global i32 0, align 4
@ceph_dentry_ops = common dso_local global i32 0, align 4
@ceph_export_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @ceph_set_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_set_super(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_fs_client*, align 8
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.ceph_fs_client*
  store %struct.ceph_fs_client* %9, %struct.ceph_fs_client** %6, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.super_block* %10, i8* %11)
  %13 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 9
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* @MAX_LFS_FILESIZE, align 4
  %21 = load %struct.super_block*, %struct.super_block** %4, align 8
  %22 = getelementptr inbounds %struct.super_block, %struct.super_block* %21, i32 0, i32 8
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ceph_xattr_handlers, align 4
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = getelementptr inbounds %struct.super_block, %struct.super_block* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 8
  %26 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %27 = load %struct.super_block*, %struct.super_block** %4, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 1
  store %struct.ceph_fs_client* %26, %struct.ceph_fs_client** %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %31 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %30, i32 0, i32 1
  store %struct.super_block* %29, %struct.super_block** %31, align 8
  %32 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %33 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %32, i32 0, i32 0
  store i64 1099511627776, i64* %33, align 8
  %34 = load %struct.super_block*, %struct.super_block** %4, align 8
  %35 = getelementptr inbounds %struct.super_block, %struct.super_block* %34, i32 0, i32 6
  store i32* @ceph_super_ops, i32** %35, align 8
  %36 = load %struct.super_block*, %struct.super_block** %4, align 8
  %37 = getelementptr inbounds %struct.super_block, %struct.super_block* %36, i32 0, i32 5
  store i32* @ceph_dentry_ops, i32** %37, align 8
  %38 = load %struct.super_block*, %struct.super_block** %4, align 8
  %39 = getelementptr inbounds %struct.super_block, %struct.super_block* %38, i32 0, i32 4
  store i32* @ceph_export_ops, i32** %39, align 8
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = getelementptr inbounds %struct.super_block, %struct.super_block* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.super_block*, %struct.super_block** %4, align 8
  %43 = getelementptr inbounds %struct.super_block, %struct.super_block* %42, i32 0, i32 3
  store i64 0, i64* %43, align 8
  %44 = load i32, i32* @U32_MAX, align 4
  %45 = load %struct.super_block*, %struct.super_block** %4, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  %47 = load %struct.super_block*, %struct.super_block** %4, align 8
  %48 = call i32 @set_anon_super(%struct.super_block* %47, i32* null)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %2
  br label %54

52:                                               ; preds = %2
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %60

54:                                               ; preds = %51
  %55 = load %struct.super_block*, %struct.super_block** %4, align 8
  %56 = getelementptr inbounds %struct.super_block, %struct.super_block* %55, i32 0, i32 1
  store %struct.ceph_fs_client* null, %struct.ceph_fs_client** %56, align 8
  %57 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %58 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %57, i32 0, i32 1
  store %struct.super_block* null, %struct.super_block** %58, align 8
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %54, %52
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @dout(i8*, %struct.super_block*, i8*) #1

declare dso_local i32 @set_anon_super(%struct.super_block*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
