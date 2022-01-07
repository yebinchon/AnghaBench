; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_lookup_quotarealm_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_lookup_quotarealm_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_mds_client = type { i32 }
%struct.super_block = type { i32 }
%struct.ceph_snap_realm = type { i32 }
%struct.ceph_quotarealm_inode = type { i32, %struct.inode*, i64 }

@jiffies = common dso_local global i64 0, align 8
@CEPH_STAT_CAP_INODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Can't lookup inode %llx (err: %ld)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.ceph_mds_client*, %struct.super_block*, %struct.ceph_snap_realm*)* @lookup_quotarealm_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @lookup_quotarealm_inode(%struct.ceph_mds_client* %0, %struct.super_block* %1, %struct.ceph_snap_realm* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ceph_mds_client*, align 8
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.ceph_snap_realm*, align 8
  %8 = alloca %struct.ceph_quotarealm_inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %5, align 8
  store %struct.super_block* %1, %struct.super_block** %6, align 8
  store %struct.ceph_snap_realm* %2, %struct.ceph_snap_realm** %7, align 8
  %11 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %12 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %13 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.ceph_quotarealm_inode* @find_quotarealm_inode(%struct.ceph_mds_client* %11, i32 %14)
  store %struct.ceph_quotarealm_inode* %15, %struct.ceph_quotarealm_inode** %8, align 8
  %16 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %17 = icmp ne %struct.ceph_quotarealm_inode* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %110

19:                                               ; preds = %3
  %20 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %21 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %20, i32 0, i32 0
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %24 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %23, i32 0, i32 1
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %27, label %40

27:                                               ; preds = %19
  %28 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %29 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %28, i32 0, i32 1
  %30 = load %struct.inode*, %struct.inode** %29, align 8
  %31 = call i64 @ceph_is_any_caps(%struct.inode* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %35 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %34, i32 0, i32 0
  %36 = call i32 @mutex_unlock(i32* %35)
  %37 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %38 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %37, i32 0, i32 1
  %39 = load %struct.inode*, %struct.inode** %38, align 8
  store %struct.inode* %39, %struct.inode** %4, align 8
  br label %110

40:                                               ; preds = %27, %19
  %41 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %42 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i64, i64* @jiffies, align 8
  %47 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %48 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @time_before_eq(i64 %46, i64 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %54 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %53, i32 0, i32 0
  %55 = call i32 @mutex_unlock(i32* %54)
  store %struct.inode* null, %struct.inode** %4, align 8
  br label %110

56:                                               ; preds = %45, %40
  %57 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %58 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %57, i32 0, i32 1
  %59 = load %struct.inode*, %struct.inode** %58, align 8
  %60 = icmp ne %struct.inode* %59, null
  br i1 %60, label %61, label %77

61:                                               ; preds = %56
  %62 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %63 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %62, i32 0, i32 1
  %64 = load %struct.inode*, %struct.inode** %63, align 8
  %65 = load i32, i32* @CEPH_STAT_CAP_INODE, align 4
  %66 = call i32 @__ceph_do_getattr(%struct.inode* %64, i32* null, i32 %65, i32 1)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp sge i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %71 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %70, i32 0, i32 1
  %72 = load %struct.inode*, %struct.inode** %71, align 8
  store %struct.inode* %72, %struct.inode** %9, align 8
  br label %76

73:                                               ; preds = %61
  %74 = load i32, i32* %10, align 4
  %75 = call %struct.inode* @ERR_PTR(i32 %74)
  store %struct.inode* %75, %struct.inode** %9, align 8
  br label %76

76:                                               ; preds = %73, %69
  br label %83

77:                                               ; preds = %56
  %78 = load %struct.super_block*, %struct.super_block** %6, align 8
  %79 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %80 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.inode* @ceph_lookup_inode(%struct.super_block* %78, i32 %81)
  store %struct.inode* %82, %struct.inode** %9, align 8
  br label %83

83:                                               ; preds = %77, %76
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i64 @IS_ERR(%struct.inode* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %83
  %88 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %7, align 8
  %89 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = call i32 @PTR_ERR(%struct.inode* %91)
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %90, i32 %92)
  %94 = load i64, i64* @jiffies, align 8
  %95 = call i64 @msecs_to_jiffies(i32 60000)
  %96 = add nsw i64 %94, %95
  %97 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %98 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  br label %105

99:                                               ; preds = %83
  %100 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %101 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %100, i32 0, i32 2
  store i64 0, i64* %101, align 8
  %102 = load %struct.inode*, %struct.inode** %9, align 8
  %103 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %104 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %103, i32 0, i32 1
  store %struct.inode* %102, %struct.inode** %104, align 8
  br label %105

105:                                              ; preds = %99, %87
  %106 = load %struct.ceph_quotarealm_inode*, %struct.ceph_quotarealm_inode** %8, align 8
  %107 = getelementptr inbounds %struct.ceph_quotarealm_inode, %struct.ceph_quotarealm_inode* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %109, %struct.inode** %4, align 8
  br label %110

110:                                              ; preds = %105, %52, %33, %18
  %111 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %111
}

declare dso_local %struct.ceph_quotarealm_inode* @find_quotarealm_inode(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ceph_is_any_caps(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @__ceph_do_getattr(%struct.inode*, i32*, i32, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @ceph_lookup_inode(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @pr_warn(i8*, i32, i32) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
