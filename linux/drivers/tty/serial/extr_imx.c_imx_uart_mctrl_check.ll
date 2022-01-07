; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_mctrl_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_imx.c_imx_uart_mctrl_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@TIOCM_RI = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx_port*)* @imx_uart_mctrl_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_uart_mctrl_check(%struct.imx_port* %0) #0 {
  %2 = alloca %struct.imx_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.imx_port* %0, %struct.imx_port** %2, align 8
  %5 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %6 = call i32 @imx_uart_get_hwmctrl(%struct.imx_port* %5)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %9 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = xor i32 %7, %10
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %79

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %18 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @TIOCM_RI, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = load i32, i32* @TIOCM_RI, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %30 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %28, %23, %15
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @TIOCM_DSR, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %35
  %41 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %42 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  br label %47

47:                                               ; preds = %40, %35
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @TIOCM_CAR, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %54 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %53, i32 0, i32 1
  %55 = load i32, i32* %3, align 4
  %56 = load i32, i32* @TIOCM_CAR, align 4
  %57 = and i32 %55, %56
  %58 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %54, i32 %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @TIOCM_CTS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %59
  %65 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %66 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %65, i32 0, i32 1
  %67 = load i32, i32* %3, align 4
  %68 = load i32, i32* @TIOCM_CTS, align 4
  %69 = and i32 %67, %68
  %70 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %66, i32 %69)
  br label %71

71:                                               ; preds = %64, %59
  %72 = load %struct.imx_port*, %struct.imx_port** %2, align 8
  %73 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = call i32 @wake_up_interruptible(i32* %77)
  br label %79

79:                                               ; preds = %71, %14
  ret void
}

declare dso_local i32 @imx_uart_get_hwmctrl(%struct.imx_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
