; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-qcom-qspi.c_qcom_qspi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_qspi = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@MSTR_INT_STATUS = common dso_local global i64 0, align 8
@QSPI_WRITE = common dso_local global i64 0, align 8
@WR_FIFO_EMPTY = common dso_local global i32 0, align 4
@RESP_FIFO_RDY = common dso_local global i32 0, align 4
@QSPI_ERR_IRQS = common dso_local global i32 0, align 4
@RESP_FIFO_UNDERRUN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"IRQ error: FIFO underrun\0A\00", align 1
@WR_FIFO_OVERRUN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"IRQ error: FIFO overrun\0A\00", align 1
@HRESP_FROM_NOC_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"IRQ error: NOC response error\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@MSTR_INT_EN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @qcom_qspi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_qspi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.qcom_qspi*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.qcom_qspi*
  store %struct.qcom_qspi* %10, %struct.qcom_qspi** %6, align 8
  %11 = load i32, i32* @IRQ_NONE, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %13 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %17 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MSTR_INT_STATUS, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @readl(i64 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %24 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @MSTR_INT_STATUS, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @writel(i32 %22, i64 %27)
  %29 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %30 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @QSPI_WRITE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @WR_FIFO_EMPTY, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %42 = call i32 @pio_write(%struct.qcom_qspi* %41)
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %40, %35
  br label %53

44:                                               ; preds = %2
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RESP_FIFO_RDY, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %51 = call i32 @pio_read(%struct.qcom_qspi* %50)
  store i32 %51, i32* %7, align 4
  br label %52

52:                                               ; preds = %49, %44
  br label %53

53:                                               ; preds = %52, %43
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @QSPI_ERR_IRQS, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %53
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* @RESP_FIFO_UNDERRUN, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %58
  %64 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %65 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @dev_err(i32 %66, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %68

68:                                               ; preds = %63, %58
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @WR_FIFO_OVERRUN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %68
  %74 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %75 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_err(i32 %76, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %78

78:                                               ; preds = %73, %68
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @HRESP_FROM_NOC_ERR, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %78
  %84 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %85 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_err(i32 %86, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %88

88:                                               ; preds = %83, %78
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %88, %53
  %91 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %92 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %91, i32 0, i32 3
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %108, label %96

96:                                               ; preds = %90
  %97 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %98 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @MSTR_INT_EN, align 8
  %101 = add nsw i64 %99, %100
  %102 = call i32 @writel(i32 0, i64 %101)
  %103 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %104 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @dev_get_drvdata(i32 %105)
  %107 = call i32 @spi_finalize_current_transfer(i32 %106)
  br label %108

108:                                              ; preds = %96, %90
  %109 = load %struct.qcom_qspi*, %struct.qcom_qspi** %6, align 8
  %110 = getelementptr inbounds %struct.qcom_qspi, %struct.qcom_qspi* %109, i32 0, i32 0
  %111 = load i64, i64* %8, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load i32, i32* %7, align 4
  ret i32 %113
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pio_write(%struct.qcom_qspi*) #1

declare dso_local i32 @pio_read(%struct.qcom_qspi*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @spi_finalize_current_transfer(i32) #1

declare dso_local i32 @dev_get_drvdata(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
