; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.a2150_private* }
%struct.a2150_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }
%struct.comedi_subdevice = type { i32 }

@DMA_INTR_EN_BIT = common dso_local global i32 0, align 4
@DMA_EN_BIT = common dso_local global i32 0, align 4
@IRQ_DMA_CNTRL_REG = common dso_local global i64 0, align 8
@FIFO_RESET_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @a2150_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.a2150_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.a2150_private*, %struct.a2150_private** %9, align 8
  store %struct.a2150_private* %10, %struct.a2150_private** %5, align 8
  %11 = load %struct.a2150_private*, %struct.a2150_private** %5, align 8
  %12 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %11, i32 0, i32 1
  %13 = load %struct.comedi_isadma*, %struct.comedi_isadma** %12, align 8
  store %struct.comedi_isadma* %13, %struct.comedi_isadma** %6, align 8
  %14 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %15 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %14, i32 0, i32 0
  %16 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %15, align 8
  %17 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %16, i64 0
  store %struct.comedi_isadma_desc* %17, %struct.comedi_isadma_desc** %7, align 8
  %18 = load i32, i32* @DMA_INTR_EN_BIT, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* @DMA_EN_BIT, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %19, %21
  %23 = load %struct.a2150_private*, %struct.a2150_private** %5, align 8
  %24 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 8
  %27 = load %struct.a2150_private*, %struct.a2150_private** %5, align 8
  %28 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @IRQ_DMA_CNTRL_REG, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @outw(i32 %29, i64 %34)
  %36 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @comedi_isadma_disable(i32 %38)
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @FIFO_RESET_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outw(i32 0, i64 %44)
  ret i32 0
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @comedi_isadma_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
