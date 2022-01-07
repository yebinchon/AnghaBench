; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___check_cap_issue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___check_cap_issue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ceph_cap = type { i32 }

@CEPH_CAP_FILE_CACHE = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_LAZYIO = common dso_local global i32 0, align 4
@CEPH_CAP_FILE_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c" marking %p NOT complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_inode_info*, %struct.ceph_cap*, i32)* @__check_cap_issue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__check_cap_issue(%struct.ceph_inode_info* %0, %struct.ceph_cap* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_inode_info*, align 8
  %5 = alloca %struct.ceph_cap*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %4, align 8
  store %struct.ceph_cap* %1, %struct.ceph_cap** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %9 = call i32 @__ceph_caps_issued(%struct.ceph_inode_info* %8, i32* null)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %12 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @CEPH_CAP_FILE_CACHE, align 4
  %19 = load i32, i32* @CEPH_CAP_FILE_LAZYIO, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %25 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %23, %16, %3
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %31 = and i32 %29, %30
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %59

36:                                               ; preds = %28
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @CEPH_CAP_FILE_SHARED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %43 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %42, i32 0, i32 1
  %44 = call i32 @atomic_inc(i32* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %47 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @S_ISDIR(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %45
  %53 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %54 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %53, i32 0, i32 0
  %55 = call i32 @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.TYPE_2__* %54)
  %56 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %4, align 8
  %57 = call i32 @__ceph_dir_clear_complete(%struct.ceph_inode_info* %56)
  br label %58

58:                                               ; preds = %52, %45
  br label %59

59:                                               ; preds = %58, %28
  ret void
}

declare dso_local i32 @__ceph_caps_issued(%struct.ceph_inode_info*, i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @dout(i8*, %struct.TYPE_2__*) #1

declare dso_local i32 @__ceph_dir_clear_complete(%struct.ceph_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
