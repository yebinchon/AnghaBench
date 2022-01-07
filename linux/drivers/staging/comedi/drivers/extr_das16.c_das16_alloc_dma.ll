; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_alloc_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_alloc_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das16_private_struct* }
%struct.das16_private_struct = type { i32, i32 }

@das16_timer_interrupt = common dso_local global i32 0, align 4
@DAS16_DMA_SIZE = common dso_local global i32 0, align 4
@COMEDI_ISADMA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32)* @das16_alloc_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das16_alloc_dma(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.das16_private_struct*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 0
  %8 = load %struct.das16_private_struct*, %struct.das16_private_struct** %7, align 8
  store %struct.das16_private_struct* %8, %struct.das16_private_struct** %5, align 8
  %9 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %10 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %9, i32 0, i32 1
  %11 = load i32, i32* @das16_timer_interrupt, align 4
  %12 = call i32 @timer_setup(i32* %10, i32 %11, i32 0)
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 1
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 3
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  br label %28

19:                                               ; preds = %15, %2
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @DAS16_DMA_SIZE, align 4
  %24 = load i32, i32* @COMEDI_ISADMA_READ, align 4
  %25 = call i32 @comedi_isadma_alloc(%struct.comedi_device* %20, i32 2, i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %27 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %19, %18
  ret void
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @comedi_isadma_alloc(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
