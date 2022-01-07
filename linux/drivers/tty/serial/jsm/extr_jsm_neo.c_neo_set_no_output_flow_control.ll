; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_no_output_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_no_output_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Unsetting Output FLOW\0A\00", align 1
@UART_17158_IER_CTSDSR = common dso_local global i32 0, align 4
@UART_17158_EFR_CTSDSR = common dso_local global i32 0, align 4
@IXOFF = common dso_local global i32 0, align 4
@UART_17158_EFR_IXON = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_8DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_no_output_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_no_output_flow_control(%struct.jsm_channel* %0) #0 {
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
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 4
  %14 = call i32 @readb(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* @PARAM, align 4
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 5
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @jsm_dbg(i32 %15, i32* %19, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
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
  %29 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %30 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @IXOFF, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %1
  %36 = load i32, i32* @UART_17158_EFR_IXON, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %4, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %47

40:                                               ; preds = %1
  %41 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %42 = load i32, i32* @UART_17158_EFR_IXON, align 4
  %43 = or i32 %41, %42
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %4, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %40, %35
  %48 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %49 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 4
  %52 = call i32 @writeb(i32 0, i32* %51)
  %53 = load i32, i32* %4, align 4
  %54 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %55 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %54, i32 0, i32 3
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 4
  %58 = call i32 @writeb(i32 %53, i32* %57)
  %59 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %60 = load i32, i32* @UART_17158_FCTR_RTS_8DELAY, align 4
  %61 = or i32 %59, %60
  %62 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %63 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %62, i32 0, i32 3
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 3
  %66 = call i32 @writeb(i32 %61, i32* %65)
  %67 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %68 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %67, i32 0, i32 4
  store i64 0, i64* %68, align 8
  %69 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %70 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %69, i32 0, i32 3
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 2
  %73 = call i32 @writeb(i32 16, i32* %72)
  %74 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %75 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %74, i32 0, i32 1
  store i32 16, i32* %75, align 4
  %76 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %77 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = call i32 @writeb(i32 16, i32* %79)
  %81 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %82 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %81, i32 0, i32 2
  store i32 16, i32* %82, align 8
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %85 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %84, i32 0, i32 3
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 0
  %88 = call i32 @writeb(i32 %83, i32* %87)
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
