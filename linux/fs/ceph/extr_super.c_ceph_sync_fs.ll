; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_sync_fs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_sync_fs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ceph_fs_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"sync_fs (non-blocking)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"sync_fs (non-blocking) done\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sync_fs (blocking)\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"sync_fs (blocking) done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32)* @ceph_sync_fs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_sync_fs(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_fs_client*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = call %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block* %7)
  store %struct.ceph_fs_client* %8, %struct.ceph_fs_client** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = call i32 @dout(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %13 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @ceph_flush_dirty_caps(i32 %15)
  %17 = call i32 @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

18:                                               ; preds = %2
  %19 = call i32 @dout(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %21 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = call i32 @ceph_osdc_sync(i32* %23)
  %25 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %6, align 8
  %26 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @ceph_mdsc_sync(i32 %27)
  %29 = call i32 @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %18, %11
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @ceph_flush_dirty_caps(i32) #1

declare dso_local i32 @ceph_osdc_sync(i32*) #1

declare dso_local i32 @ceph_mdsc_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
