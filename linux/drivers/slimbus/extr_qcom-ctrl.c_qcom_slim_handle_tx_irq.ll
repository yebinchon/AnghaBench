; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_slim_handle_tx_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ctrl.c_qcom_slim_handle_tx_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ctrl = type { i32, i64 }

@MGR_INT_TX_MSG_SENT = common dso_local global i32 0, align 4
@MGR_INT_CLR = common dso_local global i64 0, align 8
@MGR_INT_TX_NACKED_2 = common dso_local global i32 0, align 4
@MGR_STATUS = common dso_local global i64 0, align 8
@MGR_IE_STAT = common dso_local global i64 0, align 8
@FRM_STAT = common dso_local global i64 0, align 8
@FRM_CFG = common dso_local global i64 0, align 8
@FRM_INT_STAT = common dso_local global i64 0, align 8
@FRM_IE_STAT = common dso_local global i64 0, align 8
@INTF_STAT = common dso_local global i64 0, align 8
@INTF_INT_STAT = common dso_local global i64 0, align 8
@INTF_IE_STAT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [33 x i8] c"TX Nack MGR:int:0x%x, stat:0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"TX Nack MGR:ie:0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"TX Nack FRM:int:0x%x, stat:0x%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"TX Nack FRM:cfg:0x%x, ie:0x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"TX Nack INTF:intr:0x%x, stat:0x%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"TX Nack INTF:ie:0x%x\0A\00", align 1
@ENOTCONN = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ctrl*, i32)* @qcom_slim_handle_tx_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_handle_tx_irq(%struct.qcom_slim_ctrl* %0, i32 %1) #0 {
  %3 = alloca %struct.qcom_slim_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.qcom_slim_ctrl* %0, %struct.qcom_slim_ctrl** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @MGR_INT_TX_MSG_SENT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load i32, i32* @MGR_INT_TX_MSG_SENT, align 4
  %21 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %22 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MGR_INT_CLR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @writel_relaxed(i32 %20, i64 %25)
  br label %27

27:                                               ; preds = %19, %2
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @MGR_INT_TX_NACKED_2, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %130

32:                                               ; preds = %27
  %33 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %34 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @MGR_STATUS, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @readl_relaxed(i64 %37)
  store i32 %38, i32* %6, align 4
  %39 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %40 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @MGR_IE_STAT, align 8
  %43 = add nsw i64 %41, %42
  %44 = call i32 @readl_relaxed(i64 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @FRM_STAT, align 8
  %49 = add nsw i64 %47, %48
  %50 = call i32 @readl_relaxed(i64 %49)
  store i32 %50, i32* %8, align 4
  %51 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %52 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @FRM_CFG, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @readl_relaxed(i64 %55)
  store i32 %56, i32* %9, align 4
  %57 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %58 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @FRM_INT_STAT, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @readl_relaxed(i64 %61)
  store i32 %62, i32* %10, align 4
  %63 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %64 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @FRM_IE_STAT, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i32 @readl_relaxed(i64 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %70 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @INTF_STAT, align 8
  %73 = add nsw i64 %71, %72
  %74 = call i32 @readl_relaxed(i64 %73)
  store i32 %74, i32* %12, align 4
  %75 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %76 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @INTF_INT_STAT, align 8
  %79 = add nsw i64 %77, %78
  %80 = call i32 @readl_relaxed(i64 %79)
  store i32 %80, i32* %13, align 4
  %81 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %82 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @INTF_IE_STAT, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @readl_relaxed(i64 %85)
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* @MGR_INT_TX_NACKED_2, align 4
  %88 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %89 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @MGR_INT_CLR, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel_relaxed(i32 %87, i64 %92)
  %94 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %95 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* %4, align 4
  %98 = load i32, i32* %6, align 4
  %99 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %96, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %97, i32 %98)
  %100 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %101 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %102, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %106 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %8, align 4
  %110 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %107, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %108, i32 %109)
  %111 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %112 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* %11, align 4
  %116 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %113, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %118 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = load i32, i32* %12, align 4
  %122 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %119, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %120, i32 %121)
  %123 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %124 = getelementptr inbounds %struct.qcom_slim_ctrl, %struct.qcom_slim_ctrl* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %14, align 4
  %127 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %125, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %126)
  %128 = load i32, i32* @ENOTCONN, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %32, %27
  %131 = load %struct.qcom_slim_ctrl*, %struct.qcom_slim_ctrl** %3, align 8
  %132 = load i32, i32* %5, align 4
  %133 = call i32 @slim_ack_txn(%struct.qcom_slim_ctrl* %131, i32 %132)
  %134 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %134
}

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @slim_ack_txn(%struct.qcom_slim_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
