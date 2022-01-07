; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_force_reconnect.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_force_reconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.ceph_fs_client = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CEPH_MOUNT_MOUNTED = common dso_local global i32 0, align 4
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_force_reconnect(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ceph_fs_client*, align 8
  %4 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %5 = load %struct.super_block*, %struct.super_block** %2, align 8
  %6 = call %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block* %5)
  store %struct.ceph_fs_client* %6, %struct.ceph_fs_client** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.super_block*, %struct.super_block** %2, align 8
  %8 = call i32 @ceph_umount_begin(%struct.super_block* %7)
  %9 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @flush_workqueue(i32 %11)
  %13 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %14 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %13, i32 0, i32 2
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = call i32 @ceph_reset_client_addr(%struct.TYPE_2__* %15)
  %17 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %18 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @ceph_osdc_clear_abort_err(i32* %20)
  %22 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  %24 = load i32, i32* @CEPH_MOUNT_MOUNTED, align 4
  %25 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.super_block*, %struct.super_block** %2, align 8
  %28 = getelementptr inbounds %struct.super_block, %struct.super_block* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %1
  %32 = load %struct.super_block*, %struct.super_block** %2, align 8
  %33 = getelementptr inbounds %struct.super_block, %struct.super_block* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @d_inode(i64 %34)
  %36 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  %37 = call i32 @__ceph_do_getattr(i32 %35, i32* null, i32 %36, i32 1)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %31, %1
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local i32 @ceph_umount_begin(%struct.super_block*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @ceph_reset_client_addr(%struct.TYPE_2__*) #1

declare dso_local i32 @ceph_osdc_clear_abort_err(i32*) #1

declare dso_local i32 @__ceph_do_getattr(i32, i32*, i32, i32) #1

declare dso_local i32 @d_inode(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
