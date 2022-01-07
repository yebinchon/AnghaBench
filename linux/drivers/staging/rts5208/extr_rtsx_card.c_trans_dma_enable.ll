; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_trans_dma_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_card.c_trans_dma_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }

@DMA_1024 = common dso_local global i32 0, align 4
@DMA_512 = common dso_local global i32 0, align 4
@WRITE_REG_CMD = common dso_local global i32 0, align 4
@IRQSTAT0 = common dso_local global i32 0, align 4
@DMA_DONE_INT = common dso_local global i32 0, align 4
@DMATC3 = common dso_local global i32 0, align 4
@DMATC2 = common dso_local global i32 0, align 4
@DMATC1 = common dso_local global i32 0, align 4
@DMATC0 = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@DMACTL = common dso_local global i32 0, align 4
@DMA_PACK_SIZE_MASK = common dso_local global i32 0, align 4
@DMA_DIR_FROM_CARD = common dso_local global i32 0, align 4
@DMA_EN = common dso_local global i32 0, align 4
@DMA_DIR_TO_CARD = common dso_local global i32 0, align 4
@CARD_DATA_SOURCE = common dso_local global i32 0, align 4
@RING_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trans_dma_enable(i32 %0, %struct.rtsx_chip* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtsx_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @DMA_1024, align 4
  %11 = icmp sgt i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @DMA_512, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %12, %4
  %15 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %16 = load i32, i32* @WRITE_REG_CMD, align 4
  %17 = load i32, i32* @IRQSTAT0, align 4
  %18 = load i32, i32* @DMA_DONE_INT, align 4
  %19 = load i32, i32* @DMA_DONE_INT, align 4
  %20 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %15, i32 %16, i32 %17, i32 %18, i32 %19)
  %21 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %22 = load i32, i32* @WRITE_REG_CMD, align 4
  %23 = load i32, i32* @DMATC3, align 4
  %24 = load i32, i32* %7, align 4
  %25 = ashr i32 %24, 24
  %26 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %21, i32 %22, i32 %23, i32 255, i32 %25)
  %27 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %28 = load i32, i32* @WRITE_REG_CMD, align 4
  %29 = load i32, i32* @DMATC2, align 4
  %30 = load i32, i32* %7, align 4
  %31 = ashr i32 %30, 16
  %32 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %27, i32 %28, i32 %29, i32 255, i32 %31)
  %33 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %34 = load i32, i32* @WRITE_REG_CMD, align 4
  %35 = load i32, i32* @DMATC1, align 4
  %36 = load i32, i32* %7, align 4
  %37 = ashr i32 %36, 8
  %38 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %33, i32 %34, i32 %35, i32 255, i32 %37)
  %39 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %40 = load i32, i32* @WRITE_REG_CMD, align 4
  %41 = load i32, i32* @DMATC0, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %39, i32 %40, i32 %41, i32 255, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %14
  %48 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %49 = load i32, i32* @WRITE_REG_CMD, align 4
  %50 = load i32, i32* @DMACTL, align 4
  %51 = load i32, i32* @DMA_PACK_SIZE_MASK, align 4
  %52 = or i32 3, %51
  %53 = load i32, i32* @DMA_DIR_FROM_CARD, align 4
  %54 = load i32, i32* @DMA_EN, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* %8, align 4
  %57 = or i32 %55, %56
  %58 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %48, i32 %49, i32 %50, i32 %52, i32 %57)
  br label %71

59:                                               ; preds = %14
  %60 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %61 = load i32, i32* @WRITE_REG_CMD, align 4
  %62 = load i32, i32* @DMACTL, align 4
  %63 = load i32, i32* @DMA_PACK_SIZE_MASK, align 4
  %64 = or i32 3, %63
  %65 = load i32, i32* @DMA_DIR_TO_CARD, align 4
  %66 = load i32, i32* @DMA_EN, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %60, i32 %61, i32 %62, i32 %64, i32 %69)
  br label %71

71:                                               ; preds = %59, %47
  %72 = load %struct.rtsx_chip*, %struct.rtsx_chip** %6, align 8
  %73 = load i32, i32* @WRITE_REG_CMD, align 4
  %74 = load i32, i32* @CARD_DATA_SOURCE, align 4
  %75 = load i32, i32* @RING_BUFFER, align 4
  %76 = call i32 @rtsx_add_cmd(%struct.rtsx_chip* %72, i32 %73, i32 %74, i32 1, i32 %75)
  ret void
}

declare dso_local i32 @rtsx_add_cmd(%struct.rtsx_chip*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
