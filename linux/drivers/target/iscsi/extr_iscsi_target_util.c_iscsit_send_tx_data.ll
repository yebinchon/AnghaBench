; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_send_tx_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_util.c_iscsit_send_tx_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, i32, %struct.kvec*, i32, %struct.kvec* }
%struct.kvec = type { i32 }
%struct.iscsi_conn = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"tx_data() returned -EAGAIN\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_send_tx_data(%struct.iscsi_cmd* %0, %struct.iscsi_conn* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_cmd*, align 8
  %6 = alloca %struct.iscsi_conn*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.kvec*, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %5, align 8
  store %struct.iscsi_conn* %1, %struct.iscsi_conn** %6, align 8
  store i32 %2, i32* %7, align 4
  br label %12

12:                                               ; preds = %49, %3
  %13 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %14 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %12
  %19 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %19, i32 0, i32 4
  %21 = load %struct.kvec*, %struct.kvec** %20, align 8
  %22 = getelementptr inbounds %struct.kvec, %struct.kvec* %21, i64 0
  store %struct.kvec* %22, %struct.kvec** %11, align 8
  %23 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %24 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %10, align 4
  br label %34

26:                                               ; preds = %12
  %27 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %28 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %27, i32 0, i32 2
  %29 = load %struct.kvec*, %struct.kvec** %28, align 8
  %30 = getelementptr inbounds %struct.kvec, %struct.kvec* %29, i64 0
  store %struct.kvec* %30, %struct.kvec** %11, align 8
  %31 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %26, %18
  %35 = load %struct.iscsi_conn*, %struct.iscsi_conn** %6, align 8
  %36 = load %struct.kvec*, %struct.kvec** %11, align 8
  %37 = getelementptr inbounds %struct.kvec, %struct.kvec* %36, i64 0
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @tx_data(%struct.iscsi_conn* %35, %struct.kvec* %37, i32 %38, i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %34
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* @EAGAIN, align 4
  %47 = sub nsw i32 0, %46
  %48 = icmp eq i32 %45, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %12

51:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %55

52:                                               ; preds = %34
  %53 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %5, align 8
  %54 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %53, i32 0, i32 0
  store i32 0, i32* %54, align 8
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %51
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @tx_data(%struct.iscsi_conn*, %struct.kvec*, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
