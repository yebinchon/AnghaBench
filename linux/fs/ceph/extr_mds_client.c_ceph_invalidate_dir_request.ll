; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_invalidate_dir_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_invalidate_dir_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_request = type { i64, i64, %struct.inode*, %struct.inode* }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"invalidate_dir_request %p %p (complete, lease(s))\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_invalidate_dir_request(%struct.ceph_mds_request* %0) #0 {
  %2 = alloca %struct.ceph_mds_request*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.ceph_mds_request* %0, %struct.ceph_mds_request** %2, align 8
  %5 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %5, i32 0, i32 3
  %7 = load %struct.inode*, %struct.inode** %6, align 8
  store %struct.inode* %7, %struct.inode** %3, align 8
  %8 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %2, align 8
  %9 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %8, i32 0, i32 2
  %10 = load %struct.inode*, %struct.inode** %9, align 8
  store %struct.inode* %10, %struct.inode** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %3, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = call i32 @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), %struct.inode* %11, %struct.inode* %12)
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call i32 @ceph_dir_clear_complete(%struct.inode* %14)
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = icmp ne %struct.inode* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.inode*, %struct.inode** %4, align 8
  %20 = call i32 @ceph_dir_clear_complete(%struct.inode* %19)
  br label %21

21:                                               ; preds = %18, %1
  %22 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %2, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %2, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @ceph_invalidate_dentry_lease(i64 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %2, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %2, align 8
  %38 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ceph_invalidate_dentry_lease(i64 %39)
  br label %41

41:                                               ; preds = %36, %31
  ret void
}

declare dso_local i32 @dout(i8*, %struct.inode*, %struct.inode*) #1

declare dso_local i32 @ceph_dir_clear_complete(%struct.inode*) #1

declare dso_local i32 @ceph_invalidate_dentry_lease(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
