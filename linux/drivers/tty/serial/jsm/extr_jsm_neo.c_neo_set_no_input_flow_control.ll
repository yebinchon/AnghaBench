; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_no_input_flow_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/jsm/extr_jsm_neo.c_neo_set_no_input_flow_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i32, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Unsetting Input FLOW\0A\00", align 1
@UART_17158_IER_RTSDTR = common dso_local global i32 0, align 4
@UART_17158_EFR_RTSDTR = common dso_local global i32 0, align 4
@UART_17158_IER_XOFF = common dso_local global i32 0, align 4
@IXON = common dso_local global i32 0, align 4
@UART_17158_EFR_IXOFF = common dso_local global i32 0, align 4
@UART_17158_EFR_ECB = common dso_local global i32 0, align 4
@UART_17158_FCTR_TRGD = common dso_local global i32 0, align 4
@UART_17158_FCTR_RTS_8DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jsm_channel*)* @neo_set_no_input_flow_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @neo_set_no_input_flow_control(%struct.jsm_channel* %0) #0 {
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
  %20 = call i32 @jsm_dbg(i32 %15, i32* %19, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
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
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %3, align 4
  %33 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %34 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @IXON, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %1
  %40 = load i32, i32* @UART_17158_EFR_IXOFF, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %4, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %4, align 4
  br label %51

44:                                               ; preds = %1
  %45 = load i32, i32* @UART_17158_EFR_ECB, align 4
  %46 = load i32, i32* @UART_17158_EFR_IXOFF, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %4, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %53 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %52, i32 0, i32 3
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  %56 = call i32 @writeb(i32 0, i32* %55)
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %59 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 4
  %62 = call i32 @writeb(i32 %57, i32* %61)
  %63 = load i32, i32* @UART_17158_FCTR_TRGD, align 4
  %64 = load i32, i32* @UART_17158_FCTR_RTS_8DELAY, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %67 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %66, i32 0, i32 3
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = call i32 @writeb(i32 %65, i32* %69)
  %71 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %72 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %71, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %74 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %73, i32 0, i32 3
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @writeb(i32 16, i32* %76)
  %78 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %79 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %78, i32 0, i32 1
  store i32 16, i32* %79, align 4
  %80 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %81 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %80, i32 0, i32 3
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = call i32 @writeb(i32 16, i32* %83)
  %85 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %86 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %85, i32 0, i32 2
  store i32 16, i32* %86, align 8
  %87 = load i32, i32* %3, align 4
  %88 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %89 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @writeb(i32 %87, i32* %91)
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
