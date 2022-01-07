; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_set_timeouts.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_set_timeouts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ceph_mount_options* }
%struct.ceph_mount_options = type { i32, i32 }
%struct.ceph_inode_info = type { i8*, i8*, i32 }

@jiffies = common dso_local global i8* null, align 8
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"__cap_set_timeouts %p min %lu max %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_inode_info*)* @__cap_set_timeouts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cap_set_timeouts(%struct.ceph_mds_client* %0, %struct.ceph_inode_info* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca %struct.ceph_mount_options*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_inode_info* %1, %struct.ceph_inode_info** %4, align 8
  %6 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %9, align 8
  store %struct.ceph_mount_options* %10, %struct.ceph_mount_options** %5, align 8
  %11 = load i8*, i8** @jiffies, align 8
  %12 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HZ, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = getelementptr i8, i8* %11, i64 %17
  %19 = call i8* @round_jiffies(i8* %18)
  %20 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %21 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @jiffies, align 8
  %23 = load %struct.ceph_mount_options*, %struct.ceph_mount_options** %5, align 8
  %24 = getelementptr inbounds %struct.ceph_mount_options, %struct.ceph_mount_options* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @HZ, align 4
  %27 = mul nsw i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = getelementptr i8, i8* %22, i64 %28
  %30 = call i8* @round_jiffies(i8* %29)
  %31 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %32 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %31, i32 0, i32 0
  store i8* %30, i8** %32, align 8
  %33 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %33, i32 0, i32 2
  %35 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %36 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = load i8*, i8** @jiffies, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %44 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %43, i32 0, i32 0
  %45 = load i8*, i8** %44, align 8
  %46 = load i8*, i8** @jiffies, align 8
  %47 = ptrtoint i8* %45 to i64
  %48 = ptrtoint i8* %46 to i64
  %49 = sub i64 %47, %48
  %50 = inttoptr i64 %49 to i8*
  %51 = call i32 @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32* %34, i8* %42, i8* %50)
  ret void
}

declare dso_local i8* @round_jiffies(i8*) #1

declare dso_local i32 @dout(i8*, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
