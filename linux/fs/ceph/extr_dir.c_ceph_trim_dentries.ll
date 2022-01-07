; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_trim_dentries.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_trim_dentries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i64, i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_lease_walk_control = type { i32, i32, i32, i32 }

@CEPH_CAPS_PER_RELEASE = common dso_local global i32 0, align 4
@__dentry_lease_check = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@__dir_lease_check = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_trim_dentries(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_lease_walk_control, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  %7 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %7, i32 0, i32 3
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %1
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %16 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = sub nsw i64 %25, %28
  store i64 %29, i64* %5, align 8
  br label %31

30:                                               ; preds = %14, %1
  store i64 0, i64* %5, align 8
  br label %31

31:                                               ; preds = %30, %22
  %32 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %32, i32 0, i32 3
  %34 = call i32 @spin_unlock(i32* %33)
  %35 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load i32, i32* @CEPH_CAPS_PER_RELEASE, align 4
  %37 = mul nsw i32 %36, 2
  %38 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %40 = load i32, i32* @__dentry_lease_check, align 4
  %41 = call i64 @__dentry_leases_walk(%struct.ceph_mds_client* %39, %struct.ceph_lease_walk_control* %4, i32 %40)
  store i64 %41, i64* %6, align 8
  %42 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %31
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %2, align 4
  br label %89

48:                                               ; preds = %31
  %49 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @CEPH_CAPS_PER_RELEASE, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i32, i32* @CEPH_CAPS_PER_RELEASE, align 4
  %55 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %48
  %57 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load i64, i64* %6, align 8
  %59 = load i64, i64* %5, align 8
  %60 = icmp ult i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %64 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %63, i32 0, i32 2
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @HZ, align 4
  %71 = mul nsw i32 %69, %70
  %72 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %74 = load i32, i32* @__dir_lease_check, align 4
  %75 = call i64 @__dentry_leases_walk(%struct.ceph_mds_client* %73, %struct.ceph_lease_walk_control* %4, i32 %74)
  %76 = load i64, i64* %6, align 8
  %77 = add i64 %76, %75
  store i64 %77, i64* %6, align 8
  %78 = getelementptr inbounds %struct.ceph_lease_walk_control, %struct.ceph_lease_walk_control* %4, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %56
  %82 = load i32, i32* @EAGAIN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %2, align 4
  br label %89

84:                                               ; preds = %56
  %85 = load i64, i64* %6, align 8
  %86 = icmp ugt i64 %85, 0
  %87 = zext i1 %86 to i64
  %88 = select i1 %86, i32 1, i32 0
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %84, %81, %45
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @__dentry_leases_walk(%struct.ceph_mds_client*, %struct.ceph_lease_walk_control*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
