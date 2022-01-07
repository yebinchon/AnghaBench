; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_do_rx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_do_rx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32 }
%struct.iscsi_data_count = type { i32, i32, i32 }
%struct.msghdr = type { i32 }

@READ = common dso_local global i32 0, align 4
@MSG_WAITALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"rx_loop: %d total_rx: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"rx_loop: %d, total_rx: %d, data: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_conn*, %struct.iscsi_data_count*)* @iscsit_do_rx_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_do_rx_data(%struct.iscsi_conn* %0, %struct.iscsi_data_count* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_conn*, align 8
  %5 = alloca %struct.iscsi_data_count*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.msghdr, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %4, align 8
  store %struct.iscsi_data_count* %1, %struct.iscsi_data_count** %5, align 8
  %10 = load %struct.iscsi_data_count*, %struct.iscsi_data_count** %5, align 8
  %11 = getelementptr inbounds %struct.iscsi_data_count, %struct.iscsi_data_count* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %14 = icmp ne %struct.iscsi_conn* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %15, %2
  store i32 -1, i32* %3, align 4
  br label %64

26:                                               ; preds = %20
  %27 = call i32 @memset(%struct.msghdr* %9, i32 0, i32 4)
  %28 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %9, i32 0, i32 0
  %29 = load i32, i32* @READ, align 4
  %30 = load %struct.iscsi_data_count*, %struct.iscsi_data_count** %5, align 8
  %31 = getelementptr inbounds %struct.iscsi_data_count, %struct.iscsi_data_count* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.iscsi_data_count*, %struct.iscsi_data_count** %5, align 8
  %34 = getelementptr inbounds %struct.iscsi_data_count, %struct.iscsi_data_count* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @iov_iter_kvec(i32* %28, i32 %29, i32 %32, i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %54, %26
  %39 = call i64 @msg_data_left(%struct.msghdr* %9)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %38
  %42 = load %struct.iscsi_conn*, %struct.iscsi_conn** %4, align 8
  %43 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @MSG_WAITALL, align 4
  %46 = call i32 @sock_recvmsg(i32 %44, %struct.msghdr* %9, i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp sle i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* %8, align 4
  %52 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51)
  %53 = load i32, i32* %7, align 4
  store i32 %53, i32* %3, align 4
  br label %64

54:                                               ; preds = %41
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59, i32 %60)
  br label %38

62:                                               ; preds = %38
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %49, %25
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, i32, i32, i32) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @sock_recvmsg(i32, %struct.msghdr*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
