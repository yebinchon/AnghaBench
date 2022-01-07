; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_is_compatible.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_cppi41.c_cppi41_is_compatible.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_channel = type { %struct.cppi41_dma_channel* }
%struct.cppi41_dma_channel = type { i64, %struct.TYPE_6__*, %struct.cppi41_dma_controller* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.cppi41_dma_controller = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.musb* }
%struct.musb = type { i32 }

@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dma_channel*, i32, i8*, i32)* @cppi41_is_compatible to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cppi41_is_compatible(%struct.dma_channel* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dma_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.cppi41_dma_channel*, align 8
  %11 = alloca %struct.cppi41_dma_controller*, align 8
  %12 = alloca %struct.musb*, align 8
  store %struct.dma_channel* %0, %struct.dma_channel** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load %struct.dma_channel*, %struct.dma_channel** %6, align 8
  %14 = getelementptr inbounds %struct.dma_channel, %struct.dma_channel* %13, i32 0, i32 0
  %15 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %14, align 8
  store %struct.cppi41_dma_channel* %15, %struct.cppi41_dma_channel** %10, align 8
  %16 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %10, align 8
  %17 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %16, i32 0, i32 2
  %18 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %17, align 8
  store %struct.cppi41_dma_controller* %18, %struct.cppi41_dma_controller** %11, align 8
  %19 = load %struct.cppi41_dma_controller*, %struct.cppi41_dma_controller** %11, align 8
  %20 = getelementptr inbounds %struct.cppi41_dma_controller, %struct.cppi41_dma_controller* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load %struct.musb*, %struct.musb** %21, align 8
  store %struct.musb* %22, %struct.musb** %12, align 8
  %23 = load %struct.musb*, %struct.musb** %12, align 8
  %24 = call i64 @is_host_active(%struct.musb* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %4
  %27 = call i32 @WARN_ON(i32 1)
  store i32 1, i32* %5, align 4
  br label %45

28:                                               ; preds = %4
  %29 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %10, align 8
  %30 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %29, i32 0, i32 1
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.cppi41_dma_channel*, %struct.cppi41_dma_channel** %10, align 8
  %40 = getelementptr inbounds %struct.cppi41_dma_channel, %struct.cppi41_dma_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  store i32 1, i32* %5, align 4
  br label %45

44:                                               ; preds = %38
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %44, %43, %37, %26
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i64 @is_host_active(%struct.musb*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
