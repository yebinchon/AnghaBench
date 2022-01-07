; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_wait_requests.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_wait_requests.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ceph_options* }
%struct.ceph_options = type { i32 }
%struct.ceph_mds_request = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"wait_requests waiting for requests\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"wait_requests timed out on tid %llu\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"wait_requests done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*)* @wait_requests to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wait_requests(%struct.ceph_mds_client* %0) #0 {
  %2 = alloca %struct.ceph_mds_client*, align 8
  %3 = alloca %struct.ceph_options*, align 8
  %4 = alloca %struct.ceph_mds_request*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %2, align 8
  %5 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.ceph_options*, %struct.ceph_options** %10, align 8
  store %struct.ceph_options* %11, %struct.ceph_options** %3, align 8
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %16 = call %struct.ceph_mds_request* @__get_oldest_req(%struct.ceph_mds_client* %15)
  %17 = icmp ne %struct.ceph_mds_request* %16, null
  br i1 %17, label %18, label %49

18:                                               ; preds = %1
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %19, i32 0, i32 0
  %21 = call i32 @mutex_unlock(i32* %20)
  %22 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %24 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %23, i32 0, i32 1
  %25 = load %struct.ceph_options*, %struct.ceph_options** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_options, %struct.ceph_options* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ceph_timeout_jiffies(i32 %27)
  %29 = call i32 @wait_for_completion_timeout(i32* %24, i32 %28)
  %30 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %31 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %30, i32 0, i32 0
  %32 = call i32 @mutex_lock(i32* %31)
  br label %33

33:                                               ; preds = %37, %18
  %34 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %35 = call %struct.ceph_mds_request* @__get_oldest_req(%struct.ceph_mds_client* %34)
  store %struct.ceph_mds_request* %35, %struct.ceph_mds_request** %4, align 8
  %36 = icmp ne %struct.ceph_mds_request* %35, null
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %39 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %43 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %42, i32 0, i32 0
  %44 = call i32 @list_del_init(i32* %43)
  %45 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %46 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %47 = call i32 @__unregister_request(%struct.ceph_mds_client* %45, %struct.ceph_mds_request* %46)
  br label %33

48:                                               ; preds = %33
  br label %49

49:                                               ; preds = %48, %1
  %50 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %2, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %50, i32 0, i32 0
  %52 = call i32 @mutex_unlock(i32* %51)
  %53 = call i32 (i8*, ...) @dout(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ceph_mds_request* @__get_oldest_req(%struct.ceph_mds_client*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dout(i8*, ...) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ceph_timeout_jiffies(i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__unregister_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
