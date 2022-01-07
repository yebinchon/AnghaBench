; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_uart_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_cls.c_cls_uart_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@UART_EXAR654_ENHANCED_REGISTER_SET = common dso_local global i8 0, align 1
@UART_EXAR654_EFR_ECB = common dso_local global i8 0, align 1
@UART_FCR_ENABLE_FIFO = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_RCVR = common dso_local global i8 0, align 1
@UART_FCR_CLEAR_XMIT = common dso_local global i8 0, align 1
@CH_FIFO_ENABLED = common dso_local global i32 0, align 4
@CH_TX_FIFO_EMPTY = common dso_local global i32 0, align 4
@CH_TX_FIFO_LWM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @cls_uart_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cls_uart_init(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i8, align 1
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 4
  %9 = call zeroext i8 @readb(i32* %8)
  store i8 %9, i8* %3, align 1
  store i8 0, i8* %4, align 1
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 5
  %14 = call i32 @writeb(i8 zeroext 0, i32* %13)
  %15 = load i8, i8* @UART_EXAR654_ENHANCED_REGISTER_SET, align 1
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 4
  %20 = call i32 @writeb(i8 zeroext %15, i32* %19)
  %21 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %22 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = call zeroext i8 @readb(i32* %24)
  store i8 %25, i8* %4, align 1
  %26 = load i8, i8* @UART_EXAR654_EFR_ECB, align 1
  %27 = zext i8 %26 to i32
  %28 = load i8, i8* %4, align 1
  %29 = zext i8 %28 to i32
  %30 = or i32 %29, %27
  %31 = trunc i32 %30 to i8
  store i8 %31, i8* %4, align 1
  %32 = load i8, i8* %4, align 1
  %33 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %34 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = call i32 @writeb(i8 zeroext %32, i32* %36)
  %38 = load i8, i8* %3, align 1
  %39 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %40 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 4
  %43 = call i32 @writeb(i8 zeroext %38, i32* %42)
  %44 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %45 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %44, i32 0, i32 1
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  %48 = call zeroext i8 @readb(i32* %47)
  %49 = load i8, i8* @UART_FCR_ENABLE_FIFO, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @UART_FCR_CLEAR_RCVR, align 1
  %52 = zext i8 %51 to i32
  %53 = or i32 %50, %52
  %54 = load i8, i8* @UART_FCR_CLEAR_XMIT, align 1
  %55 = zext i8 %54 to i32
  %56 = or i32 %53, %55
  %57 = trunc i32 %56 to i8
  %58 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %59 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %58, i32 0, i32 1
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 2
  %62 = call i32 @writeb(i8 zeroext %57, i32* %61)
  %63 = call i32 @udelay(i32 10)
  %64 = load i32, i32* @CH_FIFO_ENABLED, align 4
  %65 = load i32, i32* @CH_TX_FIFO_EMPTY, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @CH_TX_FIFO_LWM, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %70 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %74 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = call zeroext i8 @readb(i32* %76)
  %78 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %79 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %78, i32 0, i32 1
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = call zeroext i8 @readb(i32* %81)
  ret void
}

declare dso_local zeroext i8 @readb(i32*) #1

declare dso_local i32 @writeb(i8 zeroext, i32*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
