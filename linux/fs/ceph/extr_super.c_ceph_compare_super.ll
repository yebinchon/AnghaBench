; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_compare_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_compare_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ceph_fs_client = type { %struct.ceph_mount_options*, %struct.TYPE_2__* }
%struct.ceph_mount_options = type { i64 }
%struct.TYPE_2__ = type { i32, %struct.ceph_options* }
%struct.ceph_options = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"ceph_compare_super %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"monitor(s)/mount options don't match\0A\00", align 1
@CEPH_OPT_FSID = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"fsid doesn't match\0A\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"flags differ\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i8*)* @ceph_compare_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_compare_super(%struct.super_block* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ceph_fs_client*, align 8
  %7 = alloca %struct.ceph_mount_options*, align 8
  %8 = alloca %struct.ceph_options*, align 8
  %9 = alloca %struct.ceph_fs_client*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.ceph_fs_client*
  store %struct.ceph_fs_client* %11, %struct.ceph_fs_client** %6, align 8
  %12 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %13 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %12, i32 0, i32 0
  %14 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %13, align 8
  store %struct.ceph_mount_options* %14, %struct.ceph_mount_options** %7, align 8
  %15 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load %struct.ceph_options*, %struct.ceph_options** %18, align 8
  store %struct.ceph_options* %19, %struct.ceph_options** %8, align 8
  %20 = load %struct.super_block*, %struct.super_block** %4, align 8
  %21 = call %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block* %20)
  store %struct.ceph_fs_client* %21, %struct.ceph_fs_client** %9, align 8
  %22 = load %struct.super_block*, %struct.super_block** %4, align 8
  %23 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.super_block* %22)
  %24 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %25 = load %struct.ceph_options*, %struct.ceph_options** %8, align 8
  %26 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %27 = call i64 @compare_mount_options(%struct.ceph_mount_options* %24, %struct.ceph_options* %25, %struct.ceph_fs_client* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

31:                                               ; preds = %2
  %32 = load %struct.ceph_options*, %struct.ceph_options** %8, align 8
  %33 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @CEPH_OPT_FSID, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %49

38:                                               ; preds = %31
  %39 = load %struct.ceph_options*, %struct.ceph_options** %8, align 8
  %40 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %39, i32 0, i32 1
  %41 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %42 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = call i64 @ceph_fsid_compare(i32* %40, i32* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %38
  %48 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

49:                                               ; preds = %38, %31
  %50 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %7, align 8
  %51 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %9, align 8
  %54 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %53, i32 0, i32 0
  %55 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %54, align 8
  %56 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49
  %60 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %62

61:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %59, %47, %29
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i64 @compare_mount_options(%struct.ceph_mount_options*, %struct.ceph_options*, %struct.ceph_fs_client*) #1

declare dso_local i64 @ceph_fsid_compare(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
