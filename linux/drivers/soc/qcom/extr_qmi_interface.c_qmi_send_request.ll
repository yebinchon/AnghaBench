; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_send_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_send_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32 }
%struct.sockaddr_qrtr = type { i32 }
%struct.qmi_txn = type { i32 }
%struct.qmi_elem_info = type { i32 }

@QMI_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qmi_send_request(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1, %struct.qmi_txn* %2, i32 %3, i64 %4, %struct.qmi_elem_info* %5, i8* %6) #0 {
  %8 = alloca %struct.qmi_handle*, align 8
  %9 = alloca %struct.sockaddr_qrtr*, align 8
  %10 = alloca %struct.qmi_txn*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qmi_elem_info*, align 8
  %14 = alloca i8*, align 8
  store %struct.qmi_handle* %0, %struct.qmi_handle** %8, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %9, align 8
  store %struct.qmi_txn* %2, %struct.qmi_txn** %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.qmi_elem_info* %5, %struct.qmi_elem_info** %13, align 8
  store i8* %6, i8** %14, align 8
  %15 = load %struct.qmi_handle*, %struct.qmi_handle** %8, align 8
  %16 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %9, align 8
  %17 = load %struct.qmi_txn*, %struct.qmi_txn** %10, align 8
  %18 = load i32, i32* @QMI_REQUEST, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load i64, i64* %12, align 8
  %21 = load %struct.qmi_elem_info*, %struct.qmi_elem_info** %13, align 8
  %22 = load i8*, i8** %14, align 8
  %23 = call i32 @qmi_send_message(%struct.qmi_handle* %15, %struct.sockaddr_qrtr* %16, %struct.qmi_txn* %17, i32 %18, i32 %19, i64 %20, %struct.qmi_elem_info* %21, i8* %22)
  ret i32 %23
}

declare dso_local i32 @qmi_send_message(%struct.qmi_handle*, %struct.sockaddr_qrtr*, %struct.qmi_txn*, i32, i32, i64, %struct.qmi_elem_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
