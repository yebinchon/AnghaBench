; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_get_snap_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_get_snap_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_snap_realm = type { i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"get_realm %p %d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_get_snap_realm(%struct.ceph_mds_client* %0, %struct.ceph_snap_realm* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_snap_realm* %1, %struct.ceph_snap_realm** %4, align 8
  %5 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %6 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %6, i32 0, i32 1
  %8 = call i64 @atomic_read(i32* %7)
  %9 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = add nsw i64 %11, 1
  %13 = call i32 @dout(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.ceph_snap_realm* %5, i64 %8, i64 %12)
  %14 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %14, i32 0, i32 1
  %16 = call i32 @atomic_inc_return(i32* %15)
  %17 = icmp eq i32 %16, 1
  br i1 %17, label %18, label %28

18:                                               ; preds = %2
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %23 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %22, i32 0, i32 0
  %24 = call i32 @list_del_init(i32* %23)
  %25 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %25, i32 0, i32 0
  %27 = call i32 @spin_unlock(i32* %26)
  br label %28

28:                                               ; preds = %18, %2
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_snap_realm*, i64, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
