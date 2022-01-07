; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_get_quota_realm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_quota.c_get_quota_realm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_snap_realm = type { i32, %struct.ceph_snap_realm*, i32 }
%struct.ceph_mds_client = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_inode_info = type { %struct.ceph_snap_realm* }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"get_quota_realm: ino (%llx.%llx) null i_snap_realm\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_snap_realm* (%struct.ceph_mds_client*, %struct.inode*, i32)* @get_quota_realm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_snap_realm* @get_quota_realm(%struct.ceph_mds_client* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_snap_realm*, align 8
  %5 = alloca %struct.ceph_mds_client*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ceph_inode_info*, align 8
  %9 = alloca %struct.ceph_snap_realm*, align 8
  %10 = alloca %struct.ceph_snap_realm*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.ceph_inode_info* null, %struct.ceph_inode_info** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i64 @ceph_snap(%struct.inode* %14)
  %16 = load i64, i64* @CEPH_NOSNAP, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  store %struct.ceph_snap_realm* null, %struct.ceph_snap_realm** %4, align 8
  br label %129

19:                                               ; preds = %3
  br label %20

20:                                               ; preds = %95, %19
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %21)
  %23 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %22, i32 0, i32 0
  %24 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %23, align 8
  store %struct.ceph_snap_realm* %24, %struct.ceph_snap_realm** %9, align 8
  %25 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %26 = icmp ne %struct.ceph_snap_realm* %25, null
  br i1 %26, label %27, label %31

27:                                               ; preds = %20
  %28 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %29 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %30 = call i32 @ceph_get_snap_realm(%struct.ceph_mds_client* %28, %struct.ceph_snap_realm* %29)
  br label %35

31:                                               ; preds = %20
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = call i32 @ceph_vinop(%struct.inode* %32)
  %34 = call i32 @pr_err_ratelimited(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  br label %36

36:                                               ; preds = %113, %35
  %37 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %38 = icmp ne %struct.ceph_snap_realm* %37, null
  br i1 %38, label %39, label %121

39:                                               ; preds = %36
  %40 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %41 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %40, i32 0, i32 2
  %42 = call i32 @spin_lock(i32* %41)
  %43 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %44 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* %13, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %39
  %49 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %50 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.inode* @igrab(i32 %51)
  br label %54

53:                                               ; preds = %39
  br label %54

54:                                               ; preds = %53, %48
  %55 = phi %struct.inode* [ %52, %48 ], [ null, %53 ]
  store %struct.inode* %55, %struct.inode** %11, align 8
  %56 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %57 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %56, i32 0, i32 2
  %58 = call i32 @spin_unlock(i32* %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load %struct.inode*, %struct.inode** %11, align 8
  %63 = icmp ne %struct.inode* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %61
  br label %121

65:                                               ; preds = %61, %54
  %66 = load %struct.inode*, %struct.inode** %11, align 8
  %67 = icmp ne %struct.inode* %66, null
  br i1 %67, label %96, label %68

68:                                               ; preds = %65
  %69 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %70 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %69, i32 0, i32 0
  %71 = call i32 @up_read(i32* %70)
  %72 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %77 = call %struct.inode* @lookup_quotarealm_inode(%struct.ceph_mds_client* %72, i32 %75, %struct.ceph_snap_realm* %76)
  store %struct.inode* %77, %struct.inode** %11, align 8
  %78 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %79 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %78, i32 0, i32 0
  %80 = call i32 @down_read(i32* %79)
  %81 = load %struct.inode*, %struct.inode** %11, align 8
  %82 = call i64 @IS_ERR_OR_NULL(%struct.inode* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %68
  br label %121

85:                                               ; preds = %68
  %86 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %87 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %88 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %86, %struct.ceph_snap_realm* %87)
  %89 = load i32, i32* %7, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %95, label %91

91:                                               ; preds = %85
  %92 = load i32, i32* @EAGAIN, align 4
  %93 = sub nsw i32 0, %92
  %94 = call %struct.ceph_snap_realm* @ERR_PTR(i32 %93)
  store %struct.ceph_snap_realm* %94, %struct.ceph_snap_realm** %4, align 8
  br label %129

95:                                               ; preds = %85
  br label %20

96:                                               ; preds = %65
  %97 = load %struct.inode*, %struct.inode** %11, align 8
  %98 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %97)
  store %struct.ceph_inode_info* %98, %struct.ceph_inode_info** %8, align 8
  %99 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %8, align 8
  %100 = call i32 @__ceph_has_any_quota(%struct.ceph_inode_info* %99)
  store i32 %100, i32* %12, align 4
  %101 = load %struct.inode*, %struct.inode** %11, align 8
  %102 = call i32 @ceph_async_iput(%struct.inode* %101)
  %103 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %104 = getelementptr inbounds %struct.ceph_snap_realm, %struct.ceph_snap_realm* %103, i32 0, i32 1
  %105 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %104, align 8
  store %struct.ceph_snap_realm* %105, %struct.ceph_snap_realm** %10, align 8
  %106 = load i32, i32* %12, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %96
  %109 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %110 = icmp ne %struct.ceph_snap_realm* %109, null
  br i1 %110, label %113, label %111

111:                                              ; preds = %108, %96
  %112 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  store %struct.ceph_snap_realm* %112, %struct.ceph_snap_realm** %4, align 8
  br label %129

113:                                              ; preds = %108
  %114 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %115 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  %116 = call i32 @ceph_get_snap_realm(%struct.ceph_mds_client* %114, %struct.ceph_snap_realm* %115)
  %117 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %118 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %119 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %117, %struct.ceph_snap_realm* %118)
  %120 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %10, align 8
  store %struct.ceph_snap_realm* %120, %struct.ceph_snap_realm** %9, align 8
  br label %36

121:                                              ; preds = %84, %64, %36
  %122 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %123 = icmp ne %struct.ceph_snap_realm* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %121
  %125 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  %126 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %9, align 8
  %127 = call i32 @ceph_put_snap_realm(%struct.ceph_mds_client* %125, %struct.ceph_snap_realm* %126)
  br label %128

128:                                              ; preds = %124, %121
  store %struct.ceph_snap_realm* null, %struct.ceph_snap_realm** %4, align 8
  br label %129

129:                                              ; preds = %128, %111, %91, %18
  %130 = load %struct.ceph_snap_realm*, %struct.ceph_snap_realm** %4, align 8
  ret %struct.ceph_snap_realm* %130
}

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @ceph_get_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local i32 @pr_err_ratelimited(i8*, i32) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @igrab(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local %struct.inode* @lookup_quotarealm_inode(%struct.ceph_mds_client*, i32, %struct.ceph_snap_realm*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.inode*) #1

declare dso_local i32 @ceph_put_snap_realm(%struct.ceph_mds_client*, %struct.ceph_snap_realm*) #1

declare dso_local %struct.ceph_snap_realm* @ERR_PTR(i32) #1

declare dso_local i32 @__ceph_has_any_quota(%struct.ceph_inode_info*) #1

declare dso_local i32 @ceph_async_iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
