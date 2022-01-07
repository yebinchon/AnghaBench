; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_handle_forward.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_handle_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_session = type { i32 }
%struct.ceph_msg = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i8* }
%struct.TYPE_3__ = type { i32 }
%struct.ceph_mds_request = type { i64, i64, i64, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@bad = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"forward tid %llu to mds%d - req dne\0A\00", align 1
@CEPH_MDS_R_ABORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"forward tid %llu aborted, unregistering\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"forward tid %llu to mds%d - old seq %d <= %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"forward tid %llu to mds%d (we resend)\0A\00", align 1
@CEPH_MDS_R_GOT_RESULT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"mdsc_handle_forward decode error err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_session*, %struct.ceph_msg*)* @handle_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_forward(%struct.ceph_mds_client* %0, %struct.ceph_mds_session* %1, %struct.ceph_msg* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_msg*, align 8
  %7 = alloca %struct.ceph_mds_request*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_mds_session* %1, %struct.ceph_mds_session** %5, align 8
  store %struct.ceph_msg* %2, %struct.ceph_msg** %6, align 8
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %15 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @le64_to_cpu(i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %11, align 4
  %21 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %22 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %12, align 8
  %25 = load i8*, i8** %12, align 8
  %26 = load %struct.ceph_msg*, %struct.ceph_msg** %6, align 8
  %27 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = getelementptr i8, i8* %25, i64 %30
  store i8* %31, i8** %13, align 8
  %32 = load i8*, i8** %13, align 8
  %33 = load i32, i32* @bad, align 4
  %34 = call i32 @ceph_decode_need(i8** %12, i8* %32, i32 16, i32 %33)
  %35 = call i64 @ceph_decode_32(i8** %12)
  store i64 %35, i64* %9, align 8
  %36 = call i64 @ceph_decode_32(i8** %12)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %38 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %37, i32 0, i32 0
  %39 = call i32 @mutex_lock(i32* %38)
  %40 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.ceph_mds_request* @lookup_get_request(%struct.ceph_mds_client* %40, i32 %41)
  store %struct.ceph_mds_request* %42, %struct.ceph_mds_request** %7, align 8
  %43 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %44 = icmp ne %struct.ceph_mds_request* %43, null
  br i1 %44, label %49, label %45

45:                                               ; preds = %3
  %46 = load i32, i32* %8, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %46, i64 %47)
  br label %105

49:                                               ; preds = %3
  %50 = load i32, i32* @CEPH_MDS_R_ABORTED, align 4
  %51 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %52 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %51, i32 0, i32 3
  %53 = call i64 @test_bit(i32 %50, i32* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %8, align 4
  %57 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %56)
  %58 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %59 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %60 = call i32 @__unregister_request(%struct.ceph_mds_client* %58, %struct.ceph_mds_request* %59)
  br label %102

61:                                               ; preds = %49
  %62 = load i64, i64* %10, align 8
  %63 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %64 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sle i64 %62, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %61
  %68 = load i32, i32* %8, align 4
  %69 = load i64, i64* %9, align 8
  %70 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %71 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %68, i64 %69, i64 %72, i64 %73)
  br label %101

75:                                               ; preds = %61
  %76 = load i32, i32* %8, align 4
  %77 = load i64, i64* %9, align 8
  %78 = call i32 (i8*, i32, ...) @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %77)
  %79 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %80 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %79, i32 0, i32 4
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @BUG_ON(i64 %81)
  %83 = load i32, i32* @CEPH_MDS_R_GOT_RESULT, align 4
  %84 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %85 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %84, i32 0, i32 3
  %86 = call i64 @test_bit(i32 %83, i32* %85)
  %87 = call i32 @BUG_ON(i64 %86)
  %88 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %89 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %92 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %91, i32 0, i32 0
  store i64 %90, i64* %92, align 8
  %93 = load i64, i64* %9, align 8
  %94 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %95 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %97 = call i32 @put_request_session(%struct.ceph_mds_request* %96)
  %98 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %99 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %100 = call i32 @__do_request(%struct.ceph_mds_client* %98, %struct.ceph_mds_request* %99)
  br label %101

101:                                              ; preds = %75, %67
  br label %102

102:                                              ; preds = %101, %55
  %103 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %7, align 8
  %104 = call i32 @ceph_mdsc_put_request(%struct.ceph_mds_request* %103)
  br label %105

105:                                              ; preds = %102, %45
  %106 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %107 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  br label %112

109:                                              ; No predecessors!
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @pr_err(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %109, %105
  ret void
}

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @ceph_decode_need(i8**, i8*, i32, i32) #1

declare dso_local i64 @ceph_decode_32(i8**) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mds_request* @lookup_get_request(%struct.ceph_mds_client*, i32) #1

declare dso_local i32 @dout(i8*, i32, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__unregister_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @BUG_ON(i64) #1

declare dso_local i32 @put_request_session(%struct.ceph_mds_request*) #1

declare dso_local i32 @__do_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_put_request(%struct.ceph_mds_request*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
