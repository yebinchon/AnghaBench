; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_submit_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_submit_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_mds_request = type { i32, i64, i64, i64 }

@CEPH_CAP_PIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"submit_request on %p for inode %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_mdsc_submit_request(%struct.ceph_mds_client* %0, %struct.inode* %1, %struct.ceph_mds_request* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_mds_request*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ceph_mds_request* %2, %struct.ceph_mds_request** %6, align 8
  %8 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %9 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %19

12:                                               ; preds = %3
  %13 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @ceph_inode(i64 %15)
  %17 = load i32, i32* @CEPH_CAP_PIN, align 4
  %18 = call i32 @ceph_get_cap_refs(i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %3
  %20 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %19
  %25 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %26 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @ceph_inode(i64 %27)
  %29 = load i32, i32* @CEPH_CAP_PIN, align 4
  %30 = call i32 @ceph_get_cap_refs(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %24, %19
  %32 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %33 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %38 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @ceph_inode(i64 %39)
  %41 = load i32, i32* @CEPH_CAP_PIN, align 4
  %42 = call i32 @ceph_get_cap_refs(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %36, %31
  %44 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @dout(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_request* %44, %struct.inode* %45)
  %47 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %48 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock(i32* %48)
  %50 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %51 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = call i32 @__register_request(%struct.ceph_mds_client* %50, %struct.ceph_mds_request* %51, %struct.inode* %52)
  %54 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %55 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %56 = call i32 @__do_request(%struct.ceph_mds_client* %54, %struct.ceph_mds_request* %55)
  %57 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %58 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  store i32 %59, i32* %7, align 4
  %60 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %61 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %60, i32 0, i32 0
  %62 = call i32 @mutex_unlock(i32* %61)
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i32 @ceph_get_cap_refs(i32, i32) #1

declare dso_local i32 @ceph_inode(i64) #1

declare dso_local i32 @dout(i8*, %struct.ceph_mds_request*, %struct.inode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__register_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*, %struct.inode*) #1

declare dso_local i32 @__do_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
