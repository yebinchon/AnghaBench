; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___have_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c___have_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ceph_mds_client*, i32)* @__have_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__have_session(%struct.ceph_mds_client* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %8 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %6, %9
  br i1 %10, label %20, label %11

11:                                               ; preds = %2
  %12 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %13 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %22

21:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %20
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
