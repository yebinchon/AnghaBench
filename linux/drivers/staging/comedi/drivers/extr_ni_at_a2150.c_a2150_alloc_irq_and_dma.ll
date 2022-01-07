; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_alloc_irq_and_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_alloc_irq_and_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i32, %struct.a2150_private* }
%struct.a2150_private = type { i32, i32 }
%struct.comedi_devconfig = type { i32* }

@a2150_interrupt = common dso_local global i32 0, align 4
@A2150_DMA_BUFFER_SIZE = common dso_local global i32 0, align 4
@COMEDI_ISADMA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_devconfig*)* @a2150_alloc_irq_and_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @a2150_alloc_irq_and_dma(%struct.comedi_device* %0, %struct.comedi_devconfig* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_devconfig*, align 8
  %5 = alloca %struct.a2150_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_devconfig* %1, %struct.comedi_devconfig** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.a2150_private*, %struct.a2150_private** %9, align 8
  store %struct.a2150_private* %10, %struct.a2150_private** %5, align 8
  %11 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.comedi_devconfig*, %struct.comedi_devconfig** %4, align 8
  %17 = getelementptr inbounds %struct.comedi_devconfig, %struct.comedi_devconfig* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 2
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ugt i32 %21, 15
  br i1 %22, label %36, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* %7, align 4
  %25 = icmp ugt i32 %24, 7
  br i1 %25, label %36, label %26

26:                                               ; preds = %23
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 1, %27
  %29 = and i32 %28, 57080
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 1, %32
  %34 = and i32 %33, 239
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26, %23, %2
  br label %75

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @a2150_interrupt, align 4
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %44 = call i64 @request_irq(i32 %38, i32 %39, i32 0, i32 %42, %struct.comedi_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %37
  br label %75

47:                                               ; preds = %37
  %48 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @A2150_DMA_BUFFER_SIZE, align 4
  %52 = load i32, i32* @COMEDI_ISADMA_READ, align 4
  %53 = call i32 @comedi_isadma_alloc(%struct.comedi_device* %48, i32 1, i32 %49, i32 %50, i32 %51, i32 %52)
  %54 = load %struct.a2150_private*, %struct.a2150_private** %5, align 8
  %55 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  %56 = load %struct.a2150_private*, %struct.a2150_private** %5, align 8
  %57 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %47
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %63 = call i32 @free_irq(i32 %61, %struct.comedi_device* %62)
  br label %75

64:                                               ; preds = %47
  %65 = load i32, i32* %6, align 4
  %66 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %67 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @IRQ_LVL_BITS(i32 %68)
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @DMA_CHAN_BITS(i32 %70)
  %72 = or i32 %69, %71
  %73 = load %struct.a2150_private*, %struct.a2150_private** %5, align 8
  %74 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 4
  br label %75

75:                                               ; preds = %36, %46, %64, %60
  ret void
}

declare dso_local i64 @request_irq(i32, i32, i32, i32, %struct.comedi_device*) #1

declare dso_local i32 @comedi_isadma_alloc(%struct.comedi_device*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @free_irq(i32, %struct.comedi_device*) #1

declare dso_local i32 @IRQ_LVL_BITS(i32) #1

declare dso_local i32 @DMA_CHAN_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
