; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_destroy_fs_client.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_destroy_fs_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_fs_client = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"destroy_fs_client %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"destroy_fs_client %p done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_fs_client*)* @destroy_fs_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_fs_client(%struct.ceph_fs_client* %0) #0 {
  %2 = alloca %struct.ceph_fs_client*, align 8
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %2, align 8
  %3 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %4 = call i32 @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), %struct.ceph_fs_client* %3)
  %5 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %6 = call i32 @ceph_mdsc_destroy(%struct.ceph_fs_client* %5)
  %7 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @destroy_workqueue(i32 %9)
  %11 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @destroy_workqueue(i32 %13)
  %15 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mempool_destroy(i32 %17)
  %19 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %20 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @destroy_mount_options(i32 %21)
  %23 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %24 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ceph_destroy_client(i32 %25)
  %27 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %28 = call i32 @kfree(%struct.ceph_fs_client* %27)
  %29 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %30 = call i32 @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_fs_client* %29)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_fs_client*) #1

declare dso_local i32 @ceph_mdsc_destroy(%struct.ceph_fs_client*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @mempool_destroy(i32) #1

declare dso_local i32 @destroy_mount_options(i32) #1

declare dso_local i32 @ceph_destroy_client(i32) #1

declare dso_local i32 @kfree(%struct.ceph_fs_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
