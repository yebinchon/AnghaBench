; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_login_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_parameters.c_iscsi_login_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { i32 }
%struct.kvec = type { i32, i8* }

@ISCSI_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"tx_data returned %d, expecting %d.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsi_login_tx_data(%struct.iscsi_conn* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [2 x %struct.kvec], align 16
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 1, i32* %12, align 4
  %14 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %13, i64 0, i64 0
  %18 = call i32 @memset(%struct.kvec* %17, i32 0, i32 32)
  %19 = load i32, i32* @ISCSI_HDR_LEN, align 4
  %20 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %13, i64 0, i64 0
  %21 = getelementptr inbounds %struct.kvec, %struct.kvec* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 16
  %22 = load i8*, i8** %7, align 8
  %23 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %13, i64 0, i64 0
  %24 = getelementptr inbounds %struct.kvec, %struct.kvec* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %27, label %39

27:                                               ; preds = %4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %13, i64 0, i64 1
  %33 = getelementptr inbounds %struct.kvec, %struct.kvec* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 16
  %34 = load i8*, i8** %8, align 8
  %35 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %13, i64 0, i64 1
  %36 = getelementptr inbounds %struct.kvec, %struct.kvec* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %12, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %30, %27, %4
  %40 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %41 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %13, i64 0, i64 0
  %42 = load i32, i32* %12, align 4
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @tx_data(%struct.iscsi_conn* %40, %struct.kvec* %41, i32 %42, i32 %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  store i32 -1, i32* %5, align 4
  br label %53

52:                                               ; preds = %39
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %48
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32 @memset(%struct.kvec*, i32, i32) #1

declare dso_local i32 @tx_data(%struct.iscsi_conn*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
