; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_reservation_status.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_reservation_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_reservation_status(%struct.ceph_fs_client* %0, i32* %1, i32* %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca %struct.ceph_fs_client*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store i32* %5, i32** %12, align 8
  %14 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %7, align 8
  %15 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %14, i32 0, i32 0
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %15, align 8
  store %struct.ceph_mds_client* %16, %struct.ceph_mds_client** %13, align 8
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %18 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %17, i32 0, i32 5
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32*, i32** %8, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %8, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %22, %6
  %28 = load i32*, i32** %9, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %35

30:                                               ; preds = %27
  %31 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %32 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %30, %27
  %36 = load i32*, i32** %10, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %43

38:                                               ; preds = %35
  %39 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %40 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %10, align 8
  store i32 %41, i32* %42, align 4
  br label %43

43:                                               ; preds = %38, %35
  %44 = load i32*, i32** %11, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %11, align 8
  store i32 %49, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %43
  %52 = load i32*, i32** %12, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %56 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 4
  %58 = load i32*, i32** %12, align 8
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %54, %51
  %60 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %13, align 8
  %61 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %60, i32 0, i32 5
  %62 = call i32 @spin_unlock(i32* %61)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
