; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_dump_data_payload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_erl1.c_iscsit_dump_data_payload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_conn = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }
%struct.kvec = type { i8*, i64 }

@DATAOUT_WITHIN_COMMAND_RECOVERY = common dso_local global i32 0, align 4
@ISCSI_CRC_LEN = common dso_local global i64 0, align 8
@OFFLOAD_BUF_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"Unable to allocate %u bytes for offload buffer.\0A\00", align 1
@DATAOUT_CANNOT_RECOVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_dump_data_payload(%struct.iscsi_conn* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iscsi_conn*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.kvec, align 8
  store %struct.iscsi_conn* %0, %struct.iscsi_conn** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load i32, i32* @DATAOUT_WITHIN_COMMAND_RECOVERY, align 4
  store i32 %15, i32* %9, align 4
  store i64 0, i64* %12, align 8
  %16 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %17 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %16, i32 0, i32 1
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %87

25:                                               ; preds = %3
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load i64, i64* %6, align 8
  %30 = call i64 @ALIGN(i64 %29, i32 4)
  store i64 %30, i64* %6, align 8
  %31 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %32 = getelementptr inbounds %struct.iscsi_conn, %struct.iscsi_conn* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = load i64, i64* @ISCSI_CRC_LEN, align 8
  %39 = load i64, i64* %6, align 8
  %40 = add nsw i64 %39, %38
  store i64 %40, i64* %6, align 8
  br label %41

41:                                               ; preds = %37, %28
  br label %42

42:                                               ; preds = %41, %25
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @OFFLOAD_BUF_SIZE, align 8
  %45 = call i64 @min(i64 %43, i64 %44)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = load i32, i32* @GFP_ATOMIC, align 4
  %48 = call i8* @kzalloc(i64 %46, i32 %47)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = icmp ne i8* %49, null
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %52)
  store i32 -1, i32* %4, align 4
  br label %87

54:                                               ; preds = %42
  %55 = call i32 @memset(%struct.kvec* %14, i32 0, i32 16)
  br label %56

56:                                               ; preds = %79, %54
  %57 = load i64, i64* %12, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %83

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub nsw i64 %61, %62
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @min(i64 %63, i64 %64)
  store i64 %65, i64* %13, align 8
  %66 = load i64, i64* %13, align 8
  %67 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = load i8*, i8** %8, align 8
  %69 = getelementptr inbounds %struct.kvec, %struct.kvec* %14, i32 0, i32 0
  store i8* %68, i8** %69, align 8
  %70 = load %struct.iscsi_conn*, %struct.iscsi_conn** %5, align 8
  %71 = load i64, i64* %13, align 8
  %72 = call i32 @rx_data(%struct.iscsi_conn* %70, %struct.kvec* %14, i32 1, i64 %71)
  store i32 %72, i32* %10, align 4
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* %13, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %60
  %78 = load i32, i32* @DATAOUT_CANNOT_RECOVER, align 4
  store i32 %78, i32* %9, align 4
  br label %83

79:                                               ; preds = %60
  %80 = load i64, i64* %13, align 8
  %81 = load i64, i64* %12, align 8
  %82 = add nsw i64 %81, %80
  store i64 %82, i64* %12, align 8
  br label %56

83:                                               ; preds = %77, %56
  %84 = load i8*, i8** %8, align 8
  %85 = call i32 @kfree(i8* %84)
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %51, %24
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @ALIGN(i64, i32) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local i32 @memset(%struct.kvec*, i32, i32) #1

declare dso_local i32 @rx_data(%struct.iscsi_conn*, %struct.kvec*, i32, i64) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
