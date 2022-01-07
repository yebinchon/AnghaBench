; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_push_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_push_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { {}* }
%struct.usbhs_pkt = type { i32, i64, i64, %struct.TYPE_2__*, i32, %struct.usbhs_pipe* }
%struct.usbhs_pipe = type { i32 }

@usbhs_fifo_pio_push_handler = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbhs_pkt*, i32*)* @usbhsf_dma_push_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbhsf_dma_push_done(%struct.usbhs_pkt* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbhs_pkt*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.usbhs_pipe*, align 8
  %7 = alloca i32, align 4
  store %struct.usbhs_pkt* %0, %struct.usbhs_pkt** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %9 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %8, i32 0, i32 5
  %10 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %9, align 8
  store %struct.usbhs_pipe* %10, %struct.usbhs_pipe** %6, align 8
  %11 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %12 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %15 = call i32 @usbhs_pipe_get_maxpacket(%struct.usbhs_pipe* %14)
  %16 = srem i32 %13, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %18 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %22 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, %20
  store i64 %24, i64* %22, align 8
  %25 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %26 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %29 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %27, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32*, i32** %5, align 8
  store i32 0, i32* %33, align 4
  br label %48

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %34
  %38 = load i32*, i32** %5, align 8
  store i32 1, i32* %38, align 4
  br label %47

39:                                               ; preds = %34
  %40 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %41 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  br label %47

47:                                               ; preds = %39, %37
  br label %48

48:                                               ; preds = %47, %32
  %49 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %50 = load i32*, i32** %5, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @usbhs_pipe_running(%struct.usbhs_pipe* %49, i32 %54)
  %56 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %57 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %58 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usbhsf_dma_stop(%struct.usbhs_pipe* %56, i32 %59)
  %61 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %62 = call i32 @usbhsf_dma_unmap(%struct.usbhs_pkt* %61)
  %63 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %64 = load %struct.usbhs_pipe*, %struct.usbhs_pipe** %6, align 8
  %65 = getelementptr inbounds %struct.usbhs_pipe, %struct.usbhs_pipe* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe* %63, i32 %66)
  %68 = load i32*, i32** %5, align 8
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %48
  %72 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %73 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %72, i32 0, i32 3
  store %struct.TYPE_2__* @usbhs_fifo_pio_push_handler, %struct.TYPE_2__** %73, align 8
  %74 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %75 = getelementptr inbounds %struct.usbhs_pkt, %struct.usbhs_pkt* %74, i32 0, i32 3
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = bitcast {}** %77 to i32 (%struct.usbhs_pkt*, i32*)**
  %79 = load i32 (%struct.usbhs_pkt*, i32*)*, i32 (%struct.usbhs_pkt*, i32*)** %78, align 8
  %80 = load %struct.usbhs_pkt*, %struct.usbhs_pkt** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i32 %79(%struct.usbhs_pkt* %80, i32* %81)
  store i32 %82, i32* %3, align 4
  br label %84

83:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %71
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @usbhs_pipe_get_maxpacket(%struct.usbhs_pipe*) #1

declare dso_local i32 @usbhs_pipe_running(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_dma_stop(%struct.usbhs_pipe*, i32) #1

declare dso_local i32 @usbhsf_dma_unmap(%struct.usbhs_pkt*) #1

declare dso_local i32 @usbhsf_fifo_unselect(%struct.usbhs_pipe*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
