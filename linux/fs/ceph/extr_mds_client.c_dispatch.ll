; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_dispatch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_connection = type { %struct.ceph_mds_session* }
%struct.ceph_mds_session = type { %struct.ceph_mds_client* }
%struct.ceph_mds_client = type { i32 }
%struct.ceph_msg = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"received unknown message type %d %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_connection*, %struct.ceph_msg*)* @dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dispatch(%struct.ceph_connection* %0, %struct.ceph_msg* %1) #0 {
  %3 = alloca %struct.ceph_connection*, align 8
  %4 = alloca %struct.ceph_msg*, align 8
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.ceph_mds_client*, align 8
  %7 = alloca i32, align 4
  store %struct.ceph_connection* %0, %struct.ceph_connection** %3, align 8
  store %struct.ceph_msg* %1, %struct.ceph_msg** %4, align 8
  %8 = load %struct.ceph_connection*, %struct.ceph_connection** %3, align 8
  %9 = getelementptr inbounds %struct.ceph_connection, %struct.ceph_connection* %8, i32 0, i32 0
  %10 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %9, align 8
  store %struct.ceph_mds_session* %10, %struct.ceph_mds_session** %5, align 8
  %11 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %11, i32 0, i32 0
  %13 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %12, align 8
  store %struct.ceph_mds_client* %13, %struct.ceph_mds_client** %6, align 8
  %14 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %15 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le16_to_cpu(i32 %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %20 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %23 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %24 = call i64 @__verify_registered_session(%struct.ceph_mds_client* %22, %struct.ceph_mds_session* %23)
  %25 = icmp slt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %2
  %27 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %28 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  br label %81

30:                                               ; preds = %2
  %31 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %32 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %31, i32 0, i32 0
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load i32, i32* %7, align 4
  switch i32 %34, label %75 [
    i32 128, label %35
    i32 129, label %39
    i32 131, label %43
    i32 133, label %47
    i32 132, label %51
    i32 136, label %56
    i32 130, label %60
    i32 135, label %65
    i32 134, label %70
  ]

35:                                               ; preds = %30
  %36 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %37 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %38 = call i32 @ceph_mdsc_handle_mdsmap(%struct.ceph_mds_client* %36, %struct.ceph_msg* %37)
  br label %80

39:                                               ; preds = %30
  %40 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %41 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %42 = call i32 @ceph_mdsc_handle_fsmap(%struct.ceph_mds_client* %40, %struct.ceph_msg* %41)
  br label %80

43:                                               ; preds = %30
  %44 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %45 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %46 = call i32 @handle_session(%struct.ceph_mds_session* %44, %struct.ceph_msg* %45)
  br label %80

47:                                               ; preds = %30
  %48 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %49 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %50 = call i32 @handle_reply(%struct.ceph_mds_session* %48, %struct.ceph_msg* %49)
  br label %80

51:                                               ; preds = %30
  %52 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %53 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %54 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %55 = call i32 @handle_forward(%struct.ceph_mds_client* %52, %struct.ceph_mds_session* %53, %struct.ceph_msg* %54)
  br label %80

56:                                               ; preds = %30
  %57 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %58 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %59 = call i32 @ceph_handle_caps(%struct.ceph_mds_session* %57, %struct.ceph_msg* %58)
  br label %80

60:                                               ; preds = %30
  %61 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %62 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %63 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %64 = call i32 @ceph_handle_snap(%struct.ceph_mds_client* %61, %struct.ceph_mds_session* %62, %struct.ceph_msg* %63)
  br label %80

65:                                               ; preds = %30
  %66 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %67 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %68 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %69 = call i32 @handle_lease(%struct.ceph_mds_client* %66, %struct.ceph_mds_session* %67, %struct.ceph_msg* %68)
  br label %80

70:                                               ; preds = %30
  %71 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %6, align 8
  %72 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %73 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %74 = call i32 @ceph_handle_quota(%struct.ceph_mds_client* %71, %struct.ceph_mds_session* %72, %struct.ceph_msg* %73)
  br label %80

75:                                               ; preds = %30
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ceph_msg_type_name(i32 %77)
  %79 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %76, i32 %78)
  br label %80

80:                                               ; preds = %75, %70, %65, %60, %56, %51, %47, %43, %39, %35
  br label %81

81:                                               ; preds = %80, %26
  %82 = load %struct.ceph_msg*, %struct.ceph_msg** %4, align 8
  %83 = call i32 @ceph_msg_put(%struct.ceph_msg* %82)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @__verify_registered_session(%struct.ceph_mds_client*, %struct.ceph_mds_session*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ceph_mdsc_handle_mdsmap(%struct.ceph_mds_client*, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_mdsc_handle_fsmap(%struct.ceph_mds_client*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_session(%struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_reply(%struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_forward(%struct.ceph_mds_client*, %struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_handle_caps(%struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_handle_snap(%struct.ceph_mds_client*, %struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @handle_lease(%struct.ceph_mds_client*, %struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @ceph_handle_quota(%struct.ceph_mds_client*, %struct.ceph_mds_session*, %struct.ceph_msg*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @ceph_msg_type_name(i32) #1

declare dso_local i32 @ceph_msg_put(%struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
