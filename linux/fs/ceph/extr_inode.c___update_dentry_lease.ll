; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___update_dentry_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c___update_dentry_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.ceph_mds_reply_lease = type { i32, i32 }
%struct.ceph_mds_session = type { i64 }
%struct.ceph_dentry_info = type { i64, i64, i64, i64, i8*, %struct.ceph_mds_session*, i32 }
%struct.TYPE_2__ = type { i32 }

@HZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [48 x i8] c"update_dentry_lease %p duration %lu ms ttl %lu\0A\00", align 1
@CEPH_NOSNAP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.dentry*, %struct.ceph_mds_reply_lease*, %struct.ceph_mds_session*, i64, %struct.ceph_mds_session**)* @__update_dentry_lease to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_dentry_lease(%struct.inode* %0, %struct.dentry* %1, %struct.ceph_mds_reply_lease* %2, %struct.ceph_mds_session* %3, i64 %4, %struct.ceph_mds_session** %5) #0 {
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.ceph_mds_reply_lease*, align 8
  %10 = alloca %struct.ceph_mds_session*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ceph_mds_session**, align 8
  %13 = alloca %struct.ceph_dentry_info*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store %struct.ceph_mds_reply_lease* %2, %struct.ceph_mds_reply_lease** %9, align 8
  store %struct.ceph_mds_session* %3, %struct.ceph_mds_session** %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.ceph_mds_session** %5, %struct.ceph_mds_session*** %12, align 8
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %17)
  store %struct.ceph_dentry_info* %18, %struct.ceph_dentry_info** %13, align 8
  %19 = load %struct.ceph_mds_reply_lease*, %struct.ceph_mds_reply_lease** %9, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_reply_lease, %struct.ceph_mds_reply_lease* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @le32_to_cpu(i32 %21)
  %23 = ptrtoint i8* %22 to i64
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %14, align 8
  %26 = load i64, i64* @HZ, align 8
  %27 = mul i64 %25, %26
  %28 = udiv i64 %27, 1000
  %29 = add i64 %24, %28
  store i64 %29, i64* %15, align 8
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %14, align 8
  %32 = load i64, i64* @HZ, align 8
  %33 = mul i64 %31, %32
  %34 = udiv i64 %33, 2
  %35 = udiv i64 %34, 1000
  %36 = add i64 %30, %35
  store i64 %36, i64* %16, align 8
  %37 = load %struct.dentry*, %struct.dentry** %8, align 8
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %15, align 8
  %40 = call i32 @dout(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), %struct.dentry* %37, i64 %38, i64 %39)
  %41 = load %struct.inode*, %struct.inode** %7, align 8
  %42 = call i64 @ceph_snap(%struct.inode* %41)
  %43 = load i64, i64* @CEPH_NOSNAP, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %6
  br label %124

46:                                               ; preds = %6
  %47 = load %struct.inode*, %struct.inode** %7, align 8
  %48 = call %struct.TYPE_2__* @ceph_inode(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @atomic_read(i32* %49)
  %51 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %52 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %51, i32 0, i32 6
  store i32 %50, i32* %52, align 8
  %53 = load i64, i64* %14, align 8
  %54 = icmp eq i64 %53, 0
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %57 = call i32 @__ceph_dentry_dir_lease_touch(%struct.ceph_dentry_info* %56)
  br label %124

58:                                               ; preds = %46
  %59 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %60 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %63 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp eq i64 %61, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %58
  %67 = load i64, i64* %15, align 8
  %68 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %69 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = call i64 @time_before(i64 %67, i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %124

74:                                               ; preds = %66, %58
  %75 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %76 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %75, i32 0, i32 5
  %77 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %76, align 8
  %78 = icmp ne %struct.ceph_mds_session* %77, null
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %81 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %80, i32 0, i32 5
  %82 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %81, align 8
  %83 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %84 = icmp ne %struct.ceph_mds_session* %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %79
  %86 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %87 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %86, i32 0, i32 5
  %88 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %87, align 8
  %89 = load %struct.ceph_mds_session**, %struct.ceph_mds_session*** %12, align 8
  store %struct.ceph_mds_session* %88, %struct.ceph_mds_session** %89, align 8
  %90 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %91 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %90, i32 0, i32 5
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %91, align 8
  br label %92

92:                                               ; preds = %85, %79, %74
  %93 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %94 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %93, i32 0, i32 5
  %95 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %94, align 8
  %96 = icmp ne %struct.ceph_mds_session* %95, null
  br i1 %96, label %102, label %97

97:                                               ; preds = %92
  %98 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %99 = call %struct.ceph_mds_session* @ceph_get_mds_session(%struct.ceph_mds_session* %98)
  %100 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %101 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %100, i32 0, i32 5
  store %struct.ceph_mds_session* %99, %struct.ceph_mds_session** %101, align 8
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %10, align 8
  %104 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %107 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %106, i32 0, i32 0
  store i64 %105, i64* %107, align 8
  %108 = load %struct.ceph_mds_reply_lease*, %struct.ceph_mds_reply_lease** %9, align 8
  %109 = getelementptr inbounds %struct.ceph_mds_reply_lease, %struct.ceph_mds_reply_lease* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i8* @le32_to_cpu(i32 %110)
  %112 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %113 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %116 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %115, i32 0, i32 2
  store i64 %114, i64* %116, align 8
  %117 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %118 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load i64, i64* %15, align 8
  %120 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %121 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  %122 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %13, align 8
  %123 = call i32 @__ceph_dentry_lease_touch(%struct.ceph_dentry_info* %122)
  br label %124

124:                                              ; preds = %102, %73, %55, %45
  ret void
}

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @dout(i8*, %struct.dentry*, i64, i64) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.TYPE_2__* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @__ceph_dentry_dir_lease_touch(%struct.ceph_dentry_info*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local %struct.ceph_mds_session* @ceph_get_mds_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @__ceph_dentry_lease_touch(%struct.ceph_dentry_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
