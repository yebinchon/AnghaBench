; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_is_valid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_is_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_cap = type { i64, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i64, i32 }

@jiffies = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"__cap_is_valid %p cap %p issued %s but STALE (gen %u vs %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_cap*)* @__cap_is_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cap_is_valid(%struct.ceph_cap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_cap*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.ceph_cap* %0, %struct.ceph_cap** %3, align 8
  %6 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %6, i32 0, i32 3
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 2
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %4, align 8
  %21 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %22 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = call i32 @spin_unlock(i32* %24)
  %26 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %1
  %32 = load i32, i32* @jiffies, align 4
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @time_after_eq(i32 %32, i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %31, %1
  %37 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %38 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %37, i32 0, i32 2
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %42 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %43 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @ceph_cap_string(i32 %44)
  %46 = load %struct.ceph_cap*, %struct.ceph_cap** %3, align 8
  %47 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %5, align 8
  %50 = call i32 @dout(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32* %40, %struct.ceph_cap* %41, i32 %45, i64 %48, i64 %49)
  store i32 0, i32* %2, align 4
  br label %52

51:                                               ; preds = %31
  store i32 1, i32* %2, align 4
  br label %52

52:                                               ; preds = %51, %36
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @time_after_eq(i32, i64) #1

declare dso_local i32 @dout(i8*, i32*, %struct.ceph_cap*, i32, i64, i64) #1

declare dso_local i32 @ceph_cap_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
