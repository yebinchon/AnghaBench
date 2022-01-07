; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_pool_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi = type { i32 }
%struct.cppi_channel = type { i32*, i64, %struct.cppi*, %struct.TYPE_2__, i32*, i32*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.cppi_descriptor = type { i32 }

@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@NUM_TXCHAN_BD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi*, %struct.cppi_channel*)* @cppi_pool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi_pool_init(%struct.cppi* %0, %struct.cppi_channel* %1) #0 {
  %3 = alloca %struct.cppi*, align 8
  %4 = alloca %struct.cppi_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cppi_descriptor*, align 8
  %7 = alloca i32, align 4
  store %struct.cppi* %0, %struct.cppi** %3, align 8
  store %struct.cppi_channel* %1, %struct.cppi_channel** %4, align 8
  %8 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %9 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %8, i32 0, i32 6
  store i32* null, i32** %9, align 8
  %10 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %11 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %10, i32 0, i32 5
  store i32* null, i32** %11, align 8
  %12 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %13 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %12, i32 0, i32 4
  store i32* null, i32** %13, align 8
  %14 = load i32, i32* @MUSB_DMA_STATUS_UNKNOWN, align 4
  %15 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %16 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 8
  %18 = load %struct.cppi*, %struct.cppi** %3, align 8
  %19 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %20 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %19, i32 0, i32 2
  store %struct.cppi* %18, %struct.cppi** %20, align 8
  %21 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %22 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %24 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %23, i32 0, i32 0
  store i32* null, i32** %24, align 8
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %42, %2
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @NUM_TXCHAN_BD, align 4
  %28 = add nsw i32 %27, 1
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %25
  %31 = load %struct.cppi*, %struct.cppi** %3, align 8
  %32 = getelementptr inbounds %struct.cppi, %struct.cppi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.cppi_descriptor* @dma_pool_alloc(i32 %33, i32 %34, i32* %7)
  store %struct.cppi_descriptor* %35, %struct.cppi_descriptor** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %6, align 8
  %38 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.cppi_channel*, %struct.cppi_channel** %4, align 8
  %40 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %6, align 8
  %41 = call i32 @cppi_bd_free(%struct.cppi_channel* %39, %struct.cppi_descriptor* %40)
  br label %42

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %25

45:                                               ; preds = %25
  ret void
}

declare dso_local %struct.cppi_descriptor* @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @cppi_bd_free(%struct.cppi_channel*, %struct.cppi_descriptor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
