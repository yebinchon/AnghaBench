; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c___destroy_snap_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_snap.c___destroy_snap_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32 }
%struct.ceph_snap_realm = type { i32, %struct.ceph_snap_realm*, %struct.ceph_snap_realm*, i64, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"__destroy_snap_realm %p %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_snap_realm*)* @__destroy_snap_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__destroy_snap_realm(%struct.ceph_mds_client* %0, %struct.ceph_snap_realm* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_snap_realm*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_snap_realm* %1, %struct.ceph_snap_realm** %4, align 8
  %5 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %6 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @dout(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), %struct.ceph_snap_realm* %5, i32 %8)
  %10 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %10, i32 0, i32 5
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 1
  %14 = call i32 @rb_erase(i32* %11, i32* %13)
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 4
  %19 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %20 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %24, i32 0, i32 4
  %26 = call i32 @list_del_init(i32* %25)
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %28 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %29 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @__put_snap_realm(%struct.ceph_mds_client* %27, i64 %30)
  br label %32

32:                                               ; preds = %23, %2
  %33 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %34 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %33, i32 0, i32 2
  %35 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %34, align 8
  %36 = call i32 @kfree(%struct.ceph_snap_realm* %35)
  %37 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %37, i32 0, i32 1
  %39 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %38, align 8
  %40 = call i32 @kfree(%struct.ceph_snap_realm* %39)
  %41 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %42 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @ceph_put_snap_context(i32 %43)
  %45 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  %46 = call i32 @kfree(%struct.ceph_snap_realm* %45)
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_snap_realm*, i32) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__put_snap_realm(%struct.ceph_mds_client*, i64) #1

declare dso_local i32 @kfree(%struct.ceph_snap_realm*) #1

declare dso_local i32 @ceph_put_snap_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
