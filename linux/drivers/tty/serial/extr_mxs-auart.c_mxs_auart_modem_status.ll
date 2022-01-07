; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mxs-auart.c_mxs_auart_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxs_auart_port = type { i32, %struct.TYPE_9__, i64 }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@MCTRL_ANY_DELTA = common dso_local global i32 0, align 4
@TIOCM_RI = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CD = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxs_auart_port*, i32)* @mxs_auart_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxs_auart_modem_status(%struct.mxs_auart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.mxs_auart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mxs_auart_port* %0, %struct.mxs_auart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %8 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = xor i32 %6, %9
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %13 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @MCTRL_ANY_DELTA, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %85

18:                                               ; preds = %2
  %19 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %20 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %19, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %85

23:                                               ; preds = %18
  %24 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %25 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = icmp ne %struct.TYPE_8__* %27, null
  br i1 %28, label %29, label %85

29:                                               ; preds = %23
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @TIOCM_RI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %29
  %35 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %36 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  br label %41

41:                                               ; preds = %34, %29
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @TIOCM_DSR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %48 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 8
  br label %53

53:                                               ; preds = %46, %41
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @TIOCM_CD, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %53
  %59 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %60 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %59, i32 0, i32 1
  %61 = load i32, i32* %4, align 4
  %62 = load i32, i32* @TIOCM_CD, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %60, i32 %63)
  br label %65

65:                                               ; preds = %58, %53
  %66 = load i32, i32* %5, align 4
  %67 = load i32, i32* @TIOCM_CTS, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %65
  %71 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %72 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %71, i32 0, i32 1
  %73 = load i32, i32* %4, align 4
  %74 = load i32, i32* @TIOCM_CTS, align 4
  %75 = and i32 %73, %74
  %76 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %72, i32 %75)
  br label %77

77:                                               ; preds = %70, %65
  %78 = load %struct.mxs_auart_port*, %struct.mxs_auart_port** %3, align 8
  %79 = getelementptr inbounds %struct.mxs_auart_port, %struct.mxs_auart_port* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = call i32 @wake_up_interruptible(i32* %83)
  br label %85

85:                                               ; preds = %77, %23, %18, %2
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
