; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_set_ixon_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_set_ixon_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@UART_EXAR654_ENHANCED_REGISTER_SET = common dso_local global i32 0, align 4
@UART_EXAR654_EFR_ECB = common dso_local global i32 0, align 4
@UART_EXAR654_EFR_IXON = common dso_local global i32 0, align 4
@UART_EXAR654_EFR_CTSDSR = common dso_local global i32 0, align 4
@UART_EXAR654_IER_CTSDSR = common dso_local global i32 0, align 4
@UART_EXAR654_IER_XOFF = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_16654_FCR_RXTRIGGER_16 = common dso_local global i32 0, align 4
@UART_16654_FCR_TXTRIGGER_16 = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @cls_set_ixon_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_set_ixon_flow_control(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %6 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %7 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 2
  %10 = call i32 @readb(i32* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %12 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %11, i32 0, i32 2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = call i32 @readb(i32* %14)
  store i32 %15, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %16 = load i32, i32* @UART_EXAR654_ENHANCED_REGISTER_SET, align 4
  %17 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %18 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  %21 = call i32 @writeb(i32 %16, i32* %20)
  %22 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %23 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %22, i32 0, i32 2
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @readb(i32* %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @UART_EXAR654_EFR_ECB, align 4
  %28 = load i32, i32* @UART_EXAR654_EFR_IXON, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* %5, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* @UART_EXAR654_EFR_CTSDSR, align 4
  %33 = xor i32 %32, -1
  %34 = load i32, i32* %5, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %38 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = call i32 @writeb(i32 %36, i32* %40)
  %42 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %43 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %46 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %45, i32 0, i32 2
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 6
  %49 = call i32 @writeb(i32 %44, i32* %48)
  %50 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %51 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %50, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 5
  %54 = call i32 @writeb(i32 0, i32* %53)
  %55 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %56 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %59 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 4
  %62 = call i32 @writeb(i32 %57, i32* %61)
  %63 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %64 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 3
  %67 = call i32 @writeb(i32 0, i32* %66)
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %70 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %69, i32 0, i32 2
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 2
  %73 = call i32 @writeb(i32 %68, i32* %72)
  %74 = load i32, i32* @UART_EXAR654_IER_CTSDSR, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %4, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %4, align 4
  %78 = load i32, i32* @UART_EXAR654_IER_XOFF, align 4
  %79 = load i32, i32* %4, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %4, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %83 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = call i32 @writeb(i32 %81, i32* %85)
  %87 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %88 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %89 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %88, i32 0, i32 2
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = call i32 @writeb(i32 %87, i32* %91)
  %93 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %94 = load i32, i32* @UART_16654_FCR_RXTRIGGER_16, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @UART_16654_FCR_TXTRIGGER_16, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %101 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = call i32 @writeb(i32 %99, i32* %103)
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
