; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc5xxx_uart_process_int.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/serial/extr_mpc52xx_uart.c_mpc5xxx_uart_process_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.uart_port*)*, i64 (%struct.uart_port*)*, i32 (%struct.uart_port*)*, i64 (%struct.uart_port*)*, i32 (%struct.uart_port*)* }
%struct.uart_port = type { i32 }

@ISR_PASS_LIMIT = common dso_local global i64 0, align 8
@psc_ops = common dso_local global %struct.TYPE_2__* null, align 8
@MPC52xx_PSC_D_DCD = common dso_local global i32 0, align 4
@MPC52xx_PSC_DCD = common dso_local global i32 0, align 4
@MPC52xx_PSC_D_CTS = common dso_local global i32 0, align 4
@MPC52xx_PSC_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @mpc5xxx_uart_process_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc5xxx_uart_process_int(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load i64, i64* @ISR_PASS_LIMIT, align 8
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %80, %1
  store i32 0, i32* %4, align 4
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 4
  %10 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %9, align 8
  %11 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %12 = call i32 %10(%struct.uart_port* %11)
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 3
  %15 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %14, align 8
  %16 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %17 = call i64 %15(%struct.uart_port* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %7
  %20 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %21 = call i32 @mpc52xx_uart_int_rx_chars(%struct.uart_port* %20)
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %19, %7
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 2
  %27 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %26, align 8
  %28 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %29 = call i32 %27(%struct.uart_port* %28)
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i64 (%struct.uart_port*)*, i64 (%struct.uart_port*)** %31, align 8
  %33 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %34 = call i64 %32(%struct.uart_port* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %24
  %37 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %38 = call i32 @mpc52xx_uart_int_tx_chars(%struct.uart_port* %37)
  %39 = load i32, i32* %4, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %36, %24
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @psc_ops, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32 (%struct.uart_port*)*, i32 (%struct.uart_port*)** %43, align 8
  %45 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %46 = call i32 %44(%struct.uart_port* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @MPC52xx_PSC_D_DCD, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %41
  %52 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MPC52xx_PSC_DCD, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  %58 = zext i1 %57 to i32
  %59 = call i32 @uart_handle_dcd_change(%struct.uart_port* %52, i32 %58)
  br label %60

60:                                               ; preds = %51, %41
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @MPC52xx_PSC_D_CTS, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @MPC52xx_PSC_CTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  %71 = xor i1 %70, true
  %72 = zext i1 %71 to i32
  %73 = call i32 @uart_handle_cts_change(%struct.uart_port* %66, i32 %72)
  br label %74

74:                                               ; preds = %65, %60
  %75 = load i64, i64* %3, align 8
  %76 = add i64 %75, -1
  store i64 %76, i64* %3, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %74
  store i32 0, i32* %4, align 4
  br label %79

79:                                               ; preds = %78, %74
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %7, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %84
}

declare dso_local i32 @mpc52xx_uart_int_rx_chars(%struct.uart_port*) #1

declare dso_local i32 @mpc52xx_uart_int_tx_chars(%struct.uart_port*) #1

declare dso_local i32 @uart_handle_dcd_change(%struct.uart_port*, i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
