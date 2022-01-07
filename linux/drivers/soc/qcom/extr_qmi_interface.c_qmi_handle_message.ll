; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_handle_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_handle_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32, i32 }
%struct.sockaddr_qrtr = type { i32 }
%struct.qmi_header = type { i64, i32 }
%struct.qmi_txn = type { i32, i32, i32, i32, i64, i64 }

@.str = private unnamed_addr constant [27 x i8] c"ignoring short QMI packet\0A\00", align 1
@QMI_RESPONSE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to decode incoming message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, %struct.sockaddr_qrtr*, i8*, i64)* @qmi_handle_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_handle_message(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.qmi_handle*, align 8
  %6 = alloca %struct.sockaddr_qrtr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.qmi_header*, align 8
  %10 = alloca %struct.qmi_txn, align 8
  %11 = alloca %struct.qmi_txn*, align 8
  %12 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %5, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store %struct.qmi_txn* null, %struct.qmi_txn** %11, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp ult i64 %13, 16
  br i1 %14, label %15, label %17

15:                                               ; preds = %4
  %16 = call i32 @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %100

17:                                               ; preds = %4
  %18 = load i8*, i8** %7, align 8
  %19 = bitcast i8* %18 to %struct.qmi_header*
  store %struct.qmi_header* %19, %struct.qmi_header** %9, align 8
  %20 = load %struct.qmi_header*, %struct.qmi_header** %9, align 8
  %21 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QMI_RESPONSE, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %89

25:                                               ; preds = %17
  %26 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %27 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %26, i32 0, i32 0
  %28 = call i32 @mutex_lock(i32* %27)
  %29 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %30 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %29, i32 0, i32 1
  %31 = load %struct.qmi_header*, %struct.qmi_header** %9, align 8
  %32 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.qmi_txn* @idr_find(i32* %30, i32 %33)
  store %struct.qmi_txn* %34, %struct.qmi_txn** %11, align 8
  %35 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %36 = icmp ne %struct.qmi_txn* %35, null
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %39 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %38, i32 0, i32 0
  %40 = call i32 @mutex_unlock(i32* %39)
  br label %100

41:                                               ; preds = %25
  %42 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %43 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %42, i32 0, i32 2
  %44 = call i32 @mutex_lock(i32* %43)
  %45 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %46 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %45, i32 0, i32 0
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %49 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %78

52:                                               ; preds = %41
  %53 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %54 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %53, i32 0, i32 5
  %55 = load i64, i64* %54, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %78

57:                                               ; preds = %52
  %58 = load i8*, i8** %7, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %61 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %64 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %63, i32 0, i32 4
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @qmi_decode_message(i8* %58, i64 %59, i64 %62, i64 %65)
  store i32 %66, i32* %12, align 4
  %67 = load i32, i32* %12, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %57
  %70 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %69, %57
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %74 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %76 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %75, i32 0, i32 3
  %77 = call i32 @complete(i32* %76)
  br label %85

78:                                               ; preds = %52, %41
  %79 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %80 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %6, align 8
  %81 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %82 = load i8*, i8** %7, align 8
  %83 = load i64, i64* %8, align 8
  %84 = call i32 @qmi_invoke_handler(%struct.qmi_handle* %79, %struct.sockaddr_qrtr* %80, %struct.qmi_txn* %81, i8* %82, i64 %83)
  br label %85

85:                                               ; preds = %78, %71
  %86 = load %struct.qmi_txn*, %struct.qmi_txn** %11, align 8
  %87 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %86, i32 0, i32 2
  %88 = call i32 @mutex_unlock(i32* %87)
  br label %100

89:                                               ; preds = %17
  %90 = call i32 @memset(%struct.qmi_txn* %10, i32 0, i32 32)
  %91 = load %struct.qmi_header*, %struct.qmi_header** %9, align 8
  %92 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %10, i32 0, i32 1
  store i32 %93, i32* %94, align 4
  %95 = load %struct.qmi_handle*, %struct.qmi_handle** %5, align 8
  %96 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %6, align 8
  %97 = load i8*, i8** %7, align 8
  %98 = load i64, i64* %8, align 8
  %99 = call i32 @qmi_invoke_handler(%struct.qmi_handle* %95, %struct.sockaddr_qrtr* %96, %struct.qmi_txn* %10, i8* %97, i64 %98)
  br label %100

100:                                              ; preds = %15, %37, %89, %85
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.qmi_txn* @idr_find(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @qmi_decode_message(i8*, i64, i64, i64) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @qmi_invoke_handler(%struct.qmi_handle*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*, i64) #1

declare dso_local i32 @memset(%struct.qmi_txn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
