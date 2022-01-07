; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8*, i8*, %struct.qmi_handle* }
%struct.qmi_handle = type { i32 }
%struct.sockaddr_qrtr = type { i32 }
%struct.sockaddr = type { i32 }

@init_net = common dso_local global i32 0, align 4
@AF_QIPCRTR = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@PF_QIPCRTR = common dso_local global i32 0, align 4
@qmi_data_ready = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.qmi_handle*, %struct.sockaddr_qrtr*)* @qmi_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @qmi_sock_create(%struct.qmi_handle* %0, %struct.sockaddr_qrtr* %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.qmi_handle*, align 8
  %5 = alloca %struct.sockaddr_qrtr*, align 8
  %6 = alloca %struct.socket*, align 8
  %7 = alloca i32, align 4
  store %struct.qmi_handle* %0, %struct.qmi_handle** %4, align 8
  store %struct.sockaddr_qrtr* %1, %struct.sockaddr_qrtr** %5, align 8
  %8 = load i32, i32* @AF_QIPCRTR, align 4
  %9 = load i32, i32* @SOCK_DGRAM, align 4
  %10 = load i32, i32* @PF_QIPCRTR, align 4
  %11 = call i32 @sock_create_kern(i32* @init_net, i32 %8, i32 %9, i32 %10, %struct.socket** %6)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.socket* @ERR_PTR(i32 %15)
  store %struct.socket* %16, %struct.socket** %3, align 8
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.socket*, %struct.socket** %6, align 8
  %19 = load %struct.sockaddr_qrtr*, %struct.sockaddr_qrtr** %5, align 8
  %20 = bitcast %struct.sockaddr_qrtr* %19 to %struct.sockaddr*
  %21 = call i32 @kernel_getsockname(%struct.socket* %18, %struct.sockaddr* %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = load %struct.socket*, %struct.socket** %6, align 8
  %26 = call i32 @sock_release(%struct.socket* %25)
  %27 = load i32, i32* %7, align 4
  %28 = call %struct.socket* @ERR_PTR(i32 %27)
  store %struct.socket* %28, %struct.socket** %3, align 8
  br label %46

29:                                               ; preds = %17
  %30 = load %struct.qmi_handle*, %struct.qmi_handle** %4, align 8
  %31 = load %struct.socket*, %struct.socket** %6, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store %struct.qmi_handle* %30, %struct.qmi_handle** %34, align 8
  %35 = load i8*, i8** @qmi_data_ready, align 8
  %36 = load %struct.socket*, %struct.socket** %6, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i8* %35, i8** %39, align 8
  %40 = load i8*, i8** @qmi_data_ready, align 8
  %41 = load %struct.socket*, %struct.socket** %6, align 8
  %42 = getelementptr inbounds %struct.socket, %struct.socket* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i8* %40, i8** %44, align 8
  %45 = load %struct.socket*, %struct.socket** %6, align 8
  store %struct.socket* %45, %struct.socket** %3, align 8
  br label %46

46:                                               ; preds = %29, %24, %14
  %47 = load %struct.socket*, %struct.socket** %3, align 8
  ret %struct.socket* %47
}

declare dso_local i32 @sock_create_kern(i32*, i32, i32, i32, %struct.socket**) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

declare dso_local i32 @kernel_getsockname(%struct.socket*, %struct.sockaddr*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
