; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___ceph_dentry_dir_lease_touch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c___ceph_dentry_dir_lease_touch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_dentry_info = type { i32, i32, i32, %struct.dentry* }
%struct.dentry = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.TYPE_2__ = type { %struct.ceph_mds_client* }

@.str = private unnamed_addr constant [50 x i8] c"dentry_dir_lease_touch %p %p '%pd' (offset %lld)\0A\00", align 1
@CEPH_DENTRY_LEASE_LIST = common dso_local global i32 0, align 4
@CEPH_DENTRY_REFERENCED = common dso_local global i32 0, align 4
@CEPH_DENTRY_SHRINK_LIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ceph_dentry_dir_lease_touch(%struct.ceph_dentry_info* %0) #0 {
  %2 = alloca %struct.ceph_dentry_info*, align 8
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_dentry_info* %0, %struct.ceph_dentry_info** %2, align 8
  %5 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %5, i32 0, i32 3
  %7 = load %struct.dentry*, %struct.dentry** %6, align 8
  store %struct.dentry* %7, %struct.dentry** %3, align 8
  %8 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %9 = load %struct.dentry*, %struct.dentry** %3, align 8
  %10 = load %struct.dentry*, %struct.dentry** %3, align 8
  %11 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %12 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @dout(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.ceph_dentry_info* %8, %struct.dentry* %9, %struct.dentry* %10, i32 %13)
  %15 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %16 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %1
  %20 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %21 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @CEPH_DENTRY_LEASE_LIST, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %19
  %27 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %28 = call i64 @__dentry_lease_is_valid(%struct.ceph_dentry_info* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  br label %74

31:                                               ; preds = %26
  br label %38

32:                                               ; preds = %19
  %33 = load i32, i32* @CEPH_DENTRY_REFERENCED, align 4
  %34 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %35 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  br label %74

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %1
  %40 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %41 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @CEPH_DENTRY_SHRINK_LIST, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %39
  %47 = load i32, i32* @CEPH_DENTRY_REFERENCED, align 4
  %48 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %49 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  %52 = load i32, i32* @CEPH_DENTRY_LEASE_LIST, align 4
  %53 = xor i32 %52, -1
  %54 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %55 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %56, %53
  store i32 %57, i32* %55, align 8
  br label %74

58:                                               ; preds = %39
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call %struct.TYPE_2__* @ceph_sb_to_client(i32 %61)
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %63, align 8
  store %struct.ceph_mds_client* %64, %struct.ceph_mds_client** %4, align 8
  %65 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %66 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %65, i32 0, i32 0
  %67 = call i32 @spin_lock(i32* %66)
  %68 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %69 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %2, align 8
  %70 = call i32 @__dentry_dir_lease_touch(%struct.ceph_mds_client* %68, %struct.ceph_dentry_info* %69)
  %71 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %72 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  br label %74

74:                                               ; preds = %58, %46, %32, %30
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_dentry_info*, %struct.dentry*, %struct.dentry*, i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i64 @__dentry_lease_is_valid(%struct.ceph_dentry_info*) #1

declare dso_local %struct.TYPE_2__* @ceph_sb_to_client(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dentry_dir_lease_touch(%struct.ceph_mds_client*, %struct.ceph_dentry_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
