; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_send_new_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_send_new_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32, i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.qmi_service = type { i32, i32, i32 }
%struct.qrtr_ctrl_pkt = type { %struct.TYPE_3__, i8* }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.sockaddr_qrtr = type { i32, i32, i32 }
%struct.msghdr = type { i32, %struct.sockaddr_qrtr* }
%struct.kvec = type { i32, %struct.qrtr_ctrl_pkt* }

@QRTR_TYPE_NEW_LOOKUP = common dso_local global i32 0, align 4
@QRTR_PORT_CTRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"failed to send lookup registration: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, %struct.qmi_service*)* @qmi_send_new_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_send_new_lookup(%struct.qmi_handle* %0, %struct.qmi_service* %1) #0 {
  %3 = alloca %struct.qmi_handle*, align 8
  %4 = alloca %struct.qmi_service*, align 8
  %5 = alloca %struct.qrtr_ctrl_pkt, align 8
  %6 = alloca %struct.sockaddr_qrtr, align 4
  %7 = alloca %struct.msghdr, align 8
  %8 = alloca %struct.kvec, align 8
  %9 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %3, align 8
  store %struct.qmi_service* %1, %struct.qmi_service** %4, align 8
  %10 = bitcast %struct.msghdr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 16, i1 false)
  %11 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 0
  %12 = ptrtoint %struct.qrtr_ctrl_pkt* %5 to i32
  store i32 %12, i32* %11, align 8
  %13 = getelementptr inbounds %struct.kvec, %struct.kvec* %8, i32 0, i32 1
  store %struct.qrtr_ctrl_pkt* inttoptr (i64 24 to %struct.qrtr_ctrl_pkt*), %struct.qrtr_ctrl_pkt** %13, align 8
  %14 = call i32 @memset(%struct.qrtr_ctrl_pkt* %5, i32 0, i32 24)
  %15 = load i32, i32* @QRTR_TYPE_NEW_LOOKUP, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %5, i32 0, i32 1
  store i8* %16, i8** %17, align 8
  %18 = load %struct.qmi_service*, %struct.qmi_service** %4, align 8
  %19 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @cpu_to_le32(i32 %20)
  %22 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %5, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.qmi_service*, %struct.qmi_service** %4, align 8
  %25 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qmi_service*, %struct.qmi_service** %4, align 8
  %28 = getelementptr inbounds %struct.qmi_service, %struct.qmi_service* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = shl i32 %29, 8
  %31 = or i32 %26, %30
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %5, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  %35 = load %struct.qmi_handle*, %struct.qmi_handle** %3, align 8
  %36 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %6, i32 0, i32 2
  store i32 %38, i32* %39, align 4
  %40 = load %struct.qmi_handle*, %struct.qmi_handle** %3, align 8
  %41 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %6, i32 0, i32 1
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* @QRTR_PORT_CTRL, align 4
  %46 = getelementptr inbounds %struct.sockaddr_qrtr, %struct.sockaddr_qrtr* %6, i32 0, i32 0
  store i32 %45, i32* %46, align 4
  %47 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 1
  store %struct.sockaddr_qrtr* %6, %struct.sockaddr_qrtr** %47, align 8
  %48 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %7, i32 0, i32 0
  store i32 12, i32* %48, align 8
  %49 = load %struct.qmi_handle*, %struct.qmi_handle** %3, align 8
  %50 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.qmi_handle*, %struct.qmi_handle** %3, align 8
  %53 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %67

56:                                               ; preds = %2
  %57 = load %struct.qmi_handle*, %struct.qmi_handle** %3, align 8
  %58 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @kernel_sendmsg(i64 %59, %struct.msghdr* %7, %struct.kvec* %8, i32 1, i32 24)
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %9, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pr_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %66

66:                                               ; preds = %63, %56
  br label %67

67:                                               ; preds = %66, %2
  %68 = load %struct.qmi_handle*, %struct.qmi_handle** %3, align 8
  %69 = getelementptr inbounds %struct.qmi_handle, %struct.qmi_handle* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memset(%struct.qrtr_ctrl_pkt*, i32, i32) #2

declare dso_local i8* @cpu_to_le32(i32) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @kernel_sendmsg(i64, %struct.msghdr*, %struct.kvec*, i32, i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
