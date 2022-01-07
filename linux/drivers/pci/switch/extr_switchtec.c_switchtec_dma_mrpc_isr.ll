; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_dma_mrpc_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/switch/extr_switchtec.c_switchtec_dma_mrpc_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switchtec_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@SWITCHTEC_EVENT_CLEAR = common dso_local global i32 0, align 4
@SWITCHTEC_EVENT_EN_IRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @switchtec_dma_mrpc_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @switchtec_dma_mrpc_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.switchtec_dev*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.switchtec_dev*
  store %struct.switchtec_dev* %8, %struct.switchtec_dev** %5, align 8
  %9 = load i32, i32* @IRQ_NONE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @SWITCHTEC_EVENT_CLEAR, align 4
  %11 = load i32, i32* @SWITCHTEC_EVENT_EN_IRQ, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.switchtec_dev*, %struct.switchtec_dev** %5, align 8
  %14 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i32 @iowrite32(i32 %12, i32* %16)
  %18 = load %struct.switchtec_dev*, %struct.switchtec_dev** %5, align 8
  %19 = getelementptr inbounds %struct.switchtec_dev, %struct.switchtec_dev* %18, i32 0, i32 0
  %20 = call i32 @schedule_work(i32* %19)
  %21 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local i32 @iowrite32(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
