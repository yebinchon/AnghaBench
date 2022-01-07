; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhsf_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i64, i64, i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"enable DMAEngine (%s%s%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"[TX]\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"[RX]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbhs_priv*, %struct.usbhs_fifo*, i32)* @usbhsf_dma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usbhsf_dma_init(%struct.usbhs_priv* %0, %struct.usbhs_fifo* %1, i32 %2) #0 {
  %4 = alloca %struct.usbhs_priv*, align 8
  %5 = alloca %struct.usbhs_fifo*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %4, align 8
  store %struct.usbhs_fifo* %1, %struct.usbhs_fifo** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.usbhs_priv*, %struct.usbhs_priv** %4, align 8
  %9 = call %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv* %8)
  store %struct.device* %9, %struct.device** %7, align 8
  %10 = load %struct.device*, %struct.device** %7, align 8
  %11 = call i64 @dev_of_node(%struct.device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load %struct.device*, %struct.device** %7, align 8
  %15 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @usbhsf_dma_init_dt(%struct.device* %14, %struct.usbhs_fifo* %15, i32 %16)
  br label %21

18:                                               ; preds = %3
  %19 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %20 = call i32 @usbhsf_dma_init_pdev(%struct.usbhs_fifo* %19)
  br label %21

21:                                               ; preds = %18, %13
  %22 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %23 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %21
  %27 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %28 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %26, %21
  %32 = load %struct.device*, %struct.device** %7, align 8
  %33 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %34 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %37 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %42 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %5, align 8
  %43 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  %46 = zext i1 %45 to i64
  %47 = select i1 %45, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %48 = call i32 @dev_dbg(%struct.device* %32, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %35, i8* %41, i8* %47)
  br label %49

49:                                               ; preds = %31, %26
  ret void
}

declare dso_local %struct.device* @usbhs_priv_to_dev(%struct.usbhs_priv*) #1

declare dso_local i64 @dev_of_node(%struct.device*) #1

declare dso_local i32 @usbhsf_dma_init_dt(%struct.device*, %struct.usbhs_fifo*, i32) #1

declare dso_local i32 @usbhsf_dma_init_pdev(%struct.usbhs_fifo*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
