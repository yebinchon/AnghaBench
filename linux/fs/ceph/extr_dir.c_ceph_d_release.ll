; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_d_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32* }
%struct.ceph_dentry_info = type { i64 }

@.str = private unnamed_addr constant [14 x i8] c"d_release %p\0A\00", align 1
@ceph_dentry_cachep = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @ceph_d_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_d_release(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %4)
  store %struct.ceph_dentry_info* %5, %struct.ceph_dentry_info** %3, align 8
  %6 = load %struct.dentry*, %struct.dentry** %2, align 8
  %7 = call i32 @dout(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dentry* %6)
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %12 = call i32 @__dentry_lease_unlist(%struct.ceph_dentry_info* %11)
  %13 = load %struct.dentry*, %struct.dentry** %2, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = getelementptr inbounds %struct.dentry, %struct.dentry* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %19 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %24 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @ceph_put_mds_session(i64 %25)
  br label %27

27:                                               ; preds = %22, %1
  %28 = load i32, i32* @ceph_dentry_cachep, align 4
  %29 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %30 = call i32 @kmem_cache_free(i32 %28, %struct.ceph_dentry_info* %29)
  ret void
}

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i32 @dout(i8*, %struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__dentry_lease_unlist(%struct.ceph_dentry_info*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_put_mds_session(i64) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.ceph_dentry_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
