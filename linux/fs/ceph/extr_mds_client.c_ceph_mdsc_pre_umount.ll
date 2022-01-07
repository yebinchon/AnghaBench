; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_pre_umount.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_pre_umount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"pre_umount\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_pre_umount(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %3 = call i32 @dout(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %4, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %7 = call i32 @lock_unlock_sessions(%struct.ceph_mds_client* %6)
  %8 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %9 = call i32 @ceph_flush_dirty_caps(%struct.ceph_mds_client* %8)
  %10 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %11 = call i32 @wait_requests(%struct.ceph_mds_client* %10)
  %12 = call i32 (...) @ceph_msgr_flush()
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %14 = call i32 @ceph_cleanup_quotarealms_inodes(%struct.ceph_mds_client* %13)
  ret void
}

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @lock_unlock_sessions(%struct.ceph_mds_client*) #1

declare dso_local i32 @ceph_flush_dirty_caps(%struct.ceph_mds_client*) #1

declare dso_local i32 @wait_requests(%struct.ceph_mds_client*) #1

declare dso_local i32 @ceph_msgr_flush(...) #1

declare dso_local i32 @ceph_cleanup_quotarealms_inodes(%struct.ceph_mds_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
