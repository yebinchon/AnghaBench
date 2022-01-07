; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ceph_fs_client = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32* }

@.str = private unnamed_addr constant [12 x i8] c"kill_sb %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ceph_kill_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ceph_fs_client*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block* %5)
  store %struct.ceph_fs_client* %6, %struct.ceph_fs_client** %3, align 8
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %4, align 4
  %10 = load %struct.super_block*, %struct.super_block** %2, align 8
  %11 = call i32 @dout(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), %struct.super_block* %10)
  %12 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ceph_mdsc_pre_umount(i32 %14)
  %16 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %17 = call i32 @flush_fs_workqueues(%struct.ceph_fs_client* %16)
  %18 = load %struct.super_block*, %struct.super_block** %2, align 8
  %19 = call i32 @generic_shutdown_super(%struct.super_block* %18)
  %20 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %25 = call i32 @ceph_fs_debugfs_cleanup(%struct.ceph_fs_client* %24)
  %26 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %27 = call i32 @ceph_fscache_unregister_fs(%struct.ceph_fs_client* %26)
  %28 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %29 = call i32 @destroy_fs_client(%struct.ceph_fs_client* %28)
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @free_anon_bdev(i32 %30)
  ret void
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local i32 @dout(i8*, %struct.super_block*) #1

declare dso_local i32 @ceph_mdsc_pre_umount(i32) #1

declare dso_local i32 @flush_fs_workqueues(%struct.ceph_fs_client*) #1

declare dso_local i32 @generic_shutdown_super(%struct.super_block*) #1

declare dso_local i32 @ceph_fs_debugfs_cleanup(%struct.ceph_fs_client*) #1

declare dso_local i32 @ceph_fscache_unregister_fs(%struct.ceph_fs_client*) #1

declare dso_local i32 @destroy_fs_client(%struct.ceph_fs_client*) #1

declare dso_local i32 @free_anon_bdev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
