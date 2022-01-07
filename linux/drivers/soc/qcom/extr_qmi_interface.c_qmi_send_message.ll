; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32, i64 }
%struct.sockaddr_qrtr = type { i32 }
%struct.qmi_txn = type { i32 }
%struct.qmi_elem_info = type { i32 }
%struct.msghdr = type { i32, %struct.sockaddr_qrtr* }
%struct.kvec = type { i64, i8* }

@.str = private unnamed_addr constant [28 x i8] c"failed to send QMI message\0A\00", align 1
@EPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qmi_handle*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i32, i32, i64, %struct.qmi_elem_info*, i8*)* @qmi_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qmi_send_message(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1, %struct.qmi_txn* %2, i32 %3, i32 %4, i64 %5, %struct.qmi_elem_info* %6, i8* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.qmi_handle*, align 8
  %11 = alloca %struct.sockaddr_qrtr*, align 8
  %12 = alloca %struct.qmi_txn*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca %struct.qmi_elem_info*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca %struct.msghdr, align 8
  %19 = alloca %struct.kvec, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %10, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %11, align 8
  store %struct.qmi_txn* %2, %struct.qmi_txn** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store %struct.qmi_elem_info* %6, %struct.qmi_elem_info** %16, align 8
  store i8* %7, i8** %17, align 8
  %22 = bitcast %struct.msghdr* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 16, i1 false)
  %23 = load i32, i32* %13, align 4
  %24 = load i32, i32* %14, align 4
  %25 = load %struct.qmi_txn*, %struct.qmi_txn** %12, align 8
  %26 = getelementptr inbounds %struct.qmi_txn, %struct.qmi_txn* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %16, align 8
  %29 = load i8*, i8** %17, align 8
  %30 = call i8* @qmi_encode_message(i32 %23, i32 %24, i64* %15, i32 %27, %struct.qmi_elem_info* %28, i8* %29)
  store i8* %30, i8** %20, align 8
  %31 = load i8*, i8** %20, align 8
  %32 = call i64 @IS_ERR(i8* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %8
  %35 = load i8*, i8** %20, align 8
  %36 = call i32 @PTR_ERR(i8* %35)
  store i32 %36, i32* %9, align 4
  br label %83

37:                                               ; preds = %8
  %38 = load i8*, i8** %20, align 8
  %39 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i64, i64* %15, align 8
  %41 = getelementptr inbounds %struct.kvec, %struct.kvec* %19, i32 0, i32 0
  store i64 %40, i64* %41, align 8
  %42 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %11, align 8
  %43 = icmp ne %struct.sockaddr_qrtr* %42, null
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %11, align 8
  %46 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 1
  store %struct.sockaddr_qrtr* %45, %struct.sockaddr_qrtr** %46, align 8
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  store i32 4, i32* %47, align 8
  br label %48

48:                                               ; preds = %44, %37
  %49 = load %struct.qmi_handle*, %struct.qmi_handle** %10, align 8
  %50 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.qmi_handle*, %struct.qmi_handle** %10, align 8
  %53 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %48
  %57 = load %struct.qmi_handle*, %struct.qmi_handle** %10, align 8
  %58 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %15, align 8
  %61 = call i32 @kernel_sendmsg(i64 %59, %struct.msghdr* %18, %struct.kvec* %19, i32 1, i64 %60)
  store i32 %61, i32* %21, align 4
  %62 = load i32, i32* %21, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %56
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %66

66:                                               ; preds = %64, %56
  br label %70

67:                                               ; preds = %48
  %68 = load i32, i32* @EPIPE, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %21, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load %struct.qmi_handle*, %struct.qmi_handle** %10, align 8
  %72 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %71, i32 0, i32 0
  %73 = call i32 @mutex_unlock(i32* %72)
  %74 = load i8*, i8** %20, align 8
  %75 = call i32 @kfree(i8* %74)
  %76 = load i32, i32* %21, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %70
  %79 = load i32, i32* %21, align 4
  br label %81

80:                                               ; preds = %70
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i32 [ %79, %78 ], [ 0, %80 ]
  store i32 %82, i32* %9, align 4
  br label %83

83:                                               ; preds = %81, %34
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @qmi_encode_message(i32, i32, i64*, i32, %struct.qmi_elem_info*, i8*) #2

declare dso_local i64 @IS_ERR(i8*) #2

declare dso_local i32 @PTR_ERR(i8*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @kernel_sendmsg(i64, %struct.msghdr*, %struct.kvec*, i32, i64) #2

declare dso_local i32 @pr_err(i8*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
