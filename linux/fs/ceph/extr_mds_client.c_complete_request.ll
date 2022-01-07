; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_complete_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_complete_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.ceph_mds_request = type { i32, i32 (%struct.ceph_mds_client.0*, %struct.ceph_mds_request*)* }
%struct.ceph_mds_client.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_mds_request*)* @complete_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @complete_request(%struct.ceph_mds_client* %0, %struct.ceph_mds_request* %1) #0 {
  %3 = alloca %struct.ceph_mds_client*, align 8
  %4 = alloca %struct.ceph_mds_request*, align 8
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %3, align 8
  store %struct.ceph_mds_request* %1, %struct.ceph_mds_request** %4, align 8
  %5 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %6 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %5, i32 0, i32 1
  %7 = load i32 (%struct.ceph_mds_client.0*, %struct.ceph_mds_request*)*, i32 (%struct.ceph_mds_client.0*, %struct.ceph_mds_request*)** %6, align 8
  %8 = icmp ne i32 (%struct.ceph_mds_client.0*, %struct.ceph_mds_request*)* %7, null
  br i1 %8, label %9, label %17

9:                                                ; preds = %2
  %10 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %11 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %10, i32 0, i32 1
  %12 = load i32 (%struct.ceph_mds_client.0*, %struct.ceph_mds_request*)*, i32 (%struct.ceph_mds_client.0*, %struct.ceph_mds_request*)** %11, align 8
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %3, align 8
  %14 = bitcast %struct.ceph_mds_client* %13 to %struct.ceph_mds_client.0*
  %15 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %16 = call i32 %12(%struct.ceph_mds_client.0* %14, %struct.ceph_mds_request* %15)
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %4, align 8
  %19 = getelementptr inbounds %struct.ceph_mds_request, %struct.ceph_mds_request* %18, i32 0, i32 0
  %20 = call i32 @complete_all(i32* %19)
  ret void
}

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
