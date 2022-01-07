; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_do_interrupt_dma_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-pl022.c_do_interrupt_dma_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pl022 = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@ENABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@SSP_IMSC_MASK_RXIM = common dso_local global i32 0, align 4
@SSP_CHIP_SELECT = common dso_local global i32 0, align 4
@STATE_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"configuration of DMA failed, fall back to interrupt mode\0A\00", align 1
@DISABLE_ALL_INTERRUPTS = common dso_local global i32 0, align 4
@SSP_CR1_MASK_SSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pl022*)* @do_interrupt_dma_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_interrupt_dma_transfer(%struct.pl022* %0) #0 {
  %2 = alloca %struct.pl022*, align 8
  %3 = alloca i32, align 4
  store %struct.pl022* %0, %struct.pl022** %2, align 8
  %4 = load i32, i32* @ENABLE_ALL_INTERRUPTS, align 4
  %5 = load i32, i32* @SSP_IMSC_MASK_RXIM, align 4
  %6 = xor i32 %5, -1
  %7 = and i32 %4, %6
  store i32 %7, i32* %3, align 4
  %8 = load %struct.pl022*, %struct.pl022** %2, align 8
  %9 = getelementptr inbounds %struct.pl022, %struct.pl022* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load %struct.pl022*, %struct.pl022** %2, align 8
  %14 = load i32, i32* @SSP_CHIP_SELECT, align 4
  %15 = call i32 @pl022_cs_control(%struct.pl022* %13, i32 %14)
  br label %16

16:                                               ; preds = %12, %1
  %17 = load %struct.pl022*, %struct.pl022** %2, align 8
  %18 = load %struct.pl022*, %struct.pl022** %2, align 8
  %19 = getelementptr inbounds %struct.pl022, %struct.pl022* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @set_up_next_transfer(%struct.pl022* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %16
  %24 = load i32, i32* @STATE_ERROR, align 4
  %25 = load %struct.pl022*, %struct.pl022** %2, align 8
  %26 = getelementptr inbounds %struct.pl022, %struct.pl022* %25, i32 0, i32 3
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  store i32 %24, i32* %28, align 4
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  %31 = load %struct.pl022*, %struct.pl022** %2, align 8
  %32 = getelementptr inbounds %struct.pl022, %struct.pl022* %31, i32 0, i32 3
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 4
  %35 = load %struct.pl022*, %struct.pl022** %2, align 8
  %36 = call i32 @giveback(%struct.pl022* %35)
  br label %76

37:                                               ; preds = %16
  %38 = load %struct.pl022*, %struct.pl022** %2, align 8
  %39 = getelementptr inbounds %struct.pl022, %struct.pl022* %38, i32 0, i32 2
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = load %struct.pl022*, %struct.pl022** %2, align 8
  %46 = call i64 @configure_dma(%struct.pl022* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %44
  %49 = load %struct.pl022*, %struct.pl022** %2, align 8
  %50 = getelementptr inbounds %struct.pl022, %struct.pl022* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = call i32 @dev_dbg(i32* %52, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @DISABLE_ALL_INTERRUPTS, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %37
  br label %57

57:                                               ; preds = %56, %48
  %58 = load %struct.pl022*, %struct.pl022** %2, align 8
  %59 = getelementptr inbounds %struct.pl022, %struct.pl022* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @SSP_CR1(i32 %60)
  %62 = call i32 @readw(i32 %61)
  %63 = load i32, i32* @SSP_CR1_MASK_SSE, align 4
  %64 = or i32 %62, %63
  %65 = load %struct.pl022*, %struct.pl022** %2, align 8
  %66 = getelementptr inbounds %struct.pl022, %struct.pl022* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @SSP_CR1(i32 %67)
  %69 = call i32 @writew(i32 %64, i32 %68)
  %70 = load i32, i32* %3, align 4
  %71 = load %struct.pl022*, %struct.pl022** %2, align 8
  %72 = getelementptr inbounds %struct.pl022, %struct.pl022* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @SSP_IMSC(i32 %73)
  %75 = call i32 @writew(i32 %70, i32 %74)
  br label %76

76:                                               ; preds = %57, %23
  ret void
}

declare dso_local i32 @pl022_cs_control(%struct.pl022*, i32) #1

declare dso_local i64 @set_up_next_transfer(%struct.pl022*, i32) #1

declare dso_local i32 @giveback(%struct.pl022*) #1

declare dso_local i64 @configure_dma(%struct.pl022*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @SSP_CR1(i32) #1

declare dso_local i32 @SSP_IMSC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
