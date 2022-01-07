; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_do_request.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_do_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32 }
%struct.inode = type { i32 }
%struct.ceph_mds_request = type { i32 }

@.str = private unnamed_addr constant [18 x i8] c"do_request on %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"do_request %p done, result %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_mdsc_do_request(%struct.ceph_mds_client* %0, %struct.inode* %1, %struct.ceph_mds_request* %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.ceph_mds_request*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store %struct.ceph_mds_request* %2, %struct.ceph_mds_request** %6, align 8
  %8 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %9 = call i32 (i8*, %struct.ceph_mds_request*, ...) @dout(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), %struct.ceph_mds_request* %8)
  %10 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %13 = call i32 @ceph_mdsc_submit_request(%struct.ceph_mds_client* %10, %struct.inode* %11, %struct.ceph_mds_request* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %18 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %19 = call i32 @ceph_mdsc_wait_request(%struct.ceph_mds_client* %17, %struct.ceph_mds_request* %18)
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.ceph_mds_request*, %struct.ceph_mds_request** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i8*, %struct.ceph_mds_request*, ...) @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), %struct.ceph_mds_request* %21, i32 %22)
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

declare dso_local i32 @dout(i8*, %struct.ceph_mds_request*, ...) #1

declare dso_local i32 @ceph_mdsc_submit_request(%struct.ceph_mds_client*, %struct.inode*, %struct.ceph_mds_request*) #1

declare dso_local i32 @ceph_mdsc_wait_request(%struct.ceph_mds_client*, %struct.ceph_mds_request*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
