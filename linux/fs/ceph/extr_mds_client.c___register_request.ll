; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___register_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___register_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i64, i64, i32 }
%struct.ceph_mds_request = type { i64, i32, i64, %struct.inode*, i32, i32, i64, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"__register_request %p failed to reserve caps: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"__register_request %p tid %lld\0A\00", align 1
@CEPH_MDS_OP_SETFILELOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_request*, %struct.inode*)* @__register_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__register_request(%struct.ceph_mds_client* %0, %struct.ceph_mds_request* %1, %struct.inode* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_request*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_request* %1, %struct.ceph_mds_request** %5, align 8
  store %struct.inode* %2, %struct.inode** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %9 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, 1
  store i64 %11, i64* %9, align 8
  %12 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %15 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %36

18:                                               ; preds = %3
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %20 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %20, i32 0, i32 7
  %22 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %23 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %22, i32 0, i32 6
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @ceph_reserve_caps(%struct.ceph_mds_client* %19, i32* %21, i64 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_request* %29, i32 %30)
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %34 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 8
  br label %79

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %3
  %37 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %38 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %39 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @dout(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_mds_request* %37, i64 %40)
  %42 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %43 = call i32 @ceph_mdsc_get_request(%struct.ceph_mds_request* %42)
  %44 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %45 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %44, i32 0, i32 2
  %46 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %47 = call i32 @insert_request(i32* %45, %struct.ceph_mds_request* %46)
  %48 = call i32 (...) @current_fsuid()
  %49 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %50 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = call i32 (...) @current_fsgid()
  %52 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %53 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %52, i32 0, i32 4
  store i32 %51, i32* %53, align 8
  %54 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %55 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %54, i32 0, i32 1
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %56, 0
  br i1 %57, label %58, label %70

58:                                               ; preds = %36
  %59 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %60 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @CEPH_MDS_OP_SETFILELOCK, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %66 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %69 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %68, i32 0, i32 1
  store i64 %67, i64* %69, align 8
  br label %70

70:                                               ; preds = %64, %58, %36
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = icmp ne %struct.inode* %71, null
  br i1 %72, label %73, label %79

73:                                               ; preds = %70
  %74 = load %struct.inode*, %struct.inode** %6, align 8
  %75 = call i32 @ihold(%struct.inode* %74)
  %76 = load %struct.inode*, %struct.inode** %6, align 8
  %77 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %5, align 8
  %78 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %77, i32 0, i32 3
  store %struct.inode* %76, %struct.inode** %78, align 8
  br label %79

79:                                               ; preds = %28, %73, %70
  ret void
}

declare dso_local i32 @ceph_reserve_caps(%struct.ceph_mds_client*, i32*, i64) #1

declare dso_local i32 @pr_err(i8*, %struct.ceph_mds_request*, i32) #1

declare dso_local i32 @dout(i8*, %struct.ceph_mds_request*, i64) #1

declare dso_local i32 @ceph_mdsc_get_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @insert_request(i32*, %struct.ceph_mds_request*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @ihold(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
