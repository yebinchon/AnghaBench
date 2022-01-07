; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_setup_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_ai_setup_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.das1800_private* }
%struct.das1800_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { %struct.comedi_isadma_desc*, i64 }
%struct.comedi_isadma_desc = type { i32, i32 }
%struct.comedi_subdevice = type { i32 }

@DMA_ENABLED = common dso_local global i32 0, align 4
@DMA_DUAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @das1800_ai_setup_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_ai_setup_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das1800_private*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca %struct.comedi_isadma_desc*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.das1800_private*, %struct.das1800_private** %10, align 8
  store %struct.das1800_private* %11, %struct.das1800_private** %5, align 8
  %12 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %13 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %12, i32 0, i32 1
  %14 = load %struct.comedi_isadma*, %struct.comedi_isadma** %13, align 8
  store %struct.comedi_isadma* %14, %struct.comedi_isadma** %6, align 8
  %15 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %16 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DMA_ENABLED, align 4
  %19 = and i32 %17, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %56

22:                                               ; preds = %2
  %23 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %24 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %23, i32 0, i32 1
  store i64 0, i64* %24, align 8
  %25 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %25, i32 0, i32 0
  %27 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %26, align 8
  %28 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %27, i64 0
  store %struct.comedi_isadma_desc* %28, %struct.comedi_isadma_desc** %7, align 8
  %29 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %31 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %32 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @das1800_ai_transfer_size(%struct.comedi_device* %29, %struct.comedi_subdevice* %30, i32 %33, i32 300000000)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %37 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %39 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %38)
  %40 = load %struct.das1800_private*, %struct.das1800_private** %5, align 8
  %41 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @DMA_DUAL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %56

46:                                               ; preds = %22
  %47 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %48 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %47, i32 0, i32 0
  %49 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %48, align 8
  %50 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %49, i64 1
  store %struct.comedi_isadma_desc* %50, %struct.comedi_isadma_desc** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %53 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %7, align 8
  %55 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %54)
  br label %56

56:                                               ; preds = %21, %46, %22
  ret void
}

declare dso_local i32 @das1800_ai_transfer_size(%struct.comedi_device*, %struct.comedi_subdevice*, i32, i32) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
