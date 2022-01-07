; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_slim_handle_rx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_slim_handle_rx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ctrl = type { i32, i32, i64, i32, i32 }

@MGR_RX_MSG = common dso_local global i64 0, align 8
@SLIM_MSG_MT_CORE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"dropping RX:0x%x due to RX full\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"unsupported MC,%x MT:%x\0A\00", align 1
@MGR_INT_RX_MSG_RCVD = common dso_local global i32 0, align 4
@MGR_INT_CLR = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ctrl*, i32)* @qcom_slim_handle_rx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_handle_rx_irq(%struct.qcom_slim_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_slim_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca [10 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.qcom_slim_ctrl* %0, %struct.qcom_slim_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %11 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MGR_RX_MSG, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @readl_relaxed(i64 %15)
  %17 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  store i32 %16, i32* %17, align 16
  %18 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %19 = load i32, i32* %18, align 16
  %20 = call i64 @SLIM_HEADER_GET_MT(i32 %19)
  store i64 %20, i64* %9, align 8
  %21 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %22 = load i32, i32* %21, align 16
  %23 = call i64 @SLIM_HEADER_GET_RL(i32 %22)
  store i64 %23, i64* %10, align 8
  %24 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %25 = load i32, i32* %24, align 16
  %26 = ashr i32 %25, 8
  %27 = call i64 @SLIM_HEADER_GET_MC(i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = load i64, i64* @SLIM_MSG_MT_CORE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %2
  %32 = load i64, i64* %8, align 8
  %33 = icmp eq i64 %32, 128
  br i1 %33, label %34, label %53

34:                                               ; preds = %31
  %35 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %36 = call i64 @slim_alloc_rxbuf(%struct.qcom_slim_ctrl* %35)
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %5, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %48, label %40

40:                                               ; preds = %34
  %41 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %42 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %45 = load i32, i32* %44, align 16
  %46 = sext i32 %45 to i64
  %47 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i64 %46)
  br label %91

48:                                               ; preds = %34
  %49 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  %50 = load i32, i32* %49, align 16
  %51 = load i32*, i32** %5, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  store i32 %50, i32* %52, align 4
  br label %55

53:                                               ; preds = %31, %2
  %54 = getelementptr inbounds [10 x i32], [10 x i32]* %6, i64 0, i64 0
  store i32* %54, i32** %5, align 8
  br label %55

55:                                               ; preds = %53, %48
  %56 = load i32*, i32** %5, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  %58 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %59 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MGR_RX_MSG, align 8
  %62 = add nsw i64 %60, %61
  %63 = add nsw i64 %62, 4
  %64 = load i64, i64* %10, align 8
  %65 = call i32 @DIV_ROUND_UP(i64 %64, i32 4)
  %66 = call i32 @__ioread32_copy(i32* %57, i64 %63, i32 %65)
  %67 = load i64, i64* %8, align 8
  switch i64 %67, label %83 [
    i64 128, label %68
    i64 130, label %69
    i64 129, label %69
  ]

68:                                               ; preds = %55
  store i32 1, i32* %7, align 4
  br label %90

69:                                               ; preds = %55, %55
  %70 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %71 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %70, i32 0, i32 4
  %72 = load i32*, i32** %5, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  %74 = bitcast i32* %73 to i64*
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 24
  %78 = sext i32 %77 to i64
  %79 = load i64, i64* %10, align 8
  %80 = sub nsw i64 %79, 4
  %81 = trunc i64 %80 to i32
  %82 = call i32 @slim_msg_response(i32* %71, i64* %74, i64 %78, i32 %81)
  br label %90

83:                                               ; preds = %55
  %84 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %85 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 (i32, i8*, i64, ...) @dev_err(i32 %86, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %87, i64 %88)
  br label %90

90:                                               ; preds = %83, %69, %68
  br label %91

91:                                               ; preds = %90, %40
  %92 = load i32, i32* @MGR_INT_RX_MSG_RCVD, align 4
  %93 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %94 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @MGR_INT_CLR, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @writel(i32 %92, i64 %97)
  %99 = load i32, i32* %7, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  %102 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %103 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %106 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %105, i32 0, i32 0
  %107 = call i32 @queue_work(i32 %104, i32* %106)
  br label %108

108:                                              ; preds = %101, %91
  %109 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %109
}

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i64 @SLIM_HEADER_GET_MT(i32) #1

declare dso_local i64 @SLIM_HEADER_GET_RL(i32) #1

declare dso_local i64 @SLIM_HEADER_GET_MC(i32) #1

declare dso_local i64 @slim_alloc_rxbuf(%struct.qcom_slim_ctrl*) #1

declare dso_local i32 @dev_err(i32, i8*, i64, ...) #1

declare dso_local i32 @__ioread32_copy(i32*, i64, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @slim_msg_response(i32*, i64*, i64, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
