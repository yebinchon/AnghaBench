; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_pool_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_cppi_dma.c_cppi_pool_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cppi_channel = type { %struct.cppi_descriptor*, %struct.cppi*, %struct.TYPE_2__ }
%struct.cppi_descriptor = type { i32 }
%struct.cppi = type { i32 }
%struct.TYPE_2__ = type { i32 }

@MUSB_DMA_STATUS_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cppi_channel*)* @cppi_pool_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cppi_pool_free(%struct.cppi_channel* %0) #0 {
  %2 = alloca %struct.cppi_channel*, align 8
  %3 = alloca %struct.cppi*, align 8
  %4 = alloca %struct.cppi_descriptor*, align 8
  store %struct.cppi_channel* %0, %struct.cppi_channel** %2, align 8
  %5 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %6 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %5, i32 0, i32 1
  %7 = load %struct.cppi*, %struct.cppi** %6, align 8
  store %struct.cppi* %7, %struct.cppi** %3, align 8
  %8 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %9 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %8, i32 0, i32 2
  %10 = call i32 @cppi_channel_abort(%struct.TYPE_2__* %9)
  %11 = load i32, i32* @MUSB_DMA_STATUS_UNKNOWN, align 4
  %12 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %13 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 8
  %15 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %16 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %15, i32 0, i32 1
  store %struct.cppi* null, %struct.cppi** %16, align 8
  %17 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %18 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %17, i32 0, i32 0
  %19 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %18, align 8
  store %struct.cppi_descriptor* %19, %struct.cppi_descriptor** %4, align 8
  br label %20

20:                                               ; preds = %35, %1
  %21 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %22 = icmp ne %struct.cppi_descriptor* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.cppi*, %struct.cppi** %3, align 8
  %25 = getelementptr inbounds %struct.cppi, %struct.cppi* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %28 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %29 = getelementptr inbounds %struct.cppi_descriptor, %struct.cppi_descriptor* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @dma_pool_free(i32 %26, %struct.cppi_descriptor* %27, i32 %30)
  br label %32

32:                                               ; preds = %23, %20
  %33 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %34 = call %struct.cppi_descriptor* @cppi_bd_alloc(%struct.cppi_channel* %33)
  store %struct.cppi_descriptor* %34, %struct.cppi_descriptor** %4, align 8
  br label %35

35:                                               ; preds = %32
  %36 = load %struct.cppi_descriptor*, %struct.cppi_descriptor** %4, align 8
  %37 = icmp ne %struct.cppi_descriptor* %36, null
  br i1 %37, label %20, label %38

38:                                               ; preds = %35
  %39 = load %struct.cppi_channel*, %struct.cppi_channel** %2, align 8
  %40 = getelementptr inbounds %struct.cppi_channel, %struct.cppi_channel* %39, i32 0, i32 0
  store %struct.cppi_descriptor* null, %struct.cppi_descriptor** %40, align 8
  ret void
}

declare dso_local i32 @cppi_channel_abort(%struct.TYPE_2__*) #1

declare dso_local i32 @dma_pool_free(i32, %struct.cppi_descriptor*, i32) #1

declare dso_local %struct.cppi_descriptor* @cppi_bd_alloc(%struct.cppi_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
