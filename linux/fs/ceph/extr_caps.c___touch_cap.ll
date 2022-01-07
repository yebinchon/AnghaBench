; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___touch_cap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___touch_cap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_cap = type { %struct.TYPE_2__*, i32, %struct.ceph_mds_session* }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_mds_session = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [29 x i8] c"__touch_cap %p cap %p mds%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [54 x i8] c"__touch_cap %p cap %p mds%d NOP, iterating over caps\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_cap*)* @__touch_cap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__touch_cap(%struct.ceph_cap* %0) #0 {
  %2 = alloca %struct.ceph_cap*, align 8
  %3 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_cap* %0, %struct.ceph_cap** %2, align 8
  %4 = load %struct.ceph_cap*, %struct.ceph_cap** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %4, i32 0, i32 2
  %6 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  store %struct.ceph_mds_session* %6, %struct.ceph_mds_session** %3, align 8
  %7 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %7, i32 0, i32 0
  %9 = call i32 @spin_lock(i32* %8)
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %10, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %29, label %14

14:                                               ; preds = %1
  %15 = load %struct.ceph_cap*, %struct.ceph_cap** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ceph_cap*, %struct.ceph_cap** %2, align 8
  %20 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dout(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %18, %struct.ceph_cap* %19, i32 %22)
  %24 = load %struct.ceph_cap*, %struct.ceph_cap** %2, align 8
  %25 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %24, i32 0, i32 1
  %26 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %27 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %26, i32 0, i32 2
  %28 = call i32 @list_move_tail(i32* %25, i32* %27)
  br label %39

29:                                               ; preds = %1
  %30 = load %struct.ceph_cap*, %struct.ceph_cap** %2, align 8
  %31 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load %struct.ceph_cap*, %struct.ceph_cap** %2, align 8
  %35 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %36 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dout(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0), i32* %33, %struct.ceph_cap* %34, i32 %37)
  br label %39

39:                                               ; preds = %29, %14
  %40 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %3, align 8
  %41 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %40, i32 0, i32 0
  %42 = call i32 @spin_unlock(i32* %41)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @dout(i8*, i32*, %struct.ceph_cap*, i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
