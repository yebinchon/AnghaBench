; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_ioctl.c___validate_layout.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_ioctl.c___validate_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64* }
%struct.ceph_ioctl_layout = type { i32, i32, i64 }

@PAGE_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ceph_mds_client*, %struct.ceph_ioctl_layout*)* @__validate_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__validate_layout(%struct.ceph_mds_client* %0, %struct.ceph_ioctl_layout* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_ioctl_layout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_ioctl_layout* %1, %struct.ceph_ioctl_layout** %5, align 8
  %8 = load %struct.ceph_ioctl_layout*, %struct.ceph_ioctl_layout** %5, align 8
  %9 = getelementptr inbounds %struct.ceph_ioctl_layout, %struct.ceph_ioctl_layout* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_MASK, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %37, label %15

15:                                               ; preds = %2
  %16 = load %struct.ceph_ioctl_layout*, %struct.ceph_ioctl_layout** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_ioctl_layout, %struct.ceph_ioctl_layout* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %37, label %23

23:                                               ; preds = %15
  %24 = load %struct.ceph_ioctl_layout*, %struct.ceph_ioctl_layout** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_ioctl_layout, %struct.ceph_ioctl_layout* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %40

28:                                               ; preds = %23
  %29 = load %struct.ceph_ioctl_layout*, %struct.ceph_ioctl_layout** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_ioctl_layout, %struct.ceph_ioctl_layout* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.ceph_ioctl_layout*, %struct.ceph_ioctl_layout** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_ioctl_layout, %struct.ceph_ioctl_layout* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = urem i32 %31, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %28, %15, %2
  %38 = load i64, i64* @EINVAL, align 8
  %39 = sub nsw i64 0, %38
  store i64 %39, i64* %3, align 8
  br label %84

40:                                               ; preds = %28, %23
  %41 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %42 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %41, i32 0, i32 0
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub nsw i64 0, %44
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %71, %40
  %48 = load i32, i32* %6, align 4
  %49 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %50 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %48, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %47
  %56 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %57 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i64*, i64** %59, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i64, i64* %60, i64 %62
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.ceph_ioctl_layout*, %struct.ceph_ioctl_layout** %5, align 8
  %66 = getelementptr inbounds %struct.ceph_ioctl_layout, %struct.ceph_ioctl_layout* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp eq i64 %64, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  store i32 0, i32* %7, align 4
  br label %74

70:                                               ; preds = %55
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  br label %47

74:                                               ; preds = %69, %47
  %75 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %76 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %75, i32 0, i32 0
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %7, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* %7, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %3, align 8
  br label %84

83:                                               ; preds = %74
  store i64 0, i64* %3, align 8
  br label %84

84:                                               ; preds = %83, %80, %37
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
