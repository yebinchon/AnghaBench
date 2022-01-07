; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32, i32 }
%struct.kvec = type { i32 }
%struct.msghdr = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"Data length is: %d\0A\00", align 1
@WRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"tx_loop: %d total_tx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"tx_loop: %d, total_tx: %d, data: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tx_data(%struct.iscsi_conn* %0, %struct.kvec* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca %struct.kvec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.msghdr, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store %struct.kvec* %1, %struct.kvec** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %11, align 4
  %13 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %14 = icmp ne %struct.iscsi_conn* %13, null
  br i1 %14, label %15, label %25

15:                                               ; preds = %4
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %22 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %20, %15, %4
  store i32 -1, i32* %5, align 4
  br label %65

26:                                               ; preds = %20
  %27 = load i32, i32* %9, align 4
  %28 = icmp sle i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %26
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 -1, i32* %5, align 4
  br label %65

32:                                               ; preds = %26
  %33 = call i32 @memset(%struct.msghdr* %10, i32 0, i32 4)
  %34 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %10, i32 0, i32 0
  %35 = load i32, i32* @WRITE, align 4
  %36 = load %struct.kvec*, %struct.kvec** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @iov_iter_kvec(i32* %34, i32 %35, %struct.kvec* %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %55, %32
  %41 = call i64 @msg_data_left(%struct.msghdr* %10)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %63

43:                                               ; preds = %40
  %44 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %45 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @sock_sendmsg(i32 %46, %struct.msghdr* %10)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp sle i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %43
  %51 = load i32, i32* %12, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52)
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %5, align 4
  br label %65

55:                                               ; preds = %43
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %11, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i8*, i32, i32, ...) @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 %61)
  br label %40

63:                                               ; preds = %40
  %64 = load i32, i32* %11, align 4
  store i32 %64, i32* %5, align 4
  br label %65

65:                                               ; preds = %63, %50, %29, %25
  %66 = load i32, i32* %5, align 4
  ret i32 %66
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @memset(%struct.msghdr*, i32, i32) #1

declare dso_local i32 @iov_iter_kvec(i32*, i32, %struct.kvec*, i32, i32) #1

declare dso_local i64 @msg_data_left(%struct.msghdr*) #1

declare dso_local i32 @sock_sendmsg(i32, %struct.msghdr*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
