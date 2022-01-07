; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_check_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_omap-serial.c_check_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_omap_port = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@UART_MSR = common dso_local global i32 0, align 4
@UART_MSR_ANY_DELTA = common dso_local global i32 0, align 4
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_MSR_TERI = common dso_local global i32 0, align 4
@UART_MSR_DDSR = common dso_local global i32 0, align 4
@UART_MSR_DDCD = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i32 0, align 4
@UART_MSR_DCTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_omap_port*)* @check_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_modem_status(%struct.uart_omap_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_omap_port*, align 8
  %4 = alloca i32, align 4
  store %struct.uart_omap_port* %0, %struct.uart_omap_port** %3, align 8
  %5 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %6 = load i32, i32* @UART_MSR, align 4
  %7 = call i32 @serial_in(%struct.uart_omap_port* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %4, align 4
  %13 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %97

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @UART_MSR_ANY_DELTA, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %95

26:                                               ; preds = %21
  %27 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @UART_IER_MSI, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %95

33:                                               ; preds = %26
  %34 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = icmp ne %struct.TYPE_8__* %37, null
  br i1 %38, label %39, label %95

39:                                               ; preds = %33
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @UART_MSR_TERI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %44, %39
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @UART_MSR_DDSR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %58 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 8
  br label %63

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* @UART_MSR_DDCD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %70 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %69, i32 0, i32 2
  %71 = load i32, i32* %4, align 4
  %72 = load i32, i32* @UART_MSR_DCD, align 4
  %73 = and i32 %71, %72
  %74 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %70, i32 %73)
  br label %75

75:                                               ; preds = %68, %63
  %76 = load i32, i32* %4, align 4
  %77 = load i32, i32* @UART_MSR_DCTS, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %75
  %81 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %81, i32 0, i32 2
  %83 = load i32, i32* %4, align 4
  %84 = load i32, i32* @UART_MSR_CTS, align 4
  %85 = and i32 %83, %84
  %86 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %82, i32 %85)
  br label %87

87:                                               ; preds = %80, %75
  %88 = load %struct.uart_omap_port*, %struct.uart_omap_port** %3, align 8
  %89 = getelementptr inbounds %struct.uart_omap_port, %struct.uart_omap_port* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = call i32 @wake_up_interruptible(i32* %93)
  br label %95

95:                                               ; preds = %87, %33, %26, %21
  %96 = load i32, i32* %4, align 4
  store i32 %96, i32* %2, align 4
  br label %97

97:                                               ; preds = %95, %19
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local i32 @serial_in(%struct.uart_omap_port*, i32) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
