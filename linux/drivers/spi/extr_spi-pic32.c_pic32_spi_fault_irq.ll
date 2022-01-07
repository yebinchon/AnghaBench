; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_fault_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pic32.c_pic32_spi_fault_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pic32_spi = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@STAT_RX_OV = common dso_local global i32 0, align 4
@STAT_TX_UR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"err_irq: fifo ov/ur-run\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STAT_FRM_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"err_irq: frame error\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"err_irq: no mesg\00", align 1
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pic32_spi_fault_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pic32_spi_fault_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pic32_spi*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.pic32_spi*
  store %struct.pic32_spi* %9, %struct.pic32_spi** %6, align 8
  %10 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %11 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 1
  %14 = call i32 @readl(i32* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @STAT_RX_OV, align 4
  %17 = load i32, i32* @STAT_TX_UR, align 4
  %18 = or i32 %16, %17
  %19 = and i32 %15, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %2
  %22 = load i32, i32* @STAT_RX_OV, align 4
  %23 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %24 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = call i32 @writel(i32 %22, i32* %26)
  %28 = load i32, i32* @STAT_TX_UR, align 4
  %29 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %30 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @writel(i32 %28, i32* %32)
  %34 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %35 = call i32 @pic32_err_stop(%struct.pic32_spi* %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %36, i32* %3, align 4
  br label %59

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @STAT_FRM_ERR, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %44 = call i32 @pic32_err_stop(%struct.pic32_spi* %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %45, i32* %3, align 4
  br label %59

46:                                               ; preds = %37
  %47 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %48 = getelementptr inbounds %struct.pic32_spi, %struct.pic32_spi* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %57, label %53

53:                                               ; preds = %46
  %54 = load %struct.pic32_spi*, %struct.pic32_spi** %6, align 8
  %55 = call i32 @pic32_err_stop(%struct.pic32_spi* %54, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %56 = load i32, i32* @IRQ_NONE, align 4
  store i32 %56, i32* %3, align 4
  br label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @IRQ_NONE, align 4
  store i32 %58, i32* %3, align 4
  br label %59

59:                                               ; preds = %57, %53, %42, %21
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @pic32_err_stop(%struct.pic32_spi*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
