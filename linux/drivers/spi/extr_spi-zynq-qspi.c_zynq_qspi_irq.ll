; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-zynq-qspi.c_zynq_qspi_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zynq_qspi = type { i32, i32, i64 }

@ZYNQ_QSPI_STATUS_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IXR_TXNFULL_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IXR_RXNEMTY_MASK = common dso_local global i32 0, align 4
@ZYNQ_QSPI_RX_THRESHOLD = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IDIS_OFFSET = common dso_local global i32 0, align 4
@ZYNQ_QSPI_IXR_RXTX_MASK = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @zynq_qspi_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zynq_qspi_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.zynq_qspi*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.zynq_qspi*
  store %struct.zynq_qspi* %10, %struct.zynq_qspi** %8, align 8
  %11 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %12 = load i32, i32* @ZYNQ_QSPI_STATUS_OFFSET, align 4
  %13 = call i32 @zynq_qspi_read(%struct.zynq_qspi* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %15 = load i32, i32* @ZYNQ_QSPI_STATUS_OFFSET, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %14, i32 %15, i32 %16)
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @ZYNQ_QSPI_IXR_TXNFULL_MASK, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @ZYNQ_QSPI_IXR_RXNEMTY_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %63

27:                                               ; preds = %22, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ZYNQ_QSPI_IXR_TXNFULL_MASK, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  store i32 %34, i32* %7, align 4
  %35 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %36 = load i32, i32* @ZYNQ_QSPI_RX_THRESHOLD, align 4
  %37 = call i32 @zynq_qspi_read_op(%struct.zynq_qspi* %35, i32 %36)
  %38 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %39 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %27
  %43 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %44 = load i32, i32* @ZYNQ_QSPI_RX_THRESHOLD, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @zynq_qspi_write_op(%struct.zynq_qspi* %43, i32 %44, i32 %45)
  br label %61

47:                                               ; preds = %27
  %48 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %49 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %47
  %53 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %54 = load i32, i32* @ZYNQ_QSPI_IDIS_OFFSET, align 4
  %55 = load i32, i32* @ZYNQ_QSPI_IXR_RXTX_MASK, align 4
  %56 = call i32 @zynq_qspi_write(%struct.zynq_qspi* %53, i32 %54, i32 %55)
  %57 = load %struct.zynq_qspi*, %struct.zynq_qspi** %8, align 8
  %58 = getelementptr inbounds %struct.zynq_qspi, %struct.zynq_qspi* %57, i32 0, i32 0
  %59 = call i32 @complete(i32* %58)
  br label %60

60:                                               ; preds = %52, %47
  br label %61

61:                                               ; preds = %60, %42
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %65

63:                                               ; preds = %22
  %64 = load i32, i32* @IRQ_NONE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %61
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @zynq_qspi_read(%struct.zynq_qspi*, i32) #1

declare dso_local i32 @zynq_qspi_write(%struct.zynq_qspi*, i32, i32) #1

declare dso_local i32 @zynq_qspi_read_op(%struct.zynq_qspi*, i32) #1

declare dso_local i32 @zynq_qspi_write_op(%struct.zynq_qspi*, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
