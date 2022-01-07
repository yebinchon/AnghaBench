; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_init_dt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_init_dt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.usbhs_fifo = type { i32*, i32* }

@.str = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.usbhs_fifo*, i32)* @usbhsf_dma_init_dt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_dma_init_dt(%struct.device* %0, %struct.usbhs_fifo* %1, i32 %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.usbhs_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [16 x i8], align 16
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.usbhs_fifo* %1, %struct.usbhs_fifo** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %9 = load i32, i32* %6, align 4
  %10 = call i32 @snprintf(i8* %8, i32 16, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %6, align 4
  %12 = and i32 %11, 1
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %30

14:                                               ; preds = %3
  %15 = load %struct.device*, %struct.device** %4, align 8
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %17 = call i8* @dma_request_slave_channel_reason(%struct.device* %15, i8* %16)
  %18 = bitcast i8* %17 to i32*
  %19 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %20 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %19, i32 0, i32 1
  store i32* %18, i32** %20, align 8
  %21 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %22 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i64 @IS_ERR(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %14
  %27 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %28 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %27, i32 0, i32 1
  store i32* null, i32** %28, align 8
  br label %29

29:                                               ; preds = %26, %14
  br label %46

30:                                               ; preds = %3
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = getelementptr inbounds [16 x i8], [16 x i8]* %7, i64 0, i64 0
  %33 = call i8* @dma_request_slave_channel_reason(%struct.device* %31, i8* %32)
  %34 = bitcast i8* %33 to i32*
  %35 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %36 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %38 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = call i64 @IS_ERR(i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %30
  %43 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %44 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %43, i32 0, i32 0
  store i32* null, i32** %44, align 8
  br label %45

45:                                               ; preds = %42, %30
  br label %46

46:                                               ; preds = %45, %29
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i8* @dma_request_slave_channel_reason(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
