; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_native_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_qcom_glink_native.c_qcom_glink_native_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_glink = type { i32, i32 }
%struct.glink_msg = type { i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"unhandled rx cmd: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qcom_glink_native_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_glink_native_intr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.qcom_glink*, align 8
  %6 = alloca %struct.glink_msg, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.qcom_glink*
  store %struct.qcom_glink* %13, %struct.qcom_glink** %5, align 8
  store i32 0, i32* %11, align 4
  br label %14

14:                                               ; preds = %106, %2
  %15 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %16 = call i32 @qcom_glink_rx_avail(%struct.qcom_glink* %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = zext i32 %17 to i64
  %19 = icmp ult i64 %18, 12
  br i1 %19, label %20, label %21

20:                                               ; preds = %14
  br label %107

21:                                               ; preds = %14
  %22 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %23 = call i32 @qcom_glink_rx_peak(%struct.qcom_glink* %22, %struct.glink_msg* %6, i32 0, i32 12)
  %24 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %6, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %6, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @le16_to_cpu(i32 %28)
  store i32 %29, i32* %7, align 4
  %30 = getelementptr inbounds %struct.glink_msg, %struct.glink_msg* %6, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  switch i32 %33, label %94 [
    i32 129, label %34
    i32 128, label %34
    i32 141, label %34
    i32 140, label %34
    i32 133, label %34
    i32 137, label %37
    i32 138, label %44
    i32 131, label %48
    i32 130, label %48
    i32 136, label %52
    i32 139, label %64
    i32 135, label %70
    i32 134, label %78
    i32 132, label %86
  ]

34:                                               ; preds = %21, %21, %21, %21, %21
  %35 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %36 = call i32 @qcom_glink_rx_defer(%struct.qcom_glink* %35, i32 0)
  store i32 %36, i32* %11, align 4
  br label %102

37:                                               ; preds = %21
  %38 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @qcom_glink_rx_open_ack(%struct.qcom_glink* %38, i32 %39)
  store i32 %40, i32* %11, align 4
  %41 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %42 = call i32 @ALIGN(i32 12, i32 8)
  %43 = call i32 @qcom_glink_rx_advance(%struct.qcom_glink* %41, i32 %42)
  br label %102

44:                                               ; preds = %21
  %45 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @qcom_glink_rx_defer(%struct.qcom_glink* %45, i32 %46)
  store i32 %47, i32* %11, align 4
  br label %102

48:                                               ; preds = %21, %21
  %49 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @qcom_glink_rx_data(%struct.qcom_glink* %49, i32 %50)
  store i32 %51, i32* %11, align 4
  br label %102

52:                                               ; preds = %21
  %53 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %54 = call i32 @ALIGN(i32 12, i32 8)
  %55 = call i32 @qcom_glink_rx_advance(%struct.qcom_glink* %53, i32 %54)
  %56 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %57 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @mbox_send_message(i32 %58, i32* null)
  %60 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %61 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @mbox_client_txdone(i32 %62, i32 0)
  br label %102

64:                                               ; preds = %21
  %65 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @qcom_glink_handle_intent(%struct.qcom_glink* %65, i32 %66, i32 %67, i32 %68)
  br label %102

70:                                               ; preds = %21
  %71 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @qcom_glink_handle_rx_done(%struct.qcom_glink* %71, i32 %72, i32 %73, i32 0)
  %75 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %76 = call i32 @ALIGN(i32 12, i32 8)
  %77 = call i32 @qcom_glink_rx_advance(%struct.qcom_glink* %75, i32 %76)
  br label %102

78:                                               ; preds = %21
  %79 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call i32 @qcom_glink_handle_rx_done(%struct.qcom_glink* %79, i32 %80, i32 %81, i32 1)
  %83 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %84 = call i32 @ALIGN(i32 12, i32 8)
  %85 = call i32 @qcom_glink_rx_advance(%struct.qcom_glink* %83, i32 %84)
  br label %102

86:                                               ; preds = %21
  %87 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @qcom_glink_handle_intent_req_ack(%struct.qcom_glink* %87, i32 %88, i32 %89)
  %91 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %92 = call i32 @ALIGN(i32 12, i32 8)
  %93 = call i32 @qcom_glink_rx_advance(%struct.qcom_glink* %91, i32 %92)
  br label %102

94:                                               ; preds = %21
  %95 = load %struct.qcom_glink*, %struct.qcom_glink** %5, align 8
  %96 = getelementptr inbounds %struct.qcom_glink, %struct.qcom_glink* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* %10, align 4
  %99 = call i32 @dev_err(i32 %97, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %98)
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %11, align 4
  br label %102

102:                                              ; preds = %94, %86, %78, %70, %64, %52, %48, %44, %37, %34
  %103 = load i32, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  br label %107

106:                                              ; preds = %102
  br label %14

107:                                              ; preds = %105, %20
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %108
}

declare dso_local i32 @qcom_glink_rx_avail(%struct.qcom_glink*) #1

declare dso_local i32 @qcom_glink_rx_peak(%struct.qcom_glink*, %struct.glink_msg*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @qcom_glink_rx_defer(%struct.qcom_glink*, i32) #1

declare dso_local i32 @qcom_glink_rx_open_ack(%struct.qcom_glink*, i32) #1

declare dso_local i32 @qcom_glink_rx_advance(%struct.qcom_glink*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @qcom_glink_rx_data(%struct.qcom_glink*, i32) #1

declare dso_local i32 @mbox_send_message(i32, i32*) #1

declare dso_local i32 @mbox_client_txdone(i32, i32) #1

declare dso_local i32 @qcom_glink_handle_intent(%struct.qcom_glink*, i32, i32, i32) #1

declare dso_local i32 @qcom_glink_handle_rx_done(%struct.qcom_glink*, i32, i32, i32) #1

declare dso_local i32 @qcom_glink_handle_intent_req_ack(%struct.qcom_glink*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
