; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_fifo_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/renesas_usbhs/extr_fifo.c_usbhs_fifo_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbhs_priv = type { i32 }
%struct.usbhs_fifo = type { i8*, i32, i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"CFIFO\00", align 1
@CFIFO = common dso_local global i32 0, align 4
@CFIFOSEL = common dso_local global i32 0, align 4
@CFIFOCTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbhs_fifo_probe(%struct.usbhs_priv* %0) #0 {
  %2 = alloca %struct.usbhs_priv*, align 8
  %3 = alloca %struct.usbhs_fifo*, align 8
  store %struct.usbhs_priv* %0, %struct.usbhs_priv** %2, align 8
  %4 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %5 = call %struct.usbhs_fifo* @usbhsf_get_cfifo(%struct.usbhs_priv* %4)
  store %struct.usbhs_fifo* %5, %struct.usbhs_fifo** %3, align 8
  %6 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %7 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %6, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  %8 = load i32, i32* @CFIFO, align 4
  %9 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %10 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %9, i32 0, i32 3
  store i32 %8, i32* %10, align 8
  %11 = load i32, i32* @CFIFOSEL, align 4
  %12 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %13 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %12, i32 0, i32 2
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @CFIFOCTR, align 4
  %15 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %16 = getelementptr inbounds %struct.usbhs_fifo, %struct.usbhs_fifo* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 8
  %17 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %18 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %19 = call i32 @USBHS_DFIFO_INIT(%struct.usbhs_priv* %17, %struct.usbhs_fifo* %18, i32 0)
  %20 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %21 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %22 = call i32 @USBHS_DFIFO_INIT(%struct.usbhs_priv* %20, %struct.usbhs_fifo* %21, i32 1)
  %23 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %24 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %25 = call i32 @USBHS_DFIFO_INIT_NO_PORT(%struct.usbhs_priv* %23, %struct.usbhs_fifo* %24, i32 2)
  %26 = load %struct.usbhs_priv*, %struct.usbhs_priv** %2, align 8
  %27 = load %struct.usbhs_fifo*, %struct.usbhs_fifo** %3, align 8
  %28 = call i32 @USBHS_DFIFO_INIT_NO_PORT(%struct.usbhs_priv* %26, %struct.usbhs_fifo* %27, i32 3)
  ret i32 0
}

declare dso_local %struct.usbhs_fifo* @usbhsf_get_cfifo(%struct.usbhs_priv*) #1

declare dso_local i32 @USBHS_DFIFO_INIT(%struct.usbhs_priv*, %struct.usbhs_fifo*, i32) #1

declare dso_local i32 @USBHS_DFIFO_INIT_NO_PORT(%struct.usbhs_priv*, %struct.usbhs_fifo*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
