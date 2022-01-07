; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_fs_client = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"mdsc_destroy %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"mdsc_destroy %p done\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_destroy(%struct.ceph_fs_client* %0) #0 {
  %2 = alloca %struct.ceph_fs_client*, align 8
  %3 = alloca %struct.ceph_mds_client*, align 8
  store %struct.ceph_fs_client* %0, %struct.ceph_fs_client** %2, align 8
  %4 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %5 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %4, i32 0, i32 0
  %6 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %5, align 8
  store %struct.ceph_mds_client* %6, %struct.ceph_mds_client** %3, align 8
  %7 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %8 = call i32 @dout(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_client* %7)
  %9 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %10 = icmp ne %struct.ceph_mds_client* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %22

12:                                               ; preds = %1
  %13 = call i32 (...) @ceph_msgr_flush()
  %14 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %15 = call i32 @ceph_mdsc_stop(%struct.ceph_mds_client* %14)
  %16 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %2, align 8
  %17 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %16, i32 0, i32 0
  store %struct.ceph_mds_client* null, %struct.ceph_mds_client** %17, align 8
  %18 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %19 = call i32 @kfree(%struct.ceph_mds_client* %18)
  %20 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %21 = call i32 @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_mds_client* %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @dout(i8*, %struct.ceph_mds_client*) #1

declare dso_local i32 @ceph_msgr_flush(...) #1

declare dso_local i32 @ceph_mdsc_stop(%struct.ceph_mds_client*) #1

declare dso_local i32 @kfree(%struct.ceph_mds_client*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
