; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_try_drop_cap_snap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_try_drop_cap_snap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, i32 }
%struct.ceph_cap_snap = type { i32, i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"dropping cap_snap %p follows %llu\0A\00", align 1
@CEPH_I_FLUSH_SNAPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_inode_info*, %struct.ceph_cap_snap*)* @ceph_try_drop_cap_snap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_try_drop_cap_snap(%struct.ceph_inode_info* %0, %struct.ceph_cap_snap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca %struct.ceph_cap_snap*, align 8
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %4, align 8
  store %struct.ceph_cap_snap* %1, %struct.ceph_cap_snap** %5, align 8
  %6 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %7 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %6, i32 0, i32 6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %55, label %10

10:                                               ; preds = %2
  %11 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %55, label %15

15:                                               ; preds = %10
  %16 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %55, label %20

20:                                               ; preds = %15
  %21 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %22 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %23 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ceph_cap_snap* %21, i32 %24)
  %26 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %27 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sgt i64 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @BUG_ON(i32 %31)
  %33 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @ceph_put_snap_context(i32 %35)
  %37 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %38 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %37, i32 0, i32 0
  %39 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %40 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %39, i32 0, i32 1
  %41 = call i32 @list_is_last(i32* %38, i32* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %20
  %44 = load i32, i32* @CEPH_I_FLUSH_SNAPS, align 4
  %45 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %46 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %43, %20
  %50 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %51 = getelementptr inbounds %struct.ceph_cap_snap, %struct.ceph_cap_snap* %50, i32 0, i32 0
  %52 = call i32 @list_del(i32* %51)
  %53 = load %struct.ceph_cap_snap*, %struct.ceph_cap_snap** %5, align 8
  %54 = call i32 @ceph_put_cap_snap(%struct.ceph_cap_snap* %53)
  store i32 1, i32* %3, align 4
  br label %56

55:                                               ; preds = %15, %10, %2
  store i32 0, i32* %3, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @dout(i8*, %struct.ceph_cap_snap*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ceph_put_snap_context(i32) #1

declare dso_local i32 @list_is_last(i32*, i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ceph_put_cap_snap(%struct.ceph_cap_snap*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
