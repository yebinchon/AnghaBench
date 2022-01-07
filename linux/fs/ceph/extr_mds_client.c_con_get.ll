; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_con_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_con_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"mdsc con_get %p ok (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"mdsc con_get %p FAIL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_connection* (%struct.ceph_connection*)* @con_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_connection* @con_get(%struct.ceph_connection* %0) #0 {
  %2 = alloca %struct.ceph_connection*, align 8
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.ceph_mds_session*, align 8
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  %5 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %6 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %5, i32 0, i32 0
  %7 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %6, align 8
  store %struct.ceph_mds_session* %7, %struct.ceph_mds_session** %4, align 8
  %8 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %9 = call i64 @get_session(%struct.ceph_mds_session* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %13 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %14 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %13, i32 0, i32 0
  %15 = call i32 @refcount_read(i32* %14)
  %16 = call i32 (i8*, %struct.ceph_mds_session*, ...) @dout(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_session* %12, i32 %15)
  %17 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  store %struct.ceph_connection* %17, %struct.ceph_connection** %2, align 8
  br label %21

18:                                               ; preds = %1
  %19 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %4, align 8
  %20 = call i32 (i8*, %struct.ceph_mds_session*, ...) @dout(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_mds_session* %19)
  store %struct.ceph_connection* null, %struct.ceph_connection** %2, align 8
  br label %21

21:                                               ; preds = %18, %11
  %22 = load %struct.ceph_connection*, %struct.ceph_connection** %2, align 8
  ret %struct.ceph_connection* %22
}

declare dso_local i64 @get_session(%struct.ceph_mds_session*) #1

declare dso_local i32 @dout(i8*, %struct.ceph_mds_session*, ...) #1

declare dso_local i32 @refcount_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
