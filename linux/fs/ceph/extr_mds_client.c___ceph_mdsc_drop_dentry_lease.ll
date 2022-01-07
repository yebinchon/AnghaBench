; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___ceph_mdsc_drop_dentry_lease.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___ceph_mdsc_drop_dentry_lease.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.ceph_dentry_info = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__ceph_mdsc_drop_dentry_lease(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.ceph_dentry_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %4 = load %struct.dentry*, %struct.dentry** %2, align 8
  %5 = call %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry* %4)
  store %struct.ceph_dentry_info* %5, %struct.ceph_dentry_info** %3, align 8
  %6 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %7 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @ceph_put_mds_session(i32* %8)
  %10 = load %struct.ceph_dentry_info*, %struct.ceph_dentry_info** %3, align 8
  %11 = getelementptr inbounds %struct.ceph_dentry_info, %struct.ceph_dentry_info* %10, i32 0, i32 0
  store i32* null, i32** %11, align 8
  ret void
}

declare dso_local %struct.ceph_dentry_info* @ceph_dentry(%struct.dentry*) #1

declare dso_local i32 @ceph_put_mds_session(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
