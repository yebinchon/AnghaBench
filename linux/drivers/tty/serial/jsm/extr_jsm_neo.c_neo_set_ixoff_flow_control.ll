; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_ixoff_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_ixoff_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Setting IXOFF FLOW\0A\00", align 1
@UART_17158_IER_RTSDTR = common dso_local global i32 0, align 4
@UART_17158_EFR_RTSDTR = common dso_local global i32 0, align 4
@UART_17158_IER_XOFF = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_EFR_IXOFF = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_8DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_ixoff_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_ixoff_flow_control(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %5, i32 0, i32 3
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @readb(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  %14 = call i32 @readb(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PARAM, align 4
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 4
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @jsm_dbg(i32 %15, i32* %19, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @UART_17158_IER_RTSDTR, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @UART_17158_EFR_RTSDTR, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @UART_17158_IER_XOFF, align 4
  %30 = load i32, i32* %3, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %33 = load i32, i32* @UART_17158_EFR_IXOFF, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  %37 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %38 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %37, i32 0, i32 3
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 7
  %41 = call i32 @writeb(i32 0, i32* %40)
  %42 = load i32, i32* %4, align 4
  %43 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %44 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 7
  %47 = call i32 @writeb(i32 %42, i32* %46)
  %48 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %49 = load i32, i32* @UART_17158_FCTR_RTS_8DELAY, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %52 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %51, i32 0, i32 3
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 6
  %55 = call i32 @writeb(i32 %50, i32* %54)
  %56 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %57 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  %60 = call i32 @writeb(i32 8, i32* %59)
  %61 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %62 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %61, i32 0, i32 0
  store i32 8, i32* %62, align 8
  %63 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %64 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %67 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 4
  %70 = call i32 @writeb(i32 %65, i32* %69)
  %71 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %72 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %71, i32 0, i32 3
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = call i32 @writeb(i32 0, i32* %74)
  %76 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %77 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %80 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %79, i32 0, i32 3
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 2
  %83 = call i32 @writeb(i32 %78, i32* %82)
  %84 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %85 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = call i32 @writeb(i32 0, i32* %87)
  %89 = load i32, i32* %3, align 4
  %90 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %91 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %90, i32 0, i32 3
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = call i32 @writeb(i32 %89, i32* %93)
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
