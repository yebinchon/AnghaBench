; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl010.c_pl010_modem_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_amba-pl010.c_pl010_modem_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_amba_port = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__*, %struct.TYPE_6__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@UART010_ICR = common dso_local global i64 0, align 8
@UART01x_FR = common dso_local global i64 0, align 8
@UART01x_FR_MODEM_ANY = common dso_local global i32 0, align 4
@UART01x_FR_DCD = common dso_local global i32 0, align 4
@UART01x_FR_DSR = common dso_local global i32 0, align 4
@UART01x_FR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_amba_port*)* @pl010_modem_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl010_modem_status(%struct.uart_amba_port* %0) #0 {
  %2 = alloca %struct.uart_amba_port*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.uart_amba_port* %0, %struct.uart_amba_port** %2, align 8
  %5 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @UART010_ICR, align 8
  %10 = add nsw i64 %8, %9
  %11 = call i32 @writel(i32 0, i64 %10)
  %12 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %13 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @UART01x_FR, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readb(i64 %17)
  %19 = load i32, i32* @UART01x_FR_MODEM_ANY, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %23 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = xor i32 %21, %24
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %28 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %1
  br label %76

32:                                               ; preds = %1
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @UART01x_FR_DCD, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %32
  %38 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %39 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %38, i32 0, i32 1
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @UART01x_FR_DCD, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @uart_handle_dcd_change(%struct.TYPE_9__* %39, i32 %42)
  br label %44

44:                                               ; preds = %37, %32
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* @UART01x_FR_DSR, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %56

49:                                               ; preds = %44
  %50 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %51 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %49, %44
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @UART01x_FR_CTS, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %56
  %62 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %63 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %62, i32 0, i32 1
  %64 = load i32, i32* %3, align 4
  %65 = load i32, i32* @UART01x_FR_CTS, align 4
  %66 = and i32 %64, %65
  %67 = call i32 @uart_handle_cts_change(%struct.TYPE_9__* %63, i32 %66)
  br label %68

68:                                               ; preds = %61, %56
  %69 = load %struct.uart_amba_port*, %struct.uart_amba_port** %2, align 8
  %70 = getelementptr inbounds %struct.uart_amba_port, %struct.uart_amba_port* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 0
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = call i32 @wake_up_interruptible(i32* %74)
  br label %76

76:                                               ; preds = %68, %31
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
