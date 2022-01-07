; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_ixon_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_ixon_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Setting IXON FLOW\0A\00", align 1
@UART_17158_IER_CTSDSR = common dso_local global i32 0, align 4
@UART_17158_EFR_CTSDSR = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_EFR_IXON = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_8DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_ixon_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_ixon_flow_control(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %6 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %5, i32 0, i32 4
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = call i32 @readb(i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %11 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %10, i32 0, i32 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 7
  %14 = call i32 @readb(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PARAM, align 4
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @jsm_dbg(i32 %15, i32* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* @UART_17158_IER_CTSDSR, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %3, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %3, align 4
  %25 = load i32, i32* @UART_17158_EFR_CTSDSR, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %30 = load i32, i32* @UART_17158_EFR_IXON, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %35 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %34, i32 0, i32 4
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  %38 = call i32 @writeb(i32 0, i32* %37)
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %41 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %40, i32 0, i32 4
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 7
  %44 = call i32 @writeb(i32 %39, i32* %43)
  %45 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %46 = load i32, i32* @UART_17158_FCTR_RTS_8DELAY, align 4
  %47 = or i32 %45, %46
  %48 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %49 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %48, i32 0, i32 4
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 6
  %52 = call i32 @writeb(i32 %47, i32* %51)
  %53 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %54 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %53, i32 0, i32 0
  store i32 4, i32* %54, align 8
  %55 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %56 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %55, i32 0, i32 4
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 5
  %59 = call i32 @writeb(i32 32, i32* %58)
  %60 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %61 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %60, i32 0, i32 1
  store i32 32, i32* %61, align 4
  %62 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %63 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %66 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %65, i32 0, i32 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = call i32 @writeb(i32 %64, i32* %68)
  %70 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %71 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %70, i32 0, i32 4
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = call i32 @writeb(i32 0, i32* %73)
  %75 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %76 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %79 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %78, i32 0, i32 4
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = call i32 @writeb(i32 %77, i32* %81)
  %83 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %84 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %83, i32 0, i32 4
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 1
  %87 = call i32 @writeb(i32 0, i32* %86)
  %88 = load i32, i32* %3, align 4
  %89 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %90 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %89, i32 0, i32 4
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = call i32 @writeb(i32 %88, i32* %92)
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
