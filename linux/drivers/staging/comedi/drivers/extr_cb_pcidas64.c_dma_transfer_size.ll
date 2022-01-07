; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_dma_transfer_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_dma_transfer_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcidas64_private*, %struct.pcidas64_board* }
%struct.pcidas64_private = type { i32 }
%struct.pcidas64_board = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @dma_transfer_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dma_transfer_size(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pcidas64_board*, align 8
  %4 = alloca %struct.pcidas64_private*, align 8
  %5 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.pcidas64_board*, %struct.pcidas64_board** %7, align 8
  store %struct.pcidas64_board* %8, %struct.pcidas64_board** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.pcidas64_private*, %struct.pcidas64_private** %10, align 8
  store %struct.pcidas64_private* %11, %struct.pcidas64_private** %4, align 8
  %12 = load %struct.pcidas64_private*, %struct.pcidas64_private** %4, align 8
  %13 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pcidas64_board*, %struct.pcidas64_board** %3, align 8
  %16 = getelementptr inbounds %struct.pcidas64_board, %struct.pcidas64_board* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul i32 %14, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %24 = sext i32 %23 to i64
  %25 = udiv i64 %24, 4
  %26 = icmp ugt i64 %22, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %1
  %28 = load i32, i32* @DMA_BUFFER_SIZE, align 4
  %29 = sext i32 %28 to i64
  %30 = udiv i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %27, %1
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
