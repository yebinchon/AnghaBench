; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_invoke_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_invoke_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { %struct.qmi_msg_handler* }
%struct.qmi_msg_handler = type { i64, i64, i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)*, i32, i32 }
%struct.qmi_handle.0 = type opaque
%struct.sockaddr_qrtr = type { i32 }
%struct.qmi_txn = type { i32 }
%struct.qmi_header = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"failed to decode incoming message\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*, i64)* @qmi_invoke_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_invoke_handler(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1, %struct.qmi_txn* %2, i8* %3, i64 %4) #0 {
  %6 = alloca %struct.qmi_handle*, align 8
  %7 = alloca %struct.sockaddr_qrtr*, align 8
  %8 = alloca %struct.qmi_txn*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.qmi_msg_handler*, align 8
  %12 = alloca %struct.qmi_header*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %6, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %7, align 8
  store %struct.qmi_txn* %2, %struct.qmi_txn** %8, align 8
  store i8* %3, i8** %9, align 8
  store i64 %4, i64* %10, align 8
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.qmi_header*
  store %struct.qmi_header* %16, %struct.qmi_header** %12, align 8
  %17 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %18 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %17, i32 0, i32 0
  %19 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %18, align 8
  %20 = icmp ne %struct.qmi_msg_handler* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %92

22:                                               ; preds = %5
  %23 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %24 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %23, i32 0, i32 0
  %25 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %24, align 8
  store %struct.qmi_msg_handler* %25, %struct.qmi_msg_handler** %11, align 8
  br label %26

26:                                               ; preds = %49, %22
  %27 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %28 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %27, i32 0, i32 2
  %29 = load i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)*, i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)** %28, align 8
  %30 = icmp ne i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)* %29, null
  br i1 %30, label %31, label %52

31:                                               ; preds = %26
  %32 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %33 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.qmi_header*, %struct.qmi_header** %12, align 8
  %36 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %31
  %40 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %41 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.qmi_header*, %struct.qmi_header** %12, align 8
  %44 = getelementptr inbounds %struct.qmi_header, %struct.qmi_header* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %42, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %52

48:                                               ; preds = %39, %31
  br label %49

49:                                               ; preds = %48
  %50 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %51 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %50, i32 1
  store %struct.qmi_msg_handler* %51, %struct.qmi_msg_handler** %11, align 8
  br label %26

52:                                               ; preds = %47, %26
  %53 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %54 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %53, i32 0, i32 2
  %55 = load i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)*, i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)** %54, align 8
  %56 = icmp ne i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %92

58:                                               ; preds = %52
  %59 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %60 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i32 %61, i32 %62)
  store i8* %63, i8** %13, align 8
  %64 = load i8*, i8** %13, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %67, label %66

66:                                               ; preds = %58
  br label %92

67:                                               ; preds = %58
  %68 = load i8*, i8** %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %71 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = load i8*, i8** %13, align 8
  %74 = call i32 @qmi_decode_message(i8* %68, i64 %69, i32 %72, i8* %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %67
  %78 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %89

79:                                               ; preds = %67
  %80 = load %struct.qmi_msg_handler*, %struct.qmi_msg_handler** %11, align 8
  %81 = getelementptr inbounds %struct.qmi_msg_handler, %struct.qmi_msg_handler* %80, i32 0, i32 2
  %82 = load i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)*, i32 (%struct.qmi_handle.0*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i8*)** %81, align 8
  %83 = load %struct.qmi_handle*, %struct.qmi_handle** %6, align 8
  %84 = bitcast %struct.qmi_handle* %83 to %struct.qmi_handle.0*
  %85 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %7, align 8
  %86 = load %struct.qmi_txn*, %struct.qmi_txn** %8, align 8
  %87 = load i8*, i8** %13, align 8
  %88 = call i32 %82(%struct.qmi_handle.0* %84, %struct.sockaddr_qrtr* %85, %struct.qmi_txn* %86, i8* %87)
  br label %89

89:                                               ; preds = %79, %77
  %90 = load i8*, i8** %13, align 8
  %91 = call i32 @kfree(i8* %90)
  br label %92

92:                                               ; preds = %89, %66, %57, %21
  ret void
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @qmi_decode_message(i8*, i64, i32, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
