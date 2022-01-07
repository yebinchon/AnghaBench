; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_recv_ctrl_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/qcom/extr_qmi_interface.c_qmi_recv_ctrl_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qmi_handle = type { i32 }
%struct.qrtr_ctrl_pkt = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"ignoring short control packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qmi_handle*, i8*, i64)* @qmi_recv_ctrl_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qmi_recv_ctrl_pkt(%struct.qmi_handle* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.qmi_handle*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.qrtr_ctrl_pkt*, align 8
  store %struct.qmi_handle* %0, %struct.qmi_handle** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.qrtr_ctrl_pkt*
  store %struct.qrtr_ctrl_pkt* %9, %struct.qrtr_ctrl_pkt** %7, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ult i64 %10, 28
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %76

14:                                               ; preds = %3
  %15 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  switch i32 %18, label %76 [
    i32 131, label %19
    i32 128, label %27
    i32 129, label %50
    i32 130, label %63
  ]

19:                                               ; preds = %14
  %20 = load %struct.qmi_handle*, %struct.qmi_handle** %4, align 8
  %21 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %22 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le32_to_cpu(i32 %24)
  %26 = call i32 @qmi_recv_bye(%struct.qmi_handle* %20, i32 %25)
  br label %76

27:                                               ; preds = %14
  %28 = load %struct.qmi_handle*, %struct.qmi_handle** %4, align 8
  %29 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %30 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le32_to_cpu(i32 %32)
  %34 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %35 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %40 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @le32_to_cpu(i32 %42)
  %44 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %45 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @le32_to_cpu(i32 %47)
  %49 = call i32 @qmi_recv_new_server(%struct.qmi_handle* %28, i32 %33, i32 %38, i32 %43, i32 %48)
  br label %76

50:                                               ; preds = %14
  %51 = load %struct.qmi_handle*, %struct.qmi_handle** %4, align 8
  %52 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %53 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  %57 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %58 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @le32_to_cpu(i32 %60)
  %62 = call i32 @qmi_recv_del_server(%struct.qmi_handle* %51, i32 %56, i32 %61)
  br label %76

63:                                               ; preds = %14
  %64 = load %struct.qmi_handle*, %struct.qmi_handle** %4, align 8
  %65 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %66 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @le32_to_cpu(i32 %68)
  %70 = load %struct.qrtr_ctrl_pkt*, %struct.qrtr_ctrl_pkt** %7, align 8
  %71 = getelementptr inbounds %struct.qrtr_ctrl_pkt, %struct.qrtr_ctrl_pkt* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @le32_to_cpu(i32 %73)
  %75 = call i32 @qmi_recv_del_client(%struct.qmi_handle* %64, i32 %69, i32 %74)
  br label %76

76:                                               ; preds = %12, %14, %63, %50, %27, %19
  ret void
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @qmi_recv_bye(%struct.qmi_handle*, i32) #1

declare dso_local i32 @qmi_recv_new_server(%struct.qmi_handle*, i32, i32, i32, i32) #1

declare dso_local i32 @qmi_recv_del_server(%struct.qmi_handle*, i32, i32) #1

declare dso_local i32 @qmi_recv_del_client(%struct.qmi_handle*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
