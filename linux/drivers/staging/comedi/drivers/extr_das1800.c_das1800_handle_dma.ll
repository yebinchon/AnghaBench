; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_handle_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das1800.c_das1800_handle_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.das1800_private* }
%struct.das1800_private = type { i32, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i64, %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32 }
%struct.comedi_subdevice = type { i32 }

@DMA_DUAL = common dso_local global i32 0, align 4
@DMATC = common dso_local global i32 0, align 4
@CLEAR_INTR_MASK = common dso_local global i32 0, align 4
@DAS1800_STATUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @das1800_handle_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @das1800_handle_dma(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.das1800_private*, align 8
  %8 = alloca %struct.comedi_isadma*, align 8
  %9 = alloca %struct.comedi_isadma_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.das1800_private*, %struct.das1800_private** %12, align 8
  store %struct.das1800_private* %13, %struct.das1800_private** %7, align 8
  %14 = load %struct.das1800_private*, %struct.das1800_private** %7, align 8
  %15 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %14, i32 0, i32 1
  %16 = load %struct.comedi_isadma*, %struct.comedi_isadma** %15, align 8
  store %struct.comedi_isadma* %16, %struct.comedi_isadma** %8, align 8
  %17 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %18 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %17, i32 0, i32 1
  %19 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %18, align 8
  %20 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %21 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %19, i64 %22
  store %struct.comedi_isadma_desc* %23, %struct.comedi_isadma_desc** %9, align 8
  %24 = load %struct.das1800_private*, %struct.das1800_private** %7, align 8
  %25 = getelementptr inbounds %struct.das1800_private, %struct.das1800_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @DMA_DUAL, align 4
  %28 = and i32 %26, %27
  store i32 %28, i32* %10, align 4
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %31 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %32 = call i32 @das1800_flush_dma_channel(%struct.comedi_device* %29, %struct.comedi_subdevice* %30, %struct.comedi_isadma_desc* %31)
  %33 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %9, align 8
  %34 = call i32 @comedi_isadma_program(%struct.comedi_isadma_desc* %33)
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @DMATC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %60

39:                                               ; preds = %3
  %40 = load i32, i32* @CLEAR_INTR_MASK, align 4
  %41 = load i32, i32* @DMATC, align 4
  %42 = xor i32 %41, -1
  %43 = and i32 %40, %42
  %44 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %45 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DAS1800_STATUS, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i32 @outb(i32 %43, i64 %48)
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %54 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 1, %55
  %57 = load %struct.comedi_isadma*, %struct.comedi_isadma** %8, align 8
  %58 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %52, %39
  br label %60

60:                                               ; preds = %59, %3
  ret void
}

declare dso_local i32 @das1800_flush_dma_channel(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_isadma_desc*) #1

declare dso_local i32 @comedi_isadma_program(%struct.comedi_isadma_desc*) #1

declare dso_local i32 @outb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
