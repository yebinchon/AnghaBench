; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_put_snap_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_put_snap_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32 }
%struct.ceph_snap_realm = type { i32, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"put_snap_realm %llx %p %d -> %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_put_snap_realm(%struct.ceph_mds_client* %0, %struct.ceph_snap_realm* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_snap_realm* %1, %struct.ceph_snap_realm** %4, align 8
  %5 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %9 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %10 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %9, i32 0, i32 1
  %11 = call i64 @atomic_read(i32* %10)
  %12 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %12, i32 0, i32 1
  %14 = call i64 @atomic_read(i32* %13)
  %15 = sub nsw i64 %14, 1
  %16 = call i32 @dout(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %7, %struct.ceph_snap_realm* %8, i64 %11, i64 %15)
  %17 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %18 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %17, i32 0, i32 1
  %19 = call i32 @atomic_dec_and_test(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %2
  br label %46

22:                                               ; preds = %2
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %23, i32 0, i32 2
  %25 = call i64 @down_write_trylock(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %29 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %30 = call i32 @__destroy_snap_realm(%struct.ceph_mds_client* %28, %struct.ceph_snap_realm* %29)
  %31 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %32 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %31, i32 0, i32 2
  %33 = call i32 @up_write(i32* %32)
  br label %46

34:                                               ; preds = %22
  %35 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %35, i32 0, i32 0
  %37 = call i32 @spin_lock(i32* %36)
  %38 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %38, i32 0, i32 0
  %40 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %40, i32 0, i32 1
  %42 = call i32 @list_add(i32* %39, i32* %41)
  %43 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %44 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %21, %34, %27
  ret void
}

declare dso_local i32 @dout(i8*, i32, %struct.ceph_snap_realm*, i64, i64) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_dec_and_test(i32*) #1

declare dso_local i64 @down_write_trylock(i32*) #1

declare dso_local i32 @__destroy_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
