; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mdsmap.c_ceph_mdsmap_get_random_mds.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mdsmap.c_ceph_mdsmap_get_random_mds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mdsmap = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_mdsmap_get_random_mds(%struct.ceph_mdsmap* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ceph_mdsmap*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ceph_mdsmap* %0, %struct.ceph_mdsmap** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 1, %8
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %12 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %76

19:                                               ; preds = %10, %1
  store i32 0, i32* %5, align 4
  br label %20

20:                                               ; preds = %40, %19
  %21 = load i32, i32* %5, align 4
  %22 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %23 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %28 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %26
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %26
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %20

43:                                               ; preds = %20
  %44 = load i32, i32* %4, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  store i32 -1, i32* %2, align 4
  br label %76

47:                                               ; preds = %43
  %48 = call i32 (...) @prandom_u32()
  %49 = load i32, i32* %4, align 4
  %50 = srem i32 %48, %49
  store i32 %50, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %51

51:                                               ; preds = %69, %47
  %52 = load i32, i32* %4, align 4
  %53 = icmp sgt i32 %52, 0
  br i1 %53, label %54, label %74

54:                                               ; preds = %51
  br label %55

55:                                               ; preds = %65, %54
  %56 = load %struct.ceph_mdsmap*, %struct.ceph_mdsmap** %3, align 8
  %57 = getelementptr inbounds %struct.ceph_mdsmap, %struct.ceph_mdsmap* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = icmp sle i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %55
  %66 = load i32, i32* %5, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %5, align 4
  br label %55

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %4, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %46, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @prandom_u32(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
