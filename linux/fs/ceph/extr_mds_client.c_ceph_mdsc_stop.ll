; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i64, i32 }

@.str = private unnamed_addr constant [6 x i8] c"stop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*)* @ceph_mdsc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_mdsc_stop(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %3 = call i32 @dout(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %4, i32 0, i32 2
  %6 = call i32 @cancel_delayed_work_sync(i32* %5)
  %7 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @ceph_mdsmap_destroy(i64 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @kfree(i32 %19)
  %21 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %22 = call i32 @ceph_caps_finalize(%struct.ceph_mds_client* %21)
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %24 = call i32 @ceph_pool_perm_destroy(%struct.ceph_mds_client* %23)
  ret void
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @ceph_mdsmap_destroy(i64) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @ceph_caps_finalize(%struct.ceph_mds_client*) #1

declare dso_local i32 @ceph_pool_perm_destroy(%struct.ceph_mds_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
