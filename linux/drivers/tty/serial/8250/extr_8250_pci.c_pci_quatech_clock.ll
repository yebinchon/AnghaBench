; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/8250/extr_8250_pci.c_pci_quatech_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_8250_port = type { i32 }

@QOPR_CLOCK_X8 = common dso_local global i32 0, align 4
@QOPR_CLOCK_X2 = common dso_local global i32 0, align 4
@QOPR_CLOCK_X4 = common dso_local global i32 0, align 4
@QOPR_CLOCK_X1 = common dso_local global i32 0, align 4
@QOPR_CLOCK_RATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_8250_port*)* @pci_quatech_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci_quatech_clock(%struct.uart_8250_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_8250_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.uart_8250_port* %0, %struct.uart_8250_port** %3, align 8
  %8 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %9 = call i64 @pci_quatech_test(%struct.uart_8250_port* %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 1843200, i32* %2, align 4
  br label %80

12:                                               ; preds = %1
  %13 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %14 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @QOPR_CLOCK_X8, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %15, i32 %19)
  %21 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %22 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @QOPR_CLOCK_X8, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i64 1843200, i64* %7, align 8
  br label %74

28:                                               ; preds = %12
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load i32, i32* @QOPR_CLOCK_X8, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %29, i32 %32)
  %34 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %35 = call i32 @pci_quatech_rqopr(%struct.uart_8250_port* %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @QOPR_CLOCK_X8, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %28
  store i64 1843200, i64* %7, align 8
  br label %74

41:                                               ; preds = %28
  %42 = load i32, i32* @QOPR_CLOCK_X8, align 4
  %43 = load i32, i32* %5, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @QOPR_CLOCK_X2, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  store i64 3685400, i64* %7, align 8
  %49 = load i32, i32* @QOPR_CLOCK_X2, align 4
  store i32 %49, i32* %6, align 4
  br label %66

50:                                               ; preds = %41
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @QOPR_CLOCK_X4, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  store i64 7372800, i64* %7, align 8
  %55 = load i32, i32* @QOPR_CLOCK_X4, align 4
  store i32 %55, i32* %6, align 4
  br label %65

56:                                               ; preds = %50
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @QOPR_CLOCK_X8, align 4
  %59 = icmp eq i32 %57, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %56
  store i64 14745600, i64* %7, align 8
  %61 = load i32, i32* @QOPR_CLOCK_X8, align 4
  store i32 %61, i32* %6, align 4
  br label %64

62:                                               ; preds = %56
  store i64 1843200, i64* %7, align 8
  %63 = load i32, i32* @QOPR_CLOCK_X1, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %62, %60
  br label %65

65:                                               ; preds = %64, %54
  br label %66

66:                                               ; preds = %65, %48
  %67 = load i32, i32* @QOPR_CLOCK_RATE_MASK, align 4
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %4, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %66, %40, %27
  %75 = load %struct.uart_8250_port*, %struct.uart_8250_port** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @pci_quatech_wqopr(%struct.uart_8250_port* %75, i32 %76)
  %78 = load i64, i64* %7, align 8
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %2, align 4
  br label %80

80:                                               ; preds = %74, %11
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local i64 @pci_quatech_test(%struct.uart_8250_port*) #1

declare dso_local i32 @pci_quatech_rqopr(%struct.uart_8250_port*) #1

declare dso_local i32 @pci_quatech_wqopr(%struct.uart_8250_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
