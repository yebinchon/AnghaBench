; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_mds_alloc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_mds_alloc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_msg = type { i32 }
%struct.ceph_connection = type { %struct.ceph_msg* }
%struct.ceph_msg_header = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"unable to allocate msg type %d len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ceph_msg* (%struct.ceph_connection*, %struct.ceph_msg_header*, i32*)* @mds_alloc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ceph_msg* @mds_alloc_msg(%struct.ceph_connection* %0, %struct.ceph_msg_header* %1, i32* %2) #0 {
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_connection*, align 8
  %6 = alloca %struct.ceph_msg_header*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ceph_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %5, align 8
  store %struct.ceph_msg_header* %1, %struct.ceph_msg_header** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %12 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* %9, align 4
  %16 = load %struct.ceph_msg_header*, %struct.ceph_msg_header** %6, align 8
  %17 = getelementptr inbounds %struct.ceph_msg_header, %struct.ceph_msg_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le32_to_cpu(i32 %18)
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %10, align 4
  %21 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %22 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %21, i32 0, i32 0
  %23 = load %struct.ceph_msg*, %struct.ceph_msg** %22, align 8
  %24 = icmp ne %struct.ceph_msg* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.ceph_connection*, %struct.ceph_connection** %5, align 8
  %27 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %26, i32 0, i32 0
  %28 = load %struct.ceph_msg*, %struct.ceph_msg** %27, align 8
  store %struct.ceph_msg* %28, %struct.ceph_msg** %4, align 8
  br label %43

29:                                               ; preds = %3
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* @GFP_NOFS, align 4
  %34 = call %struct.ceph_msg* @ceph_msg_new(i32 %31, i32 %32, i32 %33, i32 0)
  store %struct.ceph_msg* %34, %struct.ceph_msg** %8, align 8
  %35 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  %36 = icmp ne %struct.ceph_msg* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %29
  %38 = load i32, i32* %9, align 4
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %39)
  store %struct.ceph_msg* null, %struct.ceph_msg** %4, align 8
  br label %43

41:                                               ; preds = %29
  %42 = load %struct.ceph_msg*, %struct.ceph_msg** %8, align 8
  store %struct.ceph_msg* %42, %struct.ceph_msg** %4, align 8
  br label %43

43:                                               ; preds = %41, %37, %25
  %44 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  ret %struct.ceph_msg* %44
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.ceph_msg* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
