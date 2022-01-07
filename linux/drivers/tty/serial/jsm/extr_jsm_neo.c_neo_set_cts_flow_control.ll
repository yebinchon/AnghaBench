; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_cts_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_cts_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Setting CTSFLOW\0A\00", align 1
@UART_17158_IER_CTSDSR = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_EFR_CTSDSR = common dso_local global i32 0, align 4
@UART_17158_EFR_IXON = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_4DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_cts_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_cts_flow_control(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %5, i32 0, i32 1
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @readb(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = call i32 @readb(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PARAM, align 4
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @jsm_dbg(i32 %15, i32* %19, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @UART_17158_IER_CTSDSR, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %25 = load i32, i32* @UART_17158_EFR_CTSDSR, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %4, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @UART_17158_EFR_IXON, align 4
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %34 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  %37 = call i32 @writeb(i32 0, i32* %36)
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %40 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = call i32 @writeb(i32 %38, i32* %42)
  %44 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %45 = load i32, i32* @UART_17158_FCTR_RTS_4DELAY, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %48 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %47, i32 0, i32 1
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 2
  %51 = call i32 @writeb(i32 %46, i32* %50)
  %52 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %53 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  %56 = call i32 @writeb(i32 8, i32* %55)
  %57 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %58 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %57, i32 0, i32 0
  store i32 8, i32* %58, align 8
  %59 = load i32, i32* %3, align 4
  %60 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %61 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = call i32 @writeb(i32 %59, i32* %63)
  ret void
}

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @jsm_dbg(i32, i32*, i8*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
