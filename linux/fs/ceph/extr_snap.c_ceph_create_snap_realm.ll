; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_create_snap_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c_ceph_create_snap_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_snap_realm = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ceph_mds_client = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"create_snap_realm %llx %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_snap_realm* (%struct.ceph_mds_client*, i32)* @ceph_create_snap_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_snap_realm* @ceph_create_snap_realm(%struct.ceph_mds_client* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_snap_realm*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_NOFS, align 4
  %8 = call %struct.ceph_snap_realm* @kzalloc(i32 32, i32 %7)
  store %struct.ceph_snap_realm* %8, %struct.ceph_snap_realm** %6, align 8
  %9 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %10 = icmp ne %struct.ceph_snap_realm* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.ceph_snap_realm* @ERR_PTR(i32 %13)
  store %struct.ceph_snap_realm* %14, %struct.ceph_snap_realm** %3, align 8
  br label %54

15:                                               ; preds = %2
  %16 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %16, i32 0, i32 7
  %18 = call i32 @atomic_set(i32* %17, i32 1)
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %21 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %23 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %22, i32 0, i32 6
  %24 = call i32 @INIT_LIST_HEAD(i32* %23)
  %25 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %26 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %25, i32 0, i32 5
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %29 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %28, i32 0, i32 4
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %31, i32 0, i32 3
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %35 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %34, i32 0, i32 2
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %37, i32 0, i32 1
  %39 = call i32 @spin_lock_init(i32* %38)
  %40 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %40, i32 0, i32 1
  %42 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %43 = call i32 @__insert_snap_realm(i32* %41, %struct.ceph_snap_realm* %42)
  %44 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %49 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  %52 = call i32 @dout(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %50, %struct.ceph_snap_realm* %51)
  %53 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %6, align 8
  store %struct.ceph_snap_realm* %53, %struct.ceph_snap_realm** %3, align 8
  br label %54

54:                                               ; preds = %15, %11
  %55 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %3, align 8
  ret %struct.ceph_snap_realm* %55
}

declare dso_local %struct.ceph_snap_realm* @kzalloc(i32, i32) #1

declare dso_local %struct.ceph_snap_realm* @ERR_PTR(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @__insert_snap_realm(i32*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @dout(i8*, i32, %struct.ceph_snap_realm*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
